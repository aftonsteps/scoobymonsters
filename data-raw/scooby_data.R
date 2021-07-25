## Get the Scooby Doo data

scooby_data <-
  readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-07-13/scoobydoo.csv') %>%
  dplyr::select(monster_name,
                monster_type,
                monster_subtype,
                monster_species,
                monster_real,
                monster_amount,
                culprit_name,
                culprit_amount,
                motive,
                arrested) %>%
  dplyr::mutate(NAME_LENGTH = stringr::str_count(string = monster_name,
                                          pattern = ",") + 1,
                TYPE_LENGTH = stringr::str_count(string = monster_type,
                                                 pattern = ",") + 1,
                SPECIES_LENGTH = stringr::str_count(string = monster_species,
                                                    pattern = ",") + 1,
                CULPRIT_NAME_LENGTH = stringr::str_count(string = culprit_name,
                                                         pattern = ",") + 1) %>%
  dplyr::mutate(LENGTH_TEST = NAME_LENGTH == TYPE_LENGTH &
                  NAME_LENGTH == SPECIES_LENGTH &
                NAME_LENGTH == CULPRIT_NAME_LENGTH) %>%
  dplyr::filter(LENGTH_TEST) %>%
  dplyr::mutate(monster_name = stringr::str_split(string = monster_name,
                                                  pattern = ","),
                monster_type = stringr::str_split(string = monster_type,
                                                  pattern = ","),
                monster_subtype = stringr::str_split(string = monster_subtype,
                                                     pattern = ","),
                monster_species = stringr::str_split(string = monster_species,
                                                     pattern = ","),
                culprit_name = stringr::str_split(string = culprit_name,
                                                  pattern = ",")) %>%
  tidyr::unnest(cols = c(monster_name,
                         monster_type,
                         monster_subtype,
                         monster_species,
                         culprit_name)) %>%
  dplyr::select(-dplyr::contains("LENGTH")) %>%
  dplyr::filter(monster_name != "NULL" &
                  monster_subtype != "NULL" &
                  culprit_name != "NULL" &
                  motive != "NULL" &
                  arrested != "NULL")

usethis::use_data(scooby_data, overwrite = TRUE)
