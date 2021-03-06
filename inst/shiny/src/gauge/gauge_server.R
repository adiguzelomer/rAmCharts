output$gauge1 <- rAmCharts::renderAmCharts({
  ##Plot
  pipeR::pipeline(
    amAngularGaugeChart(startDuration = 0),
    addArrow(value = 100),
    addAxis(
      pipeR::pipeline(
      gaugeAxis(bottomText = '100 km/h', endValue = 220, valueInterval = 10) ,
             addBand(color = '#00CC00', endValue = 90, startValue = 0) ,
             addBand(color = '#ffac29', endValue = 130, startValue = 90) ,
             addBand(color = '#ea3838', endValue = 220, startValue = 130, innerRadius = '95%'))
    )
  )
})

output$code_gauge1 <- renderText({
  "
  ##Plot
  pipeR::pipeline(
    amAngularGaugeChart(startDuration = 0),
    addArrow(value = 100),
    addAxis(
      pipeR::pipeline(
        gaugeAxis(bottomText = '100 km/h', endValue = 220, valueInterval = 10) ,
        addBand(color = '#00CC00', endValue = 90, startValue = 0) ,
        addBand(color = '#ffac29', endValue = 130, startValue = 90) ,
        addBand(color = '#ea3838', endValue = 220, startValue = 130, innerRadius = '95%'))
    )
  )
  "
})
