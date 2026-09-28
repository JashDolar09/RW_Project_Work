import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import plotly.express as px

confirmed = pd.read_csv("Dataset/confirmed.csv")
deaths = pd.read_csv("Dataset/deaths.csv")
recovered = pd.read_csv("Dataset/recovered.csv")

confirmed = confirmed.fillna(0)
deaths = deaths.fillna(0)
recovered = recovered.fillna(0)

date_columns = confirmed.columns[4:]

confirmed_total = confirmed.groupby("Country/Region")[date_columns].sum()
deaths_total = deaths.groupby("Country/Region")[date_columns].sum()
recovered_total = recovered.groupby("Country/Region")[date_columns].sum()

print("COVID-19 DATA PREPARATION")
print("=========================")

print("\nCountries/Regions:", len(confirmed_total))
print("Number of Dates:", len(date_columns))

print("\nConfirmed Cases:")
print(confirmed_total.tail())

print("\nDeaths:")
print(deaths_total.tail())

print("\nRecovered:")
print(recovered_total.tail())

country = "India"

india_confirmed = confirmed_total.loc[country]
india_deaths = deaths_total.loc[country]
india_recovered = recovered_total.loc[country]

plt.figure(figsize=(12, 6))

plt.plot(date_columns, india_confirmed, label="Confirmed Cases")
plt.plot(date_columns, india_deaths, label="Deaths")
plt.plot(date_columns, india_recovered, label="Recovered")

plt.title("COVID-19 Trend in India")
plt.xlabel("Date")
plt.ylabel("Number of Cases")
plt.xticks(date_columns[::90], rotation=45)
plt.legend()
plt.tight_layout()

plt.savefig("output/india_covid_trend.png")
plt.close()

latest_date = date_columns[-1]

recovery_totals_by_date = recovered_total.sum(axis=0)
recovery_dates = recovery_totals_by_date[
    recovery_totals_by_date > 0
].index

recovery_date = recovery_dates[-1]

print("\nLatest Confirmed/Deaths Date:", latest_date)
print("Recovery Data Available Until:", recovery_date)

country_data = confirmed_total[[latest_date]].rename(
    columns={latest_date: "Confirmed"}
)

country_data["Deaths"] = deaths_total[latest_date]
country_data["Recovered"] = recovered_total[recovery_date]

country_data = country_data.fillna(0).reset_index()

country_data = country_data.rename(
    columns={"Country/Region": "Country"}
)

top_countries = country_data.sort_values(
    "Confirmed", ascending=False
).head(10)

plt.figure(figsize=(12, 6))

sns.barplot(
    data=top_countries,
    x="Confirmed",
    y="Country"
)

plt.title("Top 10 Countries by Confirmed COVID-19 Cases")
plt.xlabel("Confirmed Cases")
plt.ylabel("Country")
plt.tight_layout()

plt.savefig("output/top_10_countries.png")
plt.close()

top_deaths = country_data.sort_values(
    "Deaths", ascending=False
).head(10)

plt.figure(figsize=(12, 6))

sns.barplot(
    data=top_deaths,
    x="Deaths",
    y="Country"
)

plt.title("Top 10 Countries by COVID-19 Deaths")
plt.xlabel("Deaths")
plt.ylabel("Country")
plt.tight_layout()

plt.savefig("output/top_10_deaths.png")
plt.close()

top_recovered = country_data[
    country_data["Recovered"] > 0
].sort_values(
    "Recovered", ascending=False
).head(10)

plt.figure(figsize=(12, 6))

sns.barplot(
    data=top_recovered,
    x="Recovered",
    y="Country"
)

plt.title(
    f"Top 10 Countries by COVID-19 Recoveries ({recovery_date})"
)
plt.xlabel("Recovered Cases")
plt.ylabel("Country")
plt.tight_layout()

plt.savefig("output/top_10_recovered.png")
plt.close()

comparison_countries = [
    "India",
    "US",
    "Brazil",
    "United Kingdom",
    "Italy"
]

comparison_data = confirmed_total.loc[
    confirmed_total.index.isin(comparison_countries)
].T

comparison_data.index = pd.to_datetime(
    comparison_data.index,
    format="%m/%d/%y"
)

comparison_data = comparison_data.reset_index()

comparison_data = comparison_data.rename(
    columns={"index": "Date"}
)

comparison_data = comparison_data.melt(
    id_vars="Date",
    var_name="Country",
    value_name="Confirmed Cases"
)

fig = px.line(
    comparison_data,
    x="Date",
    y="Confirmed Cases",
    color="Country",
    title="COVID-19 Confirmed Cases Comparison"
)

fig.write_html("output/covid_country_comparison.html")

india_dates = pd.to_datetime(
    date_columns,
    format="%m/%d/%y"
)

india_intervention_data = pd.DataFrame({
    "Date": [
        "2020-03-25",
        "2020-06-01"
    ],
    "Intervention": [
        "Nationwide Lockdown",
        "Unlock 1"
    ]
})

india_intervention_data["Date"] = pd.to_datetime(
    india_intervention_data["Date"]
)

plt.figure(figsize=(12, 6))

plt.plot(
    india_dates,
    india_confirmed,
    label="Confirmed Cases"
)

plt.axvline(
    pd.Timestamp("2020-03-25"),
    linestyle="--",
    label="Nationwide Lockdown"
)

plt.axvline(
    pd.Timestamp("2020-06-01"),
    linestyle="--",
    label="Unlock 1"
)

plt.title(
    "India COVID-19 Cases and Government Interventions"
)

plt.xlabel("Date")
plt.ylabel("Confirmed Cases")

plt.legend()
plt.xticks(
    india_dates[::90],
    rotation=45
)

plt.tight_layout()

plt.savefig(
    "output/india_government_interventions.png"
)

plt.close()

print("\nAnalysis completed successfully.")
print("Plotly chart saved to output/covid_country_comparison.html")
print("Government intervention chart saved to output/india_government_interventions.png")