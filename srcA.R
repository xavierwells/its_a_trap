# citationDf = read.csv("~/OpenDataDay/ItsATrap/data/highway_patrol_data.csv")
# citationDf$Alleged_Speed = as.integer(levels(citationDf$Alleged_Speed)[citationDf$Alleged_Speed])
# 
# speedingDf = citationDf[which(citationDf$Violation_Category == "SPEED - UNSAFE" |
#                                 citationDf$Violation_Category == "SPEEDING - OVER LIMITS"),]