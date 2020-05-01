# How U.S. Travel Restrictions on China Affected the Spread of COVID-19 in the United States

## Abstract

Early in the COVID-19 pandemic, President Trump imposed travel restrictions on the People’s Republic of China (PRC) to slow its spread to the United States. We use the synthetic control method (SCM) under eight different specifications to see whether the travel restrictions slowed the domestic spread of COVID-19. In most specifications, the travel restriction had no effect on the number of COVID-19 cases in the United States. In two specifications, the travel restriction reduced the number of COVID-19 cases for up to 15 days after the ban was enacted. Regardless of the intervention date or how the spread of COVID-19 is measured, we find that the travel restrictions did not delay the prevalence of COVID-19 or did so by 15 days at most.

## Contents
- Repository Structure
- Data Description

## Repository Structure

### Directories
- `../code/`
- `../R/`
- `../build/`
- `../merge/`
- `../output/`
- `../figures/`
- `../draft/`

### Codes
Main code to set directories (Run this first!):
- `../code/00_main_codes.do`

Code to clean data:
- `../code/01_prep_data.do`

Primary Estimation Codes:
- `../code/02_Spec_01.do`
- `../code/03_Spec_02.do`
- `../code/04_Spec_03.do`
- `../code/05_Spec_04.do`
- `../code/06_Spec_05.do`
- `../code/07_Spec_06.do`
- `../code/08_Spec_07.do`
- `../code/09_Spec_08.do`

Plotting Codes:
- `../code/10_make_main_plots.do`
- `../code/11_make_robust_plots.do`
- `../code/12_combine_plots.do`

## Data Description

## Data sources

### COVID-19
Data on confirmed COVID-19 cases are from the COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University.  These data are compiled from a variety of sources, such as the World Health Organization (WHO) and other public health and media sources.  The data provide the cumulative number of confirmed COVID-19 cases, deaths, and recoveries by day starting on Jan. 22, 2020.  The raw data are available on GitHub [here](https://github.com/CSSEGISandData/COVID-19).


### United Nations
The United Nations (UN) is our primary data source for population data, including demographic structure, urbanicity, population density, and international migration.  We use three main data collections from the UN.  First, we collect data on countries' age structure from the *World Population Prospects* 2019 data files.  These data include annual estimates of a country's population, broken down by age and sex.  We subset these data to the 2020 estimates.  Using the 2020 estimates, we identify the share of a country's population above the age of 65.  These data also contain measures of population density, measured as persons per square kilometer, and the population's median age.  These data are available [here](https://population.un.org/wpp/Download/Standard/Population/).

Next, we collect data on a country's urban population from the UN *World Urbanization Prospects 2018*.  The UN urbanization data provide quinquennial estimates of the share of a country's population living in urban agglomerations spanning 1950-2050.  We specifically use the 2020 estimates for each country.  The data are available [here](https://population.un.org/wup/).

Finally, we colelct data on a country's foreign-born population from the UN *International Migrant Stock 2019* data.  These data provide estimates of the number of international migrants for 2019 broken down by age, sex, and country of origin.  For our analyses, we take the estimates of the total foreign-born stock and the foreign-born stock originating from China. The data are available [here](https://www.un.org/en/development/desa/population/migration/data/estimates2/estimates19.asp).

### World Bank
We collect data on per capita income from the World Bank.  These data provide the per capita Gross Domestic Product (GDP) by country, expressed in purchasing power parity (PPP) adjusted constant 2011 dollars.  We use the most recent year of data available for 2018.  These data were extracted using the *R* [WDI package](https://github.com/vincentarelbundock/WDI) and are also available [here](https://data.worldbank.org/indicator/NY.GDP.PCAP.PP.KD).

### OpenFlights
Information on the number of flight connections to China are from OpenFlights and are available [here](https://openflights.org/data.html).  Unfortunately, the most recent data on connecting flights is from June 2014, since their provider of connecting flight information stopped updating their data at that time.

## Variable Definitions

Below is a list of the variables used in the paper analyses.

- `confirmed` - cumulative confirmed COVID-19 cases (Johns Hopkins)
- `un_migrant` - total foreign born stock as of 2019 (UN)
- `un_migrant_china` - total foreign-born stock from China as of 2019 (UN)
- `pop_total` - total population as of 2020 (UN)
- `pop_density` - Population density per square kilometer as of 2020 (UN)
- `n_oldpop` - Population age 65 and above as of 2020 (UN)
- `pct_urban` - Percentage of the population living in urban areas as of 2020 (UN)
- `un_medage` - Median age of the population as of 2020 (UN)
- `gdppc2011` - Per capita GDP in constant 2011 PPP-adjusted dollars (World Bank)
- `abslat` - absolute value of latitude ([Source](https://gist.github.com/tadast/8827699))
- `n_connects` - Number of airport connections with China as of 2014 (OpenFlights)
- `cases_asinh` - Cumulative confirmed COVID-19 cases, inverse hyperbolic sine transformation (authors calculations)
- `cases_mill` - Cumulative confirmed COVID-19 cases per million population (authors calculations)
