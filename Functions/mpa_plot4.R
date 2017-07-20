mpa_plot4 <- function (model, y.lab = NULL) {
  library(ggplot2)
  library(dplyr)
  library(tidyr)
  p <- model$model %>%
    mutate(Ano = as.numeric(as.character(Ano))) %>%
    ggplot(aes(x = Ano, y = Indicador, color = Zona, fill = Zona)) +
    geom_jitter(height = 0, width = 0.1, size = 0.25) +
    stat_summary(fun.data = mean_se, geom = "ribbon", alpha = 0.5) +
    stat_summary(geom = "line", fun.y = mean, color = "black", alpha = 0.5) +
    scale_color_brewer(palette = "Set1", direction = -1) +
    scale_fill_brewer(palette = "Set1",direction = -1) + 
    theme_bw() + 
    labs(x = "Ano", y = y.lab)
  return(p)
}
