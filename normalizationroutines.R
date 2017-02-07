rm(list=ls())

data.samp<-read.csv("./Documents/Datasets/earthquake-database.csv")

#drop columns, and earthquakes from nuclear explosions
data.samp <- subset(data.samp, select=-c(Depth.Error,Depth.Seismic.Stations,Magnitude.Error,Magnitude.Seismic.Stations,Azimuthal.Gap,Horizontal.Distance,Horizontal.Error,Root.Mean.Square))
data.samp <- data.samp[(data.samp$Type=="Earthquake"),]
data.samp <- subset(data.samp, select=-c(Type, Magnitude.Type,ID,Source,Location.Source,Magnitude.Source, Status))

#combine date + time into single unix timestamp
data.samp$DateTime <- as.numeric(strptime(paste(data.samp$Date, data.samp$Time), "%m/%d/%Y %H:%M:%S"))
data.samp <- subset(data.samp, select=-c(Date,Time))

#rearrange order of columns
data.samp<-data.samp[c(5,1,2,3,4)]

#Normalize min-max scaling
#timestamps min -157612542, max 1483146508
data.samp$DateTime <- (data.samp$DateTime-(-157612542))/(1483146508-(-157612542))

for (i in c(2,3,4,5)){
  data.samp[,i] <- (data.samp[,i]-(min(data.samp[,i])))/(max(data.samp[,i])-(min(data.samp[,i])))
}

#export csv
write.csv(data.samp, file="./earthquake-normalized.csv")
