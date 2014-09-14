pollutantmean<-function(directory="specdata",pollutant="nitrate",id=1:332){
files_list <- list.files(directory, full.names=TRUE)
dat <- data.frame()
for (i in id) {dat <- rbind(dat, read.csv(files_list[i]))}
x<-mean(dat[,pollutant],na.rm=TRUE)
round(x, digits=3)
}
