setwd("D:/Data Science Course/Assignments/Getting and cleaning data")

createSet<-function(set){
  data<-fread(paste(set,"/X_",set,".txt", sep=""))
 
  activity<-fread(paste(set,"/y_",set,".txt", sep=""))
  colnames(data)<-features$V2
  subject<-fread(paste(set,"/subject_",set,".txt", sep=""))
  
  data %>% 
    select(matches("mean\\(\\)|std\\(\\)")) %>%  
    mutate(subject=subject$V1) %>% 
    mutate(activity=activity_labels$V2[activity$V1])
  
}

library(data.table)
library(dplyr)


features<-fread("features.txt")
activity_labels<-fread("activity_labels.txt");

result1<-rbind(createSet("test"), createSet("train"))

result2<-result1 %>% 
  group_by(subject, activity) %>% 
  summarise_each(funs(mean,sd))

write.table(result2, file="result.txt", row.names = FALSE)
