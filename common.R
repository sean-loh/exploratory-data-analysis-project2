DATA_URL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
DATA_DIRECTORY <- "../data/"
ZIP_FILE <- paste(DATA_DIRECTORY, "project_data.zip", sep="")
EMMISIONS_FILE <- paste(DATA_DIRECTORY, "summarySCC_PM25.rds", sep="")
SOURCE_CLASSIFICATION_FILE <-
  paste(DATA_DIRECTORY, "Source_Classification_Code.rds", sep="")

initialiseProjectData <- function(target) {
    if (!file.exists(DATA_DIRECTORY)) {
        dir.create(DATA_DIRECTORY)
    }

    if (!file.exists(ZIP_FILE)) {
        download.file(DATA_URL, ZIP_FILE)
    }

    if (!all(file.exists(EMMISIONS_FILE, SOURCE_CLASSIFICATION_FILE))) {
        unzip(ZIP_FILE, exdir=DATA_DIRECTORY)
    }
}
