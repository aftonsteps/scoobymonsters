credit <-
  paste0("<div class = 'footnote'>Monsters are randomly generated from a dataset from <a href='https://github.com/rfordatascience/tidytuesday/tree/master/data/2021/2021-07-13'>Tidy Tuesday</a> ",
         "and <a href='https://www.kaggle.com/williamschooleman/scoobydoo-complete'>Kaggle</a>, ",
         "created by <a href='https://www.kaggle.com/williamschooleman'>plummye</a>.",
         " This app is created by <a href='https://github.com/aftonsteps'>AftonSteps</a>.</div>")

usethis::use_data(credit, overwrite = TRUE)
