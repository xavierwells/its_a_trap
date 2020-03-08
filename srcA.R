# citationDf = read.csv("~/OpenDataDay/ItsATrap/data/highway_patrol_data.csv")
# 
# #Convert factors to numeric for speed quantities (mph)
# citationDf$Alleged_Speed = as.numeric(levels(citationDf$Alleged_Speed)[citationDf$Alleged_Speed])
# citationDf$Posted_Speed = as.numeric(levels(citationDf$Posted_Speed)[citationDf$Posted_Speed])
# 
# #Cut out non-speeding related violations
# speedingDf = citationDf[which(citationDf$Violation_Category == "SPEED - UNSAFE" |
#                                 citationDf$Violation_Category == "SPEEDING - OVER LIMITS"),]
# 
# #Cut out missing speeds or below-the-limit speeds
# speedingDfNoNA = speedingDf[which(!(is.na(speedingDf$Alleged_Speed) | is.na(speedingDf$Posted_Speed))),]
# speedingDfNoNA = speedingDfNoNA[which(speedingDfNoNA$Alleged_Speed > speedingDfNoNA$Posted_Speed),]
# 
# #Convert lat/lng into numerics and remove missing locations
# speedingDfNoNA$Latitude = as.numeric(levels(speedingDfNoNA$Latitude)[speedingDfNoNA$Latitude])
# speedingDfNoNA$Longitude = as.numeric(levels(speedingDfNoNA$Longitude)[speedingDfNoNA$Longitude])
# speedingDfNoNA = speedingDfNoNA[which(!(is.na(speedingDfNoNA$Longitude) | is.na(speedingDfNoNA$Latitude))), ]
# 
# #Remove 0 mph posted speeds
# speedingDfNoNA = speedingDfNoNA[which(speedingDfNoNA$Posted_Speed > 0),]
# 
# #Create location/riskFactor csv
# mapsDf = speedingDfNoNA[,c("Latitude", "Longitude")]
# meanSpeeding = mean(speedingDfNoNA$Alleged_Speed - speedingDfNoNA$Posted_Speed)
# logistic = function(x) 1/(1+exp((x-meanSpeeding)/9))
# riskFactors = logistic(speedingDfNoNA$Alleged_Speed - speedingDfNoNA$Posted_Speed)
# mapsDf$riskFactor = riskFactors
# 
# #Create final csv for google maps heatmap
# write.csv(mapsDf, "mapsDf.csv")







