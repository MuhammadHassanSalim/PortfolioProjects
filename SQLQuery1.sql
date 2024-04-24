
-- Looking at total cases vs total deaths
-- Shows the likelyhood of dying if you contract covid in Pakistan
--Select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS total_cases_to_total_deaths
--From CovidDeaths
--Where location like '%Pakistan%'
--Order by 1,2

-- Looking at total cases vs Populations
-- It shows what percentage of Population got covid
--Select location, date, total_cases,population , (total_cases/population)*100 AS total_cases_to_population
--From CovidDeaths
--Where location like '%Pakistan%'
--Order by 1,2

-- looking at countries with highest Infection rate compared to population
--Select location, population, Max(total_cases) as Highest_Infection_Count , Max((total_cases/population))*100 as Infection_Percentage
--From CovidDeaths
--Group by location , population
--order by Infection_Percentage desc

--showing Countries with highest death count per population:
--Select location,population, Max(cast(total_deaths as int)) as Total_Death_Count
--From CovidDeaths
--Where continent is not null
--Group by location, population
--order by Total_Death_Count desc

--showing Continents with highest death count:
Select location, Max(cast(total_deaths as int)) as Total_Death_Count
From CovidDeaths
Where continent is null
Group by location
order by Total_Death_Count desc

