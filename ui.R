title <- tags$a(href='https://generalhealthdashboardbenharley.shinyapps.io/GeneralHealthDashboard/',
               tags$img(src="Scotland.jpg", height = '40', width = '40'),
               style = "color: white; font-size: 20px",
               'Scotland General Health Dashboard')

dashboardPage(
  skin = "blue",
  dashboardHeader(title = title,
                  titleWidth = 450,
                  tags$li(class="dropdown", tags$a(href="https://public.tableau.com/app/profile/ben.harley/viz/GeneralHealthDashboardofScotland-Remake3/MainPage", icon("house-medical"), "Tableau Page", target="_blank")),
                  tags$li(class="dropdown", tags$a(href ="https://forms.office.com/Pages/ResponsePage.aspx?id=DQSIkWdsW0yxEjajBLZtrQAAAAAAAAAAAAMAAD_Bs3ZUOEZOMEVMMUxMSEFJUjlaOVgwU0wzNUJWRy4u", icon("bug"), "Feedback and Bugs", target="_blank")),
                  tags$li(class="dropdown", tags$a(href="https://github.com/Benny24aa/General-Health-Dashboard-Scotland", icon("github"), "Source Code", target="_blank"))),
  dashboardSidebar(
    sidebarMenu(sidebarMenu(menuItem(
      text = "Main Page",icon = icon("info-circle"),
      startExpanded = FALSE,
      menuItem(text ="Main Page", tabName = "MainPage", icon = icon("info-circle"))
      ))),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Coronavirus",icon=icon("viruses"),
      startExpanded = FALSE,
      menuSubItem(text ="Cases", tabName="CoronavirusCaseGraph", icon=icon("virus")),
      menuSubItem(text = "Deaths", tabName ="CoronavirusDeathGraph", icon=icon("skull")),
      menuSubItem(text = "Testing", tabName ="testing", icon=icon("microscope")),
      menuSubItem(text = "Healthcare", tabName = "Healthcare", icon=icon("hospital")),
      menuSubItem(text = "Vaccination", tabName = "Vaccines", icon=icon("syringe"))
      )
    
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "Unintentional Injuries", icon=icon("user-injured"),
      startExpanded = FALSE,
      #menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text ="Traffic Collisions Admissions", tabName="RTAs", icon=icon("car")),
      menuSubItem(text = "Fall Admissions", tabName ="Falls", icon =icon("person-falling")),
      menuSubItem(text = "Deaths", tabName ="InjuriesDeaths", icon=icon("skull")))
    )),
    sidebarMenu(sidebarMenu(menuItem(
      text = "SIMD Map",icon=icon("globe"),
      startExpanded = FALSE,
      #menuItem(text ="Main Page", tabName = ""),
      menuSubItem(text = "Coming Soon", tabName ="", icon=icon("globe")))
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
            column(12,
                   p(h2("Welcome to the General Health Statistics Dashboard for Scotland", 
                   ))),
            style = "color: #1E3F66; font-size: 20px",
            mainPanel(
              column(12,
                     style = "color: black; font-size: 20px",
                     h4(tags$b("Summary of the Dashboard")),
                     p(h5("There are tabs at the side for each topic area within the dashboard which give an overview of summary analysis for the entire of Scotland. Some sections will have breakdowns at Healthboard, Local Authority, HSC Partnership, Neighbourhood Zones, and Data Zones.
                          We will also explore this each topic area by including analyse of non-location factors such as age, sex, and deprivation.")), 
                     h4(tags$b("How to use the dashboard")),
                     p(h5("On some of the side tabs there will be menu boxes that will allow the user to select the data they wish to explore. You will see different types
                          of drop-down boxes such as drop-down box for NHS Healthboard, Local Authority and so on. Drop-Down boxes for subgroups of interest such as deprivation, age group, and sex also exist.
                          This will change the graphs and visualisations on the tab accordingly depending on what you choose to see. "),
                       h4(tags$b("Further Information")),
                       p(h5("You can access the code by clicking the link on the right side of the screen. This will take you to my Github repsitory, which has more information. I have also 
                          linked my Tableau Profile alongside my Health Statistics Dashboard that I developed using the tool. If you want to submit feedback please use the feedback button also on the right side.
                          If you wish to contact me by email for queries, please email harleyb101020@gmail.com.")),
                       h4(tags$b("Open Data Information")),
                       p(h5("All content is available under the Open Government License V3.0, and is available on NHS Scotland Open Data except where otherwise stated. If you need any assistance with this, please visit the UK Government Website for more information regarding the Open Government License.
                          ")),
                     ))
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