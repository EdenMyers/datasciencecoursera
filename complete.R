complete <- function(directory, id = 1:332) {
    listoffiles <- list.files("~/Desktop/CourseraDataSci/specdata", pattern = "*.csv", full.names = TRUE)
    df <- data.frame()
   
    for (i in id) 
        {
        df<- rbind(df, sum(complete.cases(read.csv(listoffiles[i]))))
        }
    df<- cbind(id, df)
     colnames(df) <- c("id", "nobs")
    df
} 
