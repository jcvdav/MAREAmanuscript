my_theme <- function(my_plot, x.lab = "", y.lab = "", text.x = 2006, text.y = 1, text.label = "", bio = T){
  
  if(bio){
    my_plot <- my_plot +
      theme(legend.position = "None") +
      labs(x = x.lab, y = y.lab) +
      scale_x_continuous(limits = c(2005, 2017),
                         breaks = c(2006, 2008, 2010, 2012, 2014, 2016),
                         labels = c("'06", "'08", "'10", "'12", "'14", "'16")) +
      theme(text = element_text(family = "Times", size = 10, face = "plain")) +
      geom_text(x = text.x, y = text.y, label = text.label, aes(size = 0.5, fontface = "plain"), color = "black")
  }
  
  if(!bio){
    my_plot <- my_plot +
      theme(legend.position = "None") +
      labs(x = x.lab, y = y.lab) +
      scale_x_continuous(limits = c(2000, 2014),
                         breaks = c(2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014),
                         labels = c("'00", "'02", "'04","'06", "'08", "'10", "'12", "'14")) +
      theme(text = element_text(family = "Times", size = 10, face = "plain")) +
      geom_text(x = text.x, y = text.y, label = text.label, aes(size = 0.5, fontface = "plain"), color = "black")
  }
  
  return(my_plot)
}
