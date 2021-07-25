test_that("gen_monster returns correct string", {
  toy_data <- data.frame(monster_name = "Mark",
                         monster_type = "Fae Creature",
                         monster_subtype = "Giant",
                         monster_species = "Cat",
                         monster_real = FALSE,
                         monster_amount = 1,
                         culprit_name = "Oberon",
                         culprit_amount = 1,
                         motive = "Chaos",
                         arrested = FALSE)
  result <- gen_monster(toy_data)

  expect_equal(result,
               "Your monster's name is Mark! You are a giant fae creature. Your species is cat. You are a fake monster! Your real name is Oberon. You were driven by chaos and you were not arrested! You got away from those meddling kids!")

})
