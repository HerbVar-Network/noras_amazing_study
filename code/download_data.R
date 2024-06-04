download_data <- function(){

if (!dir.exists("./data/data_for_analysis")) {
  dir.create("./data/data_for_analysis")
  A<-"`data_for_analysis` folder created." # placeholder
} else {
  A<-"`data_for_analysis` folder already exists." # placeholder
}

urlfile_plant_level_prep<-("https://raw.githubusercontent.com/embruna/herbvar_data_science_2023/main/data_plant_level_prep_2023-01-01_10-15-19.csv")
plant_level_prep<-read_csv(url(urlfile_plant_level_prep))
write_csv(plant_level_prep, here("data", "data_for_analysis","plant_level_prep.csv"))

urlfile_species_level_prep<-("https://raw.githubusercontent.com/embruna/herbvar_data_science_2023/main/data_species_level_prep_2023-01-01_10-15-19.csv")
species_level_prep<-read_csv(url(urlfile_species_level_prep))
write_csv(species_level_prep, here("data", "data_for_analysis","species_level_prep.csv"))


urlfile_survey_level_prep<-("https://raw.githubusercontent.com/embruna/herbvar_data_science_2023/main/data_survey_level_prep_2023-01-01_10-15-19.csv")
survey_level_prep<-read_csv(url(urlfile_survey_level_prep))
write_csv(survey_level_prep, here("data", "data_for_analysis","survey_level_prep.csv"))

urlfile_README<-("https://raw.githubusercontent.com/embruna/herbvar_data_science_2023/main/README.md")
README<-readLines(url(urlfile_README))
write(README, here("data", "data_for_analysis","README.md"))


return(A)
}