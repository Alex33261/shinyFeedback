function(input, output, session) {
  
  observeEvent(input$myTextInput, {
    
    if (nchar(input$myTextInput) > 3) {
      
      showFeedbackDanger(
        inputId = "myTextInput",
        text = 'Danger'
      )
      
      showToast('error', 'Danger if > 3 chars')
      
    } else {
      hideFeedback(inputId = "myTextInput")
      
      showToast('success', 'Less than 3 chars!')
    }
    
  })
  
  observeEvent(input$myDateInput, {
    
    if (!identical(input$myDateInput, Sys.Date())) {
      
      showFeedbackDanger(
        inputId = "myDateInput",
        text = 'not today'
      )  
      
    } else {
      hideFeedback(inputId = "myDateInput")
    }
    
  })
  
  observeEvent(input$myTextAreaInput, {
    
    if (nchar(input$myTextAreaInput) > 10) {
      
      showFeedbackSuccess(
        inputId = "myTextAreaInput",
        text = 'this is a very very very long text feedback message'
      )  
      
    } else {
      hideFeedback(inputId = "myTextAreaInput")
    }
    
  })
  
  observeEvent(input$myDateRangeInput, {
    if (input$myDateRangeInput[1] >= input$myDateRangeInput[2]) {
      showFeedbackDanger(
        inputId = "myDateRangeInput",
        text = "Invaid Range"
      )  
    } else {
      hideFeedback(inputId = "myDateRangeInput")
    }
  })
  
  
  observeEvent(input$myNumericInput, {
    
    if (!is.na(input$myNumericInput) && input$myNumericInput > 10) {
      
      showFeedbackDanger(
        inputId = "myNumericInput",
        text = 'hi'
      )  
      
    } else {
      hideFeedback(inputId = "myNumericInput")
    }
    
  })
  
  observeEvent(input$myPasswordInput, {
    
    
    if (nchar(input$myPasswordInput) > 5) {
      
      showFeedbackSuccess(
        inputId = "myPasswordInput"
      )  
      
    } else {
      hideFeedback(inputId = "myPasswordInput")
    }
    
  })
  
  
  observeEvent(input$mySliderInput, {
    
    if (input$mySliderInput > 5) {
      
      showFeedbackWarning(
        inputId = "mySliderInput",
        text = "Warning",
        icon = NULL
      )  
      
    } else {
      hideFeedback(inputId = "mySliderInput")
    }
    
  })
  
  
  observeEvent(input$myLoadingButton, {
    Sys.sleep(4)
    resetLoadingButton("myLoadingButton")
  })
  observeEvent(input$myLoadingButtonDanger, {
    Sys.sleep(4)
    resetLoadingButton("myLoadingButtonDanger")
  })
  
  
  observeEvent(input$removeToast, {
    hideToast()
  })
  observeEvent(input$removeToastASAP, {
    hideToast(animate = FALSE)
  })
  
  
  observeEvent(input$mySelectizeInput, {
    
    if (input$mySelectizeInput == "A") {
      
      showFeedbackWarning(
        inputId = "mySelectizeInput",
        text = "Warn for A"
      )  
      
    } else {
      hideFeedback(inputId = "mySelectizeInput")
    }
    
  })
  
  observeEvent(input$mySelectInput, {
    
    if (input$mySelectInput == "A") {
      
      showFeedbackDanger(
        inputId = "mySelectInput",
        text = "Danger"
      )  
      
    } else {
      hideFeedback(inputId = "mySelectInput")
    }
    
  })
  
  observeEvent(input$myFileInput, {
    
    showFeedbackSuccess(
      inputId = "myFileInput",
      text = "I love files!"
    )
    
  })
  
  observeEvent(input$removeFileFeedback, {
    
    hideFeedback("myFileInput")
    
  })
  
  callModule(
    eg_module,
    "eg_module"
  )
}