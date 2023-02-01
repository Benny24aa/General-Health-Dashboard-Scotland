covidcases <- function(input, output){
  
  filteredData <- reactive({
    
    filteredData <- Coviddata[Coviddata$areaName == input$AreaName,]
    
    return(filteredData)   
  })
    
    filteredDatacoviddeath <- reactive({
      
      filteredDatacoviddeath <- Coviddata[Coviddata$areaName == input$AreaNamea,]
      
      return(filteredDatacoviddeath)
    
  })
    
    filteredDatavaccineonedose <- reactive({
      
      filteredDatavaccineonedose <- VaccineData[VaccineData$areaname == input$areaname,]
      
      return(filteredDatavaccineonedose)
      
    })
    
    filteredDatavaccinetwodose <- reactive({
      
      filteredDatavaccinetwodose <- Vaccine2nddose[Vaccine2nddose$areaName2nddose == input$areaName2nddose,]
      
      return(filteredDatavaccinetwodose)
      
    })
  
  output$datatable1 <- renderDT({
    
    datatable(filteredData())
    
  })
  
  output$datatabledeaths <- renderDT({
    
    datatable(filteredDatacoviddeath())
    
  })
  
  
  output$vaccine1stdose <- renderDT({
    
    datatable(filteredDatavaccineonedose())
    
  })
  
  
  output$vaccine2nddose <- renderDT({
    
    datatable(filteredDatavaccinetwodose())
    
  })
  
  output$plot1 <- renderPlot({
    
    graphcovid <- ggplot(data = filteredData(), aes_string(x = "date", y = input$column, color=input$column)) + geom_point() + geom_line() + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 2)) + theme_bw()
    
    covid_color_range <- colorRampPalette(c("green","yellow","blue","purple", "black"))
    
    covid_range <- covid_color_range(10000)
    
    graphcovid + scale_color_gradientn(colors = covid_range)
    
  })
  
  output$deathcovid <- renderPlot({
    
    graphcoviddeath <- ggplot(data = filteredDatacoviddeath(), aes_string(x = "date", y = input$coviddeath, color=input$coviddeath)) + geom_point() + geom_line()+ theme(panel.border = element_rect(fill = "transparent", color = 4, size = 2)) + theme_bw()
    
    covid_color_rangedeath <- colorRampPalette(c("blue","black", "red"))
    
    covid_rangedeath <- covid_color_rangedeath(10000)
    
    graphcoviddeath + scale_color_gradientn(colors = covid_rangedeath)
    
  })
  
  output$vaccine1stdose <- renderPlot({
    
    graph1stdose <- ggplot(data = filteredDatavaccineonedose(), aes_string(x = "date", y = input$covid1stdose, color=input$covid1stdose), size = 1.5) + geom_point() + geom_line() + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 2)) + theme_bw()
    
    covid_color_rangefirstsode <- colorRampPalette(c("red","yellow", "green"))
    
    covid_rangefirstsode <- covid_color_rangefirstsode(10000)
    
    graph1stdose + scale_color_gradientn(colors = covid_rangefirstsode)
    
  })
  
  output$vaccine2nddose <- renderPlot({
    
    graph2nddose <- ggplot(data = filteredDatavaccinetwodose(), aes_string(x = "date", y = input$covid2nddose, color=input$covid2nddose),size = 1.5) + geom_point() + geom_line() + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 2)) + theme_bw()
    
    covid_color_range2ndsode <- colorRampPalette(c("red","yellow", "green"))
    
    covid_range2ndsode <- covid_color_range2ndsode(10000)
    
    graph2nddose + scale_color_gradientn(colors = covid_range2ndsode)
    
  })
  
  
  output$Healthboards <- renderPlot({
    
    ggplot(data = Coviddata, aes(x=date, y=newCasesBySpecimenDateRollingRate, group=areaName)) + geom_line(aes(color=areaName)) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3)) + theme_bw()
  })
  
  output$CovidcaseGendertotal <- renderPlot({
  
  ggplot(data = Casesgendertotal, aes(x=Sex, y=CumulativePositive, group=Sex, fill=Sex)) + geom_bar(stat="identity", position=position_dodge()) + theme(panel.border = element_rect(fill = "transparent", color = 5, size = 3))+ theme_bw()
})
  
  output$CovidReinfectionsGendertotal <- renderPlot({
    
    ggplot(data = Casesgendertotal, aes(x=Sex, y=ReinfectionsCumulative, group=Sex, fill=Sex)) + geom_bar(stat="identity", position=position_dodge()) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
  })
  
  output$CovidAgeGroupCases <- renderPlot({
    
    ggplot(data = CasesAgeTotal, aes(x=AgeGroup, y=CumulativePositive, group=AgeGroup, fill=AgeGroup)) + geom_bar(stat="identity", position=position_dodge()) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
  })
 
   output$CovidCasesDeprivation <- renderPlot({
    
    ggplot(data = CasesDeprivation, aes(x=SIMDQuintile, y=TotalPositive, group=SIMDQuintile, fill=SIMDQuintile)) + geom_bar(stat="identity", position=position_dodge()) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
  })
  
   output$CovidAgeGroupDeaths <- renderPlot({
     
     ggplot(data = CasesAgeTotal, aes(x=AgeGroup, y=CrudeRateDeaths, group=AgeGroup, fill=AgeGroup)) + geom_bar(stat="identity", position=position_dodge()) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
   })
   
   output$CovidCumAgeGroupDeaths <- renderPlot({
     
     ggplot(data = CasesAgeTotal, aes(x=AgeGroup, y=CumulativeDeaths, group=AgeGroup, fill=AgeGroup)) + geom_bar(stat="identity", position=position_dodge()) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
   })
  
    output$CovidCumCrudeDeprivationDeaths <- renderPlot({
     
     ggplot(data = CovidDeathsDeprivation, aes(x=SIMDQuintile, y=CrudeRateDeaths, group=SIMDQuintile, fill=SIMDQuintile)) + geom_bar(stat="identity", position=position_dodge()) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
   })
    
    output$CovidCumDeprivationDeaths <- renderPlot({
      
      ggplot(data = CovidDeathsDeprivation, aes(x=SIMDQuintile, y=CumulativeDeaths, group=SIMDQuintile, fill=SIMDQuintile)) + geom_bar(stat="identity", position=position_dodge()) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
    })
   
     output$CovidPositiveTests <- renderPlot({
      
      ggplot(data = Covidtesting, aes(x=HBName, y=PositiveTests, group=HBName, fill=HBName)) + geom_bar(stat="identity", position=position_dodge()) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
    })
     
     output$CovidPositiveTests100k <- renderPlot({
       
       ggplot(data = Covidtesting, aes(x=HBName, y=PositiveTests100k, group=HBName, fill=HBName)) + geom_bar(stat="identity", position=position_dodge()) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
     })
    
      output$CovidPositiveTestnewPillarOneTestsByPublishDate2022<- renderPlot({
       
       ggplot(data = Covidtestingbig, aes(x=date, y=newPillarOneTestsByPublishDate, group=areaName, fill=newPillarOneTestsByPublishDate)) + geom_bar(stat="identity", position=position_dodge()) + geom_line(aes(x=date, y=newPillarOneTestsByPublishDateAverage7Day), size = 1.5, color ="red") + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
     })
     
      output$CovidPositiveTestnewPillarTwoTestsByPublishDate2022<- renderPlot({
        
        ggplot(data = Covidtestingbig, aes(x=date, y=newPillarTwoTestsByPublishDate, group=areaName, fill=newPillarTwoTestsByPublishDate)) + geom_bar(stat="identity", position=position_dodge()) + geom_line(aes(x=date, y=newPillarTwoTestsByPublishDateAverage7Day), size = 1.5, color ="red") + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
      })
      
      output$CovidPositiveTestnewTestsByPublishDate2022<- renderPlot({
        
        ggplot(data = Covidtestingbig, aes(x=date, y=newTestsByPublishDate, group=areaName, fill=newTestsByPublishDate)) + geom_bar(stat="identity", position=position_dodge()) +geom_line(aes(x=date, y=NewTests7dayaverage),size = 1.5, color ="red")+ theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
      })
      
      output$CovidPatientsinhospital <- renderPlot({
        
        ggplot(data = COVIDHospital, aes(x=date, y=hospitalCases, group=areaName, fill=hospitalCases)) + geom_bar(stat="identity", position=position_dodge()) +geom_line(aes(x=date, y=hospitalCases),size = 1.5, color ="red")+ theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
      })
      
      output$CumAdmissions <- renderPlot({
        
        ggplot(data = COVIDHospital, aes(x=date, y=cumAdmissions, group=areaName, fill=cumAdmissions)) + geom_bar(stat="identity", position=position_dodge()) +geom_line(aes(x=date, y=cumAdmissions),size = 1.5, color ="red")+ theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
      })
      
      output$CovidAdmissions<- renderPlot({
        
        COVIDAdmissionsa <- ggplot(data = COVIDHospital, aes(x=date, y=NewAdmissions7days, group=areaName, color =NewAdmissions7days)) + geom_bar(stat="identity", position=position_dodge()) +geom_line(aes(x=date, y=NewAdmissions7days), size = 1.5, color="red") + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw() 
     
        covid_color_rangeadmissions <- colorRampPalette(c("green","yellow","blue","purple","black"))
        
        covid_rangeadmissions <- covid_color_rangeadmissions(10000)
        
        COVIDAdmissionsa + scale_color_gradientn(colors = covid_rangeadmissions)
        
         })
      
      output$MVbedoccupied<- renderPlot({
        
       MVbed <- ggplot(data = COVIDHospital, aes(x=date, y=covidOccupiedMVBeds, group=areaName, color=covidOccupiedMVBeds)) + geom_bar(stat="identity", position=position_dodge()) +geom_line(aes(x=date, y=covidOccupiedMVBeds), size = 1.5, color = "red") + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
     
       covid_color_rangeMVbeds <- colorRampPalette(c("violet","dark blue", "black"))
       
       covid_rangeMVbeds <- covid_color_rangeMVbeds(10000)
       
       MVbed + scale_color_gradientn(colors = covid_rangeMVbeds)
       
         })
      
      output$onedosecovid <- renderPlot({
        
        ggplot(data = COVIDVaccine, aes(x=date, y=newPeopleVaccinatedFirstDoseByPublishDate, group=areaName, fill=newPeopleVaccinatedFirstDoseByPublishDate)) + geom_bar(stat="identity", position=position_dodge()) +geom_line(aes(x=date, y=newPeopleVaccinatedFirstDoseByPublishDate7dayaverage),size = 1.5, color ="red")+ theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
      })
      
      output$twodosecovid <- renderPlot({
        
        ggplot(data = COVIDVaccine, aes(x=date, y=newPeopleVaccinatedSecondDoseByPublishDate, group=areaName, fill=newPeopleVaccinatedSecondDoseByPublishDate)) + geom_bar(stat="identity", position=position_dodge()) +geom_line(aes(x=date, y=newPeopleVaccinatedSecondDoseByPublishDate7dayaverage),size = 1.5, color ="red")+ theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
      })

      output$threedosecovid <- renderPlot({
        
        ggplot(data = COVIDVaccine, aes(x=date, y=newPeopleVaccinatedThirdInjectionByPublishDate, group=areaName, fill=newPeopleVaccinatedThirdInjectionByPublishDate)) + geom_bar(stat="identity", position=position_dodge()) +geom_line(aes(x=date, y=newPeopleVaccinatedThirdInjectionByPublishDate7dayaverage),size = 1.5, color ="red")+ theme(panel.border = element_rect(fill = "transparent", color = 4, size = 3))+ theme_bw()
      })
      #Unintentional injuries graphs start
      
      output$agegroupRTA <- renderPlot({
        
        ggplot(data = admissionsRTAage, aes(x=FinancialYear, y=NumberOfAdmissions, group=AgeGroup)) + geom_line(aes(color=AgeGroup)) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 10)) + theme_bw()
      })
      
      output$genderRTAadmissions <- renderPlot({
       
         ggplot(data = admissionsRTAgender, aes(x=FinancialYear, y=NumberOfAdmissions, group=Sex)) + geom_line(aes(color=Sex)) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 4)) + theme_bw()
      })
      
      output$maleRTAadmissions <- renderPlot({
        
        ggplot(data = admissionsRTAmaleage,aes(x=FinancialYear, y=NumberOfAdmissions, group=AgeGroup)) + geom_line(aes(color=AgeGroup)) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 10)) + theme_bw()
      })
      
      output$femaleRTAadmissions <- renderPlot ({
        
        ggplot(data = admissionsRTAfemaleage, aes(x=FinancialYear, y=NumberOfAdmissions, group=AgeGroup)) + geom_line(aes(color=AgeGroup)) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 10)) + theme_bw()
      })
      
      output$fallslocationgraph <- renderPlot ({
        
        ggplot(data = fallslocation,  aes(x=FinancialYear, y=NumberOfAdmissions, group=InjuryLocation)) + geom_line(aes(color=InjuryLocation)) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 10)) + theme_bw()
      })
      
      output$fallsage <- renderPlot ({
        
        ggplot(data = agefalls, aes(x=FinancialYear, y=NumberOfAdmissions, group=AgeGroup)) + geom_line(aes(color=AgeGroup)) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 10)) + theme_bw()
      })
      
      output$fallsgender <- renderPlot ({
        
        ggplot(data = genderfalls, aes(x=FinancialYear, y=NumberOfAdmissions, group=Sex)) + geom_line(aes(color=Sex)) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 10)) + theme_bw()
      })
      
      output$Injurylocationdeaths <- renderPlot ({
        
        ggplot(data = Injurieslocations, aes(x=FinancialYear, y=NumberofDeaths, group=InjuryType)) + geom_line(aes(color=InjuryType)) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 10)) + theme_bw()
      })
      
      output$Injuryagedeaths <- renderPlot ({
        
        ggplot(data = Injuriesagedeaths, aes(x=FinancialYear, y=NumberofDeaths, group=AgeGroup)) + geom_line(aes(color=AgeGroup)) + theme(panel.border = element_rect(fill = "transparent", color = 4, size = 10)) + theme_bw()
      })
      
      #Download Data Buttons
      
      #Covid Case and Death Data for Healthboard Download Button
      output$test <- downloadHandler(
        filename = "ScotlandCase.xlsx",
        content = function(file) {
          writexl::write_xlsx(Coviddata,file)
          })
      
      #COVID Case and Gender Download Button
      output$covidcasegenderdownload <- downloadHandler(
        filename = "casesbygender.xlsx",
        content = function (file) {
          writexl::write_xlsx(Casesgendertotal,file)
          })
      
      #Reinfections and age download button
       output$covidagegroupdownload <- downloadHandler(
       filename = "COVIDagegroups.xlsx",
       content = function (file) {
         writexl::write_xlsx(CasesAgeTotal,file)
      })
      
       #Deprivation Cases
       output$coviddeprivationdownload <- downloadHandler(
         filename = "covidcasesdeprivation.xlsx",
         content = function (file) {
           writexl::write_xlsx(CasesDeprivation,file)
         }
       )
}