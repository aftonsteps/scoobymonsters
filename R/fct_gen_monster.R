gen_monster <- function(dataset = scooby_data) {
  sample_size <- 1
  monster_name <- sample(dataset$monster_name, size = sample_size)
  monster_type <- tolower(sample(dataset$monster_type, size = sample_size))
  monster_subtype <- tolower(sample(dataset$monster_subtype, size = sample_size))
  monster_species <- tolower(sample(dataset$monster_species, size = sample_size))
  monster_real <- ifelse(test = sample(dataset$monster_real, size = sample_size),
                         yes = "real monster",
                         no = "fake monster")
  culprit_name <- sample(dataset$culprit_name, size = sample_size)
  motive <- tolower(sample(dataset$motive, size = sample_size))
  arrested <- ifelse(test = sample(dataset$arrested, size = sample_size),
                     yes = "arrested! You would have gotten away with it if it weren't for those meddling kids!",
                     no = "not arrested! You got away from those meddling kids!")

  return_string <-
    paste0("Your monster's name is ", monster_name, "!",
           " You are a ", monster_subtype, " ", monster_type, ".",
           " Your species is ", monster_species, ".",
           " You are a ", monster_real, "!",
           " Your real name is ", culprit_name, ".",
           " You were driven by ", motive,
           " and you were ", arrested)

  return(return_string)
}


