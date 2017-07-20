my_theme <- function(my_plot, legend = F, x.lab = "", y.lab = ""){
  
  if (legend){
    my_plot <- my_plot +
      theme(legend.justification=c(0,1),
            legend.position=c(0,1),
            legend.background = element_rect(fill = "transparent", size=.25),
            legend.key.size = unit(0.5, "cm")) +
      guides(color = guide_legend(title = NULL),
             fill = guide_legend(title = NULL)) +
      labs(x = x.lab, y = y.lab) +
      scale_x_continuous(breaks = c(2006, 2008, 2010, 2012, 2014, 2016),
                         labels = c("06", "08", "10", "12", "14", "16")) +
      theme(text = element_text(family = "Times", size = 10))
  }
  
  if (!legend){
    my_plot <- my_plot +
      theme(legend.position = "None") +
      labs(x = x.lab, y = y.lab) +
      scale_x_continuous(breaks = c(2006, 2008, 2010, 2012, 2014, 2016),
                         labels = c("06", "08", "10", "12", "14", "16")) +
      theme(text = element_text(family = "Times", size = 10))
  }
  
  return(my_plot)
}
