##Loading required packages
  library(plyr)
  library(reshape2)
##Reading test data into R
  testx <- read.table("./UCI HAR Dataset/test/X_test.txt")
  testy <- read.table("./UCI HAR Dataset/test/y_test.txt", sep = "\t")
##Reading test subject identification into R
  testsub <- read.table("./UCI HAR Dataset/test/subject_test.txt")
##Reading training data into R
  trainx <- read.table("./UCI HAR Dataset/train/X_train.txt")
  trainy <- read.table("./UCI HAR Dataset/train/y_train.txt")
##Reading training subject identification into R
  trainsub <- read.table("./UCI HAR Dataset/train/subject_train.txt")
##Combining x variables to form data_set
  data_set <- rbind(trainx, testx)
##Reading 'features' into R
  features <- read.table("./UCI HAR Dataset/features.txt")
##Replacing generic column names with features labels
  names(data_set) <- features[,2]
##Binding subject id and activity labels to form full data_set
  Subject <- rbind(trainsub, testsub)
  Subject <- rename(Subject, c("V1"="Subject"))
  Activity <- rbind(trainy, testy)
  Activity <- rename(Activity, c("V1"="Activity"))
  data_set <-cbind(Subject, Activity, data_set)
##Adding descriptive activity labels
  activity.code <- c(Walking=1, Walking_Upstairs=2, Walking_Downstairs=3, Sitting=4, Standing=5, Laying=6)
  data_set$Activity <- names(activity.code)[match(data_set$Activity, activity.code)]
##Formatting Column Names
  names(data_set) <- tolower(names(data_set))
  names(data_set) <- gsub("-","", names(data_set))
  names(data_set) <- gsub("\\()","", names(data_set))
  names(data_set) <- gsub("\\(", "", names(data_set))
  names(data_set) <- gsub("\\)", "", names(data_set))
  names(data_set) <- gsub(",", "", names(data_set))
##Extracting columns pertaining to mean and std; form new 'tidy' data set
  tidy_set <- data_set[grepl("subject|activity|mean|std", names(data_set)) == T]
##Calculating averages for each column by subject + activity; cleaned activity names of "_"
##Completed 'tidy' data set formed here
  melted <- melt(tidy_set, id=c("subject","activity"), measure.vars=names(tidy_set[,3:88]))
  tidy <- dcast(melted, subject + activity ~ variable, mean)
  tidy$activity <- gsub("_", "", tidy$activity)
##Writing 'tidy' data set to text file for upload  
  write.table(tidy, file="tidy.txt")