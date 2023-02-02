title <- tags$a(href='https://generalhealthdashboardbenharley.shinyapps.io/GeneralHealthDashboard/',
               tags$img(src="Scotland.jpg", height = '40', width = '40'),
               style = "color: white; font-size: 20px",
               'Scotland General Health Dashboard')

dashboardPage(
  skin = "blue",
  dashboardHeader(title = title,
                  titleWidth = 450),
  dashboardSidebar(
  #  selectInput(inputId = "AreaName", label = "Select a Local Area:", choices = unique(Coviddata$areaName)),
    #selectInput(inputId = "column", label = "Select a column to plot", choices = c("newCasesBySpecimenDate", "newCasesBySpecimenDateRollingRate")),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Main Page",
      startExpanded = TRUE,
      menuItem(text ="Main Page", tabName = "MainPage")
      ))),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Coronavirus",
      startExpanded = FALSE,
     # menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Cases", tabName="CoronavirusCaseGraph"),
      menuSubItem(text = "Deaths", tabName ="CoronavirusDeathGraph"),
      menuSubItem(text = "Testing", tabName ="testing"),
      menuSubItem(text = "Healthcare", tabName = "Healthcare"),
      menuSubItem(text = "Vaccination", tabName = "Vaccines")
      )
    
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Unintentional Injuries",
      startExpanded = FALSE,
      #menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Traffic Collisions Admissions", tabName="RTAs"),
      menuSubItem(text = "Fall Admissions", tabName ="Falls"),
      menuSubItem(text = "Deaths", tabName ="InjuriesDeaths"))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Alcohol Admissions",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Learning Disabilities",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
     )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Life Expectancy",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Drug Statistics",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Strokes",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Cancer",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Excess Mortality",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Ambulance Service",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Mental Health",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Alzheimer Disease",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Mortality",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Abortions and Births",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Care Homes",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Heart Disease",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Radiology",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Endoscopy",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Obesity",
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Coming Soon", tabName=""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""),
      menuSubItem(text = "Coming Soon", tabName =""))
    ))
    
  ),
  
  ## COVID CASE PAGE          
  dashboardBody(tabItems(
    tabItem(tabName = "CoronavirusCaseGraph",
            titlePanel(strong("Cases by Specimen Date by Healthboard")),
            h4("Number of Cases / Rolling Rate of cases, by specimen date based on Healthboard choice up to July 2022"),
    selectInput(inputId = "AreaName", label = "Select a Local Area:", choices = unique(Coviddata$areaName)), 
    selectInput(inputId = "column", label = "Select a column to plot", choices = c("newCasesBySpecimenDate", "newCasesBySpecimenDateRollingRate")),
    plotOutput(outputId = "plot1"),
    br(),
    downloadButton("test", "Download File"),
    titlePanel(strong("Total Cases by Specimen Date by Age Group")),
    h4("Total Number of Case by age group up to July 2022."),
    plotOutput(outputId = "CovidAgeGroupCases"),
    br(),
    downloadButton("covidagegroupdownload", "Download File"),
    titlePanel(strong("Total Cases by Specimen Date by SIMD Deprivation Quintle up to July 2022.")),
    h4("Total Number of Case by deprivation quintle.(1 being most statistically disadvantaged economically, 5 being being least statistically disadvantaged economically)"),
    plotOutput(outputId = "CovidCasesDeprivation"),
    br(),
    downloadButton("coviddeprivationdownload", "Download File"),
    titlePanel(strong("Total Cases by Specimen Date by Gender up to July 2022.")),
    h4("Total Number of Case by gender (Male/Female)."),
    plotOutput(outputId = "CovidcaseGendertotal"),
    br(),
    downloadButton("covidcasegenderdownload", "Download File"),
    titlePanel(strong("Reinfections by Gender up to July 2022.")),
    h4("Total Number of reinfections by gender (Male/Female)."),
    plotOutput(outputId = "CovidReinfectionsGendertotal")),
    
  ## COVID Death Page  
    tabItem(tabName = "CoronavirusDeathGraph",
            titlePanel(strong("Confirmed COVID Deaths by Healthboard")),
            h4("Number of Deaths / Rolling Rate of Deaths, within 28 days of a positive test based on Healthboard choice up to July 2022."),
            selectInput(inputId = "AreaNamea", label = "Select a Local Area:", choices = unique(Coviddata$areaNamea)),
            selectInput(inputId = "coviddeath", label = "Select a column to plot", choices = c("newDeaths28DaysByDeathDate","newDeaths28DaysByDeathDateRollingRate")),
            plotOutput(outputId = "deathcovid"),
            titlePanel(strong("Total Crude Rate of Confirmed COVID Deaths by Age Group")),
            h4("Crude Rate of Confirmed COVID Deaths, within 28 days of a positive test based on age group up to July 2022."),
            plotOutput(outputId = "CovidAgeGroupDeaths"),
            titlePanel(strong("Total Confirmed COVID Deaths by Age Group")),
            h4("Confirmed COVID Deaths, within 28 days of a positive test based on age group up to July 2022"),
            plotOutput(outputId = "CovidCumAgeGroupDeaths"),
            titlePanel(strong("Total Confirmed COVID Deaths by Quintle of Deprivation")),
            h4("Confirmed COVID Deaths, within 28 days of a positive test based on Quintle of Deprivation (1 being most statistically disadvantaged economically, 5 being being least statistically disadvantaged economically) up to July 2022."),
            plotOutput(outputId = "CovidCumDeprivationDeaths")),
  ## COVID Testing Page        
    
    tabItem(tabName = "testing",
            titlePanel(strong("New Tests by Publish Date")),
            h4("Number of new tests conducted by publish date across Scotland since 1st January until 31st July 2022"),
            plotOutput(outputId = "CovidPositiveTestnewTestsByPublishDate2022"),
            titlePanel(strong("Positive Tests by Healthboard")),
            h4("Number of positive tests by Healthboard since the start of the pandemic"),
            plotOutput(outputId = "CovidPositiveTests"),
            titlePanel(strong("Positive Tests Crude Rate by Healthboard")),
            h4("Crude Rate of positive tests by Healthboard since the start of the pandemic"),
            plotOutput(outputId = "CovidPositiveTests100k"),
            titlePanel(strong("Pillar One Tests Conducted")),
            h4("Pillar One Tests Conducted by Publish Date between 1st January until 31st of July 2022"),
            plotOutput(outputId = "CovidPositiveTestnewPillarOneTestsByPublishDate2022"),
            titlePanel(strong("Pillar Two Tests Conducted")),
            h4("Pillar Two Tests Conducted by Publish Date between 1st January until 31st of July 2022"),
            plotOutput(outputId = "CovidPositiveTestnewPillarTwoTestsByPublishDate2022")
            ),
  
  # COVID Healthcare Page
  
  tabItem(tabName = "Healthcare",
          titlePanel(strong("Patients in Hospital")),
          h4("Daily count of confirmed COVID-19 patients in hospital up to July 31st 2022."),
          plotOutput(outputId = "CovidPatientsinhospital"),
          titlePanel(strong("New Admissions")),
          h4("Daily numbers of COVID-19 patients admitted to hospital up to July 31st 2022."),
          plotOutput(outputId = "CovidAdmissions"),
          titlePanel(strong("Total Number of Patients Admitted to hospital")),
          h4("Total Number of confirmed COVID-19 Patients admitted to hospital up to July 31st 2022."),
          plotOutput(outputId = "CumAdmissions"),
          titlePanel(strong("Patients in mechanical ventilation beds")),
          h4("Total Number of COVID-19 Patients in Mechanical Ventliation Beds up to July 31st 2022."),
          plotOutput(outputId = "MVbedoccupied")),
  
  # COVID Vaccinations Page
  
  tabItem(tabName = "Vaccines",
          titlePanel(strong("People who have received their 1st dose of vaccination, by report date")),
          h4("The number of people of all ages who have received one dose of COVID-19 vaccine up to July 2022"),
          plotOutput(outputId = "onedosecovid"),
          titlePanel(strong("People who have received their 2nd dose of vaccination, by report date")),
          h4("The number of people of all ages who have received two doses of COVID-19 vaccine up to July 2022"),
          plotOutput(outputId = "twodosecovid"),
          titlePanel(strong("People who have received their booster dose of vaccination, by report date")),
          h4("The number of people of all ages who have received a booster COVID-19 vaccine up to July 2022."),
          plotOutput(outputId = "threedosecovid"),
          titlePanel(strong("People who have received their 1st dose of vaccination, by report date per healthboard")),
          h4("The number of people of all ages who have received a COVID-19 vaccine by healthboard up to July 2022."),
          selectInput(inputId = "areaname", label = "Select a Local Area:", choices = unique(VaccineData$areaname)), 
          selectInput(inputId = "covid1stdose", label = "Select a column to plot", choices = c("newPeopleVaccinatedFirstDoseByVaccinationDate", "cumPeopleVaccinatedFirstDoseByVaccinationDate")),
          plotOutput(outputId = "vaccine1stdose"),
          titlePanel(strong("People who have received their 2nd dose of vaccination, by report date per healthboard")),
          h4("The number of people of all ages who have received a 2nd dose of COVID-19 vaccine by healthboard up to July 2022."),
          selectInput(inputId = "areaName2nddose", label = "Select a Local Area:", choices = unique(Vaccine2nddose$areaName2nddose)), 
          selectInput(inputId = "covid2nddose", label = "Select a column to plot", choices = c("newPeopleVaccinatedSecondDoseByVaccinationDate", "cumPeopleVaccinatedSecondDoseByVaccinationDate")),
          plotOutput(outputId = "vaccine2nddose")),
  
  #UnitentionalInjuriesPages
  
  # RTAs
  tabItem(tabName = "RTAs",
          titlePanel(strong("Number of admissions caused by Road Traffic Accidents by Age Group in Scotland")),
          h4("The number of people broken by age group who have been admitted to hospital because of a road traffic accident in Scotland between 2012 and 2021"),
          plotOutput(outputId = "agegroupRTA"),
          titlePanel(strong("Number of admissions caused by Road Traffic Accidents by Gender in Scotland")),
          h4("The number of people broken by gender who have been admitted to hospital because of a road traffic accident in Scotland between 2012 and 2021"),
          plotOutput(outputId = "genderRTAadmissions"),
          titlePanel(strong("Number of admissions caused by Road Traffic Accidents broken down by Age based on Males Only")),
          h4("The number of men broken down by age admitted to hospital because of a road traffic accident in Scotland between 2012 and 2021"),
          plotOutput(outputId ="maleRTAadmissions"),
          titlePanel(strong("Number of admissions caused by Road Traffic Accidents broken down by Age based on Females Only")),
          h4("The number of females broken down by age admitted to hospital because of a road traffic accident in Scotland between 2012 and 2021"),
          plotOutput(outputId ="femaleRTAadmissions")),
 
  # Falls
  
  tabItem(tabName = "Falls",
          titlePanel(strong("Number of admissions caused by falls by location of injury in Scotland")),
          h4("The number of people broken down by injury location who have been admitted to hospital becasue of falls in Scotland between 2012 and 2021"),
          plotOutput(outputId = "fallslocationgraph"),
          titlePanel(strong("Number of admissions caused by falls by age group in Scotland")),
          h4("The number of people broken down by age group who have been admitted to hospital becasue of falls in Scotland between 2012 and 2021"),
          plotOutput(outputId = "fallsage"),
          titlePanel(strong("Number of admissions caused by falls by gender in Scotland")),
          h4("The number of people broken down by gender who have been admitted to hospital becasue of falls in Scotland between 2012 and 2021"),
          plotOutput(outputId = "fallsgender")),
  # Deaths Uninjuries
  
  tabItem(tabName = "InjuriesDeaths",
          titlePanel(strong("Number of deaths by cause in Scotland")),
          h4("The number of deaths across Scotland between 2012 and 2021 by unintentional injury."),
          plotOutput(outputId = "Injurylocationdeaths"),
          titlePanel(strong("Number of deaths by age group in Scotland")),
          h4("The number of deaths across Scotland between 2012 and 2021 by unintentional injury by age group."),
          plotOutput(outputId = "Injuryagedeaths")),
  
  # Main Page
    
    tabItem(tabName = "MainPage",
            titlePanel("Welcome to the General Health Statistics Dashboard for Scotland"),
            mainPanel(
              h6(("This Dashboard was last updated on the 1st of February 2023 - Unintentional Injuries Section Complete and some download buttons added to plots in Coronavirus Case Section")),
              h3(strong("Objective:")),
              p("This Dashboard has been created to allow users the opportunity to easily access data visuals that help emphasise and explain the effcts each health condition has on the NHS is in an easier and understandable way"),
              #br(),
              h3(strong("Why have I done this?")),
              #br(),
              p("The last few years have been tough for the National Health Service across the Uninted Kingdom. The COVID-19 Pandemic has affected healthcare services massively and data visualisations will be available in regards of delays caused by the pandemic. However, the dashboard's main objective is to educate people about health statistics over the last 20/30 years, and how they compare to more recent times."),
             # br(),
              h3(strong("What is in this dashboard?")),
             p("Visualisations such as graphs, interactive maps, and datasets to highlight the importance of further intervention and early detection in certain Healthboards/Local Authorities. Explore the idea of deprivation, gender, age, nationality, location (healthboard, data zone, int zone or local authority) and how it affects the trend and statistical properties of health conditions affecting the NHS across the UK."),
             h3(strong("What Health Conditions are explored?")),
             h6("This list is not limited to but includes:"),
             p("Coronavirus - Cases, Mortality, Vaccination Rates, Testing, Hospital Admissions, and more"),
             p("Alcohol Statistics - Admissions, Addiction Services, Waiting Times, Mortality and more."),
             p("Unintentional Injuries - Mortality, Admissions, RTA's, Falls, Assaults, Poisioning and more."),
             p("Learning Disabilities - Admissions, Girls on the Spectrum, Males on the Spectrum, Detection and Early Prevention"),
             p("Life Expectancy - Early Mortality, Types of Mortality per year, Excess Deaths and more"),
             p("Drug Statistics - Admissions, Addiction Services, Mortality, Waiting Times, Scotland Statistics and more."),
             p("Stroke Statistics - Admissions, Mortality, Deprivation, Gender, Age and more."),
             p("Cancer Statistics - Mortality Rates by Cancer Typ, Detection, Incidence Rates by Cancer Type, and more"),
             p("Ambulance Service - A&E Waiting Times, Response Times, Age Group requiring Ambulance, Gender, and more."),
             p("Mental Health - Waiting Times, Drugs Prescribed, and more."),
             p("Alzheimer Disease - Mortality, Gender and Age"),
             p("Abortions and Births - Birth Rates, Abortion Rates, and more"),
             p("Care Home - Looking at the census (mainly Scotland)"),
             p("Radiology and Endoscopy - Rates of Detection by Type, Waiting Times and more"),
            ),
            )
 
     )
)
)








##fluidPage(

## selectInput(inputId = "AreaName", label = "Select a Local Area:", choices = unique(Coviddata$areaName)),
##  selectInput(inputId = "column", label = "Select a column to plot", choices = c("newCasesBySpecimenDate", "newCasesBySpecimenDateRollingRate")),
## DTOutput(outputId = "datatable1"),
## plotOutput(outputId = "plot1")

##)