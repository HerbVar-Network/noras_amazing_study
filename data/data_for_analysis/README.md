# Overview

This data archive was downloaded from Dryad on 24 May 2024.  It should be cited as 

Wetzel, William et al. (2023). Plant size, latitude, and phylogeny explain within-population variability in herbivory [Dataset]. Dryad. [https://doi.org/10.5061/dryad.44j0zpckm](https://datadryad.org/stash/dataset/doi:10.5061/dryad.44j0zpckm)

---

## Plant size, latitude, and phylogeny explain within-population variability in herbivory



This dataset and set of scripts was produced by the members of The Herbivory Variability Network. It examines global and phylogenetic patterns of herbivory via 790 suveys of 503 plant species.

Our website is [herbvar.org](https://herbvar.org). We are funded by the US National Science Foundation Research Coordination Networks program. The Principal Investigators (PIs) of the project are William Wetzel (<william.wetzel@montana.edu>), Phil Hahn, Brian Inouye, Nora Underwood, and Susan Whitehead. The steering committee is the PIs and Karen Abbott, Emilio Bruna, N. Ivalú Cacho, and Lee Dyer. Our contact information is [here](https://herbvar.org/leadership.html). For the full list of HerbVar members, please see [this webpage](https://herbvar.org/CollaboratorDirectory.html).

This version of the dataset and analysis is associated with the following paper: The Herbivory Variability Network et al. 2023. Plant size, latitude, and phylogeny explain within-population variability in herbivory. Science 382: 679-683. <https://www.science.org/doi/10.1126/science.adh8830>

### Description of the data and file structure

There are three csv data files in the dataset. Each represents a different biological scale: plant individuals, plant populations, and plant species.

data_plant_level_prep_2023-01-01 10-15-19.csv -- each row is a plant individual
data_survey_level_prep_2023-01-01 10-15-19.csv -- each row is a plant population
data_species_level_prep_2023-01-01 10-15-19.csv -- each row is a plant species

### Column name definitions

**data_plant_level_prep_2023-01-01 10-15-19.csv**

| Col name      | Definition                                         |
| ------------- | -------------------------------------------------- |
| surveyID      | ID for the population survey                       |
| Genus\_sp     | Genus and species of the plant surveyed            |
| plantFamily   | Taxonomic family of the plant species              |
| percHerbPlant | The percent of leaf area damaged by herbivores (%) |
| Lat           | The latitude of the survey site (decimal degrees)  |

**data_survey_level_prep_2023-01-01 10-15-19.csv**

| Col name                 | Definition                                                                                       |
| ------------------------ | ------------------------------------------------------------------------------------------------ |
| surveyID                 | ID for the population survey                                                                     |
| date                     | The date of the survey (month/day/year)                                                          |
| Lat                      | The latitude of the survey site                                                                  |
| Lat\_abs                 | The absolute value of the latitude of the survey site (decimal degrees)                          |
| Lat\_abs\_scale          | The scaled absolute value of the latitude of the survey site (decimal degrees)                   |
| hemi                     | The hemisphere of the survey site (north or south)                                               |
| Genus\_sp                | Genus and species of the plant surveyed                                                          |
| plantFamily              | Taxonomic family of the plant species                                                            |
| Biome                    | The biome of the survey site                                                                     |
| growthForm               | The growth form of the plant species                                                             |
| growthForm\_simp         | A simplified version of the growth form of the plant species                                     |
| sizeDiameterMean         | The mean height for most plant species or mean diameter for prostrate species (cm)               |
| sizeDiameterMeanLog      | Log of sizeDiameterMean                                                                          |
| sizeDiameterMeanLogScale | Scaled log of sizeDiameterMean                                                                   |
| plantMean                | The mean percent herbivory in the survey (%)                                                     |
| plantMeanProp            | The mean proportion herbivory in the survey                                                      |
| plantMeanPropLogit       | The logit mean proportion herbivory in the survey                                                |
| plantGini                | The Gini coefficient of herbivory in the survey                                                  |
| plantGiniAdj             | The adjusted Gini coefficient of herbivory in the survey (see methods)                           |
| plantGiniAdjLogit        | The logit adjusted Gini coefficient of herbivory in the survey (see methods)                     |
| propPlantsHerb50         | The minimum proportion of plant individuals with >= 50% of the population's proportion herbivory |
| focalPlantCoverMean      | The average cover of the focal plant species within the survey                                   |

**data_species_level_prep_2023-01-01 10-15-19.csv**

| Col name           | Definition                                                                                                 |
| ------------------ | ---------------------------------------------------------------------------------------------------------- |
| Genus\_sp          | Genus and species of the plant surveyed                                                                    |
| plantFamily        | Taxonomic family of the plant species                                                                      |
| plantMean          | The mean percent herbivory averaged across the surveys of each species (%)                                 |
| plantMeanProp      | The mean proportion herbivory averaged across the surveys of each species                                  |
| plantMeanPropLogit | The logit mean proportion herbivory averaged across the surveys of each species                            |
| plantGini          | The Gini coefficient of herbivory averaged across the surveys of each species                              |
| plantGiniAdj       | The adjusted Gini coefficient of herbivory averaged across the surveys of each species (see methods)       |
| plantGiniAdjLogit  | The logit adjusted Gini coefficient of herbivory averaged across the surveys of each species (see methods) |

### Code/Software

Our analysis scripts are also available at our [public GitHub repository for this paper](https://github.com/HerbVar-Network/HV-Large-Patterns-MS-public). It includes six R scripts.

| Script                                 | Purpose                                                                                                                    |
| -------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| 01 - HV MS1 Load data and build tree.R | Loads the data files, builds the phylogenetic tree, and sets priors for all beta models                                    |
| 02 - HV MS1 Overall means.R            | Calculates model predicted means for mean herbivory and the Gini coefficient of herbivory, plus one more summary statistic |
| 03 - HV MS1 Geographic analyses.R      | Models geographic patterns in herbivory means and the Gini coefficient, including with latitude and biome                  |
| 04 - HV MS1 Plant trait analyses.R     | Models patterns in herbivory with plant size and plant growth form                                                         |
| 05 - HV MS1 Phylogenetic signal.R      | Calculates phylogenetic signal in mean herbivory and the Gini coefficient                                                  |
| 06 - HV MS1 Sensitivity analyses.R     | This script examines the sensitivity of our results to within-survey sample size                                           |

