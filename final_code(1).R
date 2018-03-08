# Package ID: knb-lter-sbc.1001.7 Cataloging System:https://pasta.lternet.edu.
# Data set title: SBC LTER: CTD profiles from UNOLS cruises in the Santa Barbara Channel: LTER01, 2001-03-20 to 2001-03-26.
# Data set creator:    - Santa Barbara Coastal LTER 
# Data set creator:  Mark Brzezinski -  
# Data set creator:  Craig Carlson -  
# Data set creator:  David Siegel -  
# Data set creator:  Libe Washburn -  
# Contact:    - Information Manager LTER Network Office  - tech-support@lternet.edu
# Contact:    - Information Manager, Santa Barbara Coastal LTER   - sbclter@msi.ucsb.edu
# Metadata Link: https://portal.lternet.edu/nis/metadataviewer?packageid=knb-lter-sbc.1001.7
# Stylesheet for metadata conversion into program: John H. Porter, Univ. Virginia, jporter@virginia.edu 

setwd("/Users/phoeberacine/Desktop/ESM 244-Advanced Stats")

infile1  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-sbc/1001/7/c2e0596c0adb36d587a2a457912c7205" 
infile1 <- sub("^https","http",infile1) 
 dt1 <-read.csv(infile1,header=F 
          ,skip=1
            ,sep=";"  
                ,quot='"' 
        , col.names=c(
                    "Cruise",     
                    "Station",     
                    "Type",     
                    "mon.per.day.per.yr",     
                    "hh.colon.mm",     
                    "Lon..paren.degE.paren.",     
                    "Lat..paren.degN.paren.",     
                    "Bot..Depth..bracket.m.bracket.",     
                    "Depth.SW..bracket.m.bracket.",     
                    "Decimal.Year..bracket.yr.bracket.",     
                    "lon",     
                    "lat",     
                    "Pressure..bracket.db.bracket.",     
                    "T00",     
                    "T11",     
                    "C00",     
                    "C11",     
                    "scans.per.bin",     
                    "Fluor",     
                    "par",     
                    "cpar",     
                    "spar",     
                    "v0",     
                    "v1",     
                    "v2",     
                    "v3",     
                    "v4",     
                    "v5",     
                    "v6",     
                    "v7",     
                    "Trans..bracket..percent..bracket.",     
                    "Beam.C",     
                    "DIssolved.Oxygen..bracket.umol.per.kg.bracket.",     
                    "DIssolved.Oxygen..bracket.ml.per.l.bracket.",     
                    "O2.Beckman.YSI..bracket.umol.per.kg.bracket.",     
                    "O2.Beckman.YSI..bracket.ml.per.l.bracket.",     
                    "O2.Beckman.YSI.Temperature..bracket.C.bracket.",     
                    "potemp00",     
                    "potemp11",     
                    "sal00..bracket.PSU.bracket.",     
                    "sal11..bracket.SPU.bracket.",     
                    "sigma00",     
                    "sigma11",     
                    "sva00",     
                    "sva11",     
                    "nitrate_isus",     
                    "xderv1",     
                    "xderv2",     
                    "xderv3",     
                    "xderv4"    ), check.names=TRUE)
               
  
# Fix any interval or ratio columns mistakenly read in as nominal and nominal columns read as numeric or dates read as strings
                
if (class(dt1$Cruise)!="factor") dt1$Cruise<- as.factor(dt1$Cruise)
if (class(dt1$Station)!="factor") dt1$Station<- as.factor(dt1$Station)
if (class(dt1$Type)!="factor") dt1$Type<- as.factor(dt1$Type)
if (class(dt1$Lon..paren.degE.paren.)=="factor") dt1$Lon..paren.degE.paren. <-as.numeric(levels(dt1$Lon..paren.degE.paren.))[as.integer(dt1$Lon..paren.degE.paren.) ]
if (class(dt1$Lat..paren.degN.paren.)=="factor") dt1$Lat..paren.degN.paren. <-as.numeric(levels(dt1$Lat..paren.degN.paren.))[as.integer(dt1$Lat..paren.degN.paren.) ]
if (class(dt1$Bot..Depth..bracket.m.bracket.)=="factor") dt1$Bot..Depth..bracket.m.bracket. <-as.numeric(levels(dt1$Bot..Depth..bracket.m.bracket.))[as.integer(dt1$Bot..Depth..bracket.m.bracket.) ]
if (class(dt1$Depth.SW..bracket.m.bracket.)=="factor") dt1$Depth.SW..bracket.m.bracket. <-as.numeric(levels(dt1$Depth.SW..bracket.m.bracket.))[as.integer(dt1$Depth.SW..bracket.m.bracket.) ]
if (class(dt1$Decimal.Year..bracket.yr.bracket.)=="factor") dt1$Decimal.Year..bracket.yr.bracket. <-as.numeric(levels(dt1$Decimal.Year..bracket.yr.bracket.))[as.integer(dt1$Decimal.Year..bracket.yr.bracket.) ]
if (class(dt1$lon)=="factor") dt1$lon <-as.numeric(levels(dt1$lon))[as.integer(dt1$lon) ]
if (class(dt1$lat)=="factor") dt1$lat <-as.numeric(levels(dt1$lat))[as.integer(dt1$lat) ]
if (class(dt1$Pressure..bracket.db.bracket.)=="factor") dt1$Pressure..bracket.db.bracket. <-as.numeric(levels(dt1$Pressure..bracket.db.bracket.))[as.integer(dt1$Pressure..bracket.db.bracket.) ]
if (class(dt1$T00)=="factor") dt1$T00 <-as.numeric(levels(dt1$T00))[as.integer(dt1$T00) ]
if (class(dt1$T11)=="factor") dt1$T11 <-as.numeric(levels(dt1$T11))[as.integer(dt1$T11) ]
if (class(dt1$C00)=="factor") dt1$C00 <-as.numeric(levels(dt1$C00))[as.integer(dt1$C00) ]
if (class(dt1$C11)=="factor") dt1$C11 <-as.numeric(levels(dt1$C11))[as.integer(dt1$C11) ]
if (class(dt1$scans.per.bin)=="factor") dt1$scans.per.bin <-as.numeric(levels(dt1$scans.per.bin))[as.integer(dt1$scans.per.bin) ]
if (class(dt1$Fluor)=="factor") dt1$Fluor <-as.numeric(levels(dt1$Fluor))[as.integer(dt1$Fluor) ]
if (class(dt1$par)=="factor") dt1$par <-as.numeric(levels(dt1$par))[as.integer(dt1$par) ]
if (class(dt1$cpar)=="factor") dt1$cpar <-as.numeric(levels(dt1$cpar))[as.integer(dt1$cpar) ]
if (class(dt1$spar)=="factor") dt1$spar <-as.numeric(levels(dt1$spar))[as.integer(dt1$spar) ]
if (class(dt1$v0)=="factor") dt1$v0 <-as.numeric(levels(dt1$v0))[as.integer(dt1$v0) ]
if (class(dt1$v1)=="factor") dt1$v1 <-as.numeric(levels(dt1$v1))[as.integer(dt1$v1) ]
if (class(dt1$v2)=="factor") dt1$v2 <-as.numeric(levels(dt1$v2))[as.integer(dt1$v2) ]
if (class(dt1$v3)=="factor") dt1$v3 <-as.numeric(levels(dt1$v3))[as.integer(dt1$v3) ]
if (class(dt1$v4)=="factor") dt1$v4 <-as.numeric(levels(dt1$v4))[as.integer(dt1$v4) ]
if (class(dt1$v5)=="factor") dt1$v5 <-as.numeric(levels(dt1$v5))[as.integer(dt1$v5) ]
if (class(dt1$v6)=="factor") dt1$v6 <-as.numeric(levels(dt1$v6))[as.integer(dt1$v6) ]
if (class(dt1$v7)=="factor") dt1$v7 <-as.numeric(levels(dt1$v7))[as.integer(dt1$v7) ]
if (class(dt1$Trans..bracket..percent..bracket.)=="factor") dt1$Trans..bracket..percent..bracket. <-as.numeric(levels(dt1$Trans..bracket..percent..bracket.))[as.integer(dt1$Trans..bracket..percent..bracket.) ]
if (class(dt1$Beam.C)=="factor") dt1$Beam.C <-as.numeric(levels(dt1$Beam.C))[as.integer(dt1$Beam.C) ]
if (class(dt1$DIssolved.Oxygen..bracket.umol.per.kg.bracket.)=="factor") dt1$DIssolved.Oxygen..bracket.umol.per.kg.bracket. <-as.numeric(levels(dt1$DIssolved.Oxygen..bracket.umol.per.kg.bracket.))[as.integer(dt1$DIssolved.Oxygen..bracket.umol.per.kg.bracket.) ]
if (class(dt1$DIssolved.Oxygen..bracket.ml.per.l.bracket.)=="factor") dt1$DIssolved.Oxygen..bracket.ml.per.l.bracket. <-as.numeric(levels(dt1$DIssolved.Oxygen..bracket.ml.per.l.bracket.))[as.integer(dt1$DIssolved.Oxygen..bracket.ml.per.l.bracket.) ]
if (class(dt1$O2.Beckman.YSI..bracket.umol.per.kg.bracket.)=="factor") dt1$O2.Beckman.YSI..bracket.umol.per.kg.bracket. <-as.numeric(levels(dt1$O2.Beckman.YSI..bracket.umol.per.kg.bracket.))[as.integer(dt1$O2.Beckman.YSI..bracket.umol.per.kg.bracket.) ]
if (class(dt1$O2.Beckman.YSI..bracket.ml.per.l.bracket.)=="factor") dt1$O2.Beckman.YSI..bracket.ml.per.l.bracket. <-as.numeric(levels(dt1$O2.Beckman.YSI..bracket.ml.per.l.bracket.))[as.integer(dt1$O2.Beckman.YSI..bracket.ml.per.l.bracket.) ]
if (class(dt1$O2.Beckman.YSI.Temperature..bracket.C.bracket.)=="factor") dt1$O2.Beckman.YSI.Temperature..bracket.C.bracket. <-as.numeric(levels(dt1$O2.Beckman.YSI.Temperature..bracket.C.bracket.))[as.integer(dt1$O2.Beckman.YSI.Temperature..bracket.C.bracket.) ]
if (class(dt1$potemp00)=="factor") dt1$potemp00 <-as.numeric(levels(dt1$potemp00))[as.integer(dt1$potemp00) ]
if (class(dt1$potemp11)=="factor") dt1$potemp11 <-as.numeric(levels(dt1$potemp11))[as.integer(dt1$potemp11) ]
if (class(dt1$sal00..bracket.PSU.bracket.)=="factor") dt1$sal00..bracket.PSU.bracket. <-as.numeric(levels(dt1$sal00..bracket.PSU.bracket.))[as.integer(dt1$sal00..bracket.PSU.bracket.) ]
if (class(dt1$sal11..bracket.SPU.bracket.)=="factor") dt1$sal11..bracket.SPU.bracket. <-as.numeric(levels(dt1$sal11..bracket.SPU.bracket.))[as.integer(dt1$sal11..bracket.SPU.bracket.) ]
if (class(dt1$sigma00)=="factor") dt1$sigma00 <-as.numeric(levels(dt1$sigma00))[as.integer(dt1$sigma00) ]
if (class(dt1$sigma11)=="factor") dt1$sigma11 <-as.numeric(levels(dt1$sigma11))[as.integer(dt1$sigma11) ]
if (class(dt1$sva00)=="factor") dt1$sva00 <-as.numeric(levels(dt1$sva00))[as.integer(dt1$sva00) ]
if (class(dt1$sva11)=="factor") dt1$sva11 <-as.numeric(levels(dt1$sva11))[as.integer(dt1$sva11) ]
if (class(dt1$nitrate_isus)=="factor") dt1$nitrate_isus <-as.numeric(levels(dt1$nitrate_isus))[as.integer(dt1$nitrate_isus) ]
if (class(dt1$xderv1)!="factor") dt1$xderv1<- as.factor(dt1$xderv1)
if (class(dt1$xderv2)!="factor") dt1$xderv2<- as.factor(dt1$xderv2)
if (class(dt1$xderv3)!="factor") dt1$xderv3<- as.factor(dt1$xderv3)
if (class(dt1$xderv4)!="factor") dt1$xderv4<- as.factor(dt1$xderv4)

# Here is the structure of the input data frame:
str(dt1)                            
attach(dt1)                            
# The analyses below are basic descriptions of the variables. After testing, they should be replaced.                 

summary(Cruise)
summary(Station)
summary(Type)
summary(mon.per.day.per.yr)
summary(hh.colon.mm)
summary(Lon..paren.degE.paren.)
summary(Lat..paren.degN.paren.)
summary(Bot..Depth..bracket.m.bracket.)
summary(Depth.SW..bracket.m.bracket.)
summary(Decimal.Year..bracket.yr.bracket.)
summary(lon)
summary(lat)
summary(Pressure..bracket.db.bracket.)
summary(T00)
summary(T11)
summary(C00)
summary(C11)
summary(scans.per.bin)
summary(Fluor)
summary(par)
summary(cpar)
summary(spar)
summary(v0)
summary(v1)
summary(v2)
summary(v3)
summary(v4)
summary(v5)
summary(v6)
summary(v7)
summary(Trans..bracket..percent..bracket.)
summary(Beam.C)
summary(DIssolved.Oxygen..bracket.umol.per.kg.bracket.)
summary(DIssolved.Oxygen..bracket.ml.per.l.bracket.)
summary(O2.Beckman.YSI..bracket.umol.per.kg.bracket.)
summary(O2.Beckman.YSI..bracket.ml.per.l.bracket.)
summary(O2.Beckman.YSI.Temperature..bracket.C.bracket.)
summary(potemp00)
summary(potemp11)
summary(sal00..bracket.PSU.bracket.)
summary(sal11..bracket.SPU.bracket.)
summary(sigma00)
summary(sigma11)
summary(sva00)
summary(sva11)
summary(nitrate_isus)
summary(xderv1)
summary(xderv2)
summary(xderv3)
summary(xderv4) 
detach(dt1)               
         

infile2  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-sbc/1001/7/b431daa71cfc44d09b9c6064ada472e2" 
infile2 <- sub("^https","http",infile2) 
 dt2 <-read.csv(infile2,header=F 
          ,skip=1
            ,sep=";"  
                ,quot='"' 
        , col.names=c(
                    "Cruise",     
                    "Station",     
                    "Type",     
                    "mon.per.day.per.yr",     
                    "hh.colon.mm",     
                    "Lon..paren.degE.paren.",     
                    "Lat..paren.degN.paren.",     
                    "Bot..Depth..bracket.m.bracket.",     
                    "Depth.SW..bracket.m.bracket.",     
                    "Decimal.Year..bracket.yr.bracket.",     
                    "lon",     
                    "lat",     
                    "Pressure..bracket.db.bracket.",     
                    "T00",     
                    "T11",     
                    "C00",     
                    "C11",     
                    "scans.per.bin",     
                    "Fluor",     
                    "par",     
                    "cpar",     
                    "spar",     
                    "v0",     
                    "v1",     
                    "v2",     
                    "v3",     
                    "v4",     
                    "v5",     
                    "v6",     
                    "v7",     
                    "Trans..bracket..percent..bracket.",     
                    "Beam.C",     
                    "DIssolved.Oxygen..bracket.umol.per.kg.bracket.",     
                    "DIssolved.Oxygen..bracket.ml.per.l.bracket.",     
                    "O2.Beckman.YSI..bracket.umol.per.kg.bracket.",     
                    "O2.Beckman.YSI..bracket.ml.per.l.bracket.",     
                    "O2.Beckman.YSI.Temperature..bracket.C.bracket.",     
                    "potemp00",     
                    "potemp11",     
                    "sal00..bracket.PSU.bracket.",     
                    "sal11..bracket.SPU.bracket.",     
                    "sigma00",     
                    "sigma11",     
                    "sva00",     
                    "sva11",     
                    "nitrate_isus",     
                    "xderv1",     
                    "xderv2",     
                    "xderv3",     
                    "xderv4"    ), check.names=TRUE)
               
  
# Fix any interval or ratio columns mistakenly read in as nominal and nominal columns read as numeric or dates read as strings
                
if (class(dt2$Cruise)!="factor") dt2$Cruise<- as.factor(dt2$Cruise)
if (class(dt2$Station)!="factor") dt2$Station<- as.factor(dt2$Station)
if (class(dt2$Type)!="factor") dt2$Type<- as.factor(dt2$Type)
if (class(dt2$Lon..paren.degE.paren.)=="factor") dt2$Lon..paren.degE.paren. <-as.numeric(levels(dt2$Lon..paren.degE.paren.))[as.integer(dt2$Lon..paren.degE.paren.) ]
if (class(dt2$Lat..paren.degN.paren.)=="factor") dt2$Lat..paren.degN.paren. <-as.numeric(levels(dt2$Lat..paren.degN.paren.))[as.integer(dt2$Lat..paren.degN.paren.) ]
if (class(dt2$Bot..Depth..bracket.m.bracket.)=="factor") dt2$Bot..Depth..bracket.m.bracket. <-as.numeric(levels(dt2$Bot..Depth..bracket.m.bracket.))[as.integer(dt2$Bot..Depth..bracket.m.bracket.) ]
if (class(dt2$Depth.SW..bracket.m.bracket.)=="factor") dt2$Depth.SW..bracket.m.bracket. <-as.numeric(levels(dt2$Depth.SW..bracket.m.bracket.))[as.integer(dt2$Depth.SW..bracket.m.bracket.) ]
if (class(dt2$Decimal.Year..bracket.yr.bracket.)=="factor") dt2$Decimal.Year..bracket.yr.bracket. <-as.numeric(levels(dt2$Decimal.Year..bracket.yr.bracket.))[as.integer(dt2$Decimal.Year..bracket.yr.bracket.) ]
if (class(dt2$lon)=="factor") dt2$lon <-as.numeric(levels(dt2$lon))[as.integer(dt2$lon) ]
if (class(dt2$lat)=="factor") dt2$lat <-as.numeric(levels(dt2$lat))[as.integer(dt2$lat) ]
if (class(dt2$Pressure..bracket.db.bracket.)=="factor") dt2$Pressure..bracket.db.bracket. <-as.numeric(levels(dt2$Pressure..bracket.db.bracket.))[as.integer(dt2$Pressure..bracket.db.bracket.) ]
if (class(dt2$T00)=="factor") dt2$T00 <-as.numeric(levels(dt2$T00))[as.integer(dt2$T00) ]
if (class(dt2$T11)=="factor") dt2$T11 <-as.numeric(levels(dt2$T11))[as.integer(dt2$T11) ]
if (class(dt2$C00)=="factor") dt2$C00 <-as.numeric(levels(dt2$C00))[as.integer(dt2$C00) ]
if (class(dt2$C11)=="factor") dt2$C11 <-as.numeric(levels(dt2$C11))[as.integer(dt2$C11) ]
if (class(dt2$scans.per.bin)=="factor") dt2$scans.per.bin <-as.numeric(levels(dt2$scans.per.bin))[as.integer(dt2$scans.per.bin) ]
if (class(dt2$Fluor)=="factor") dt2$Fluor <-as.numeric(levels(dt2$Fluor))[as.integer(dt2$Fluor) ]
if (class(dt2$par)=="factor") dt2$par <-as.numeric(levels(dt2$par))[as.integer(dt2$par) ]
if (class(dt2$cpar)=="factor") dt2$cpar <-as.numeric(levels(dt2$cpar))[as.integer(dt2$cpar) ]
if (class(dt2$spar)=="factor") dt2$spar <-as.numeric(levels(dt2$spar))[as.integer(dt2$spar) ]
if (class(dt2$v0)=="factor") dt2$v0 <-as.numeric(levels(dt2$v0))[as.integer(dt2$v0) ]
if (class(dt2$v1)=="factor") dt2$v1 <-as.numeric(levels(dt2$v1))[as.integer(dt2$v1) ]
if (class(dt2$v2)=="factor") dt2$v2 <-as.numeric(levels(dt2$v2))[as.integer(dt2$v2) ]
if (class(dt2$v3)=="factor") dt2$v3 <-as.numeric(levels(dt2$v3))[as.integer(dt2$v3) ]
if (class(dt2$v4)=="factor") dt2$v4 <-as.numeric(levels(dt2$v4))[as.integer(dt2$v4) ]
if (class(dt2$v5)=="factor") dt2$v5 <-as.numeric(levels(dt2$v5))[as.integer(dt2$v5) ]
if (class(dt2$v6)=="factor") dt2$v6 <-as.numeric(levels(dt2$v6))[as.integer(dt2$v6) ]
if (class(dt2$v7)=="factor") dt2$v7 <-as.numeric(levels(dt2$v7))[as.integer(dt2$v7) ]
if (class(dt2$Trans..bracket..percent..bracket.)=="factor") dt2$Trans..bracket..percent..bracket. <-as.numeric(levels(dt2$Trans..bracket..percent..bracket.))[as.integer(dt2$Trans..bracket..percent..bracket.) ]
if (class(dt2$Beam.C)=="factor") dt2$Beam.C <-as.numeric(levels(dt2$Beam.C))[as.integer(dt2$Beam.C) ]
if (class(dt2$DIssolved.Oxygen..bracket.umol.per.kg.bracket.)=="factor") dt2$DIssolved.Oxygen..bracket.umol.per.kg.bracket. <-as.numeric(levels(dt2$DIssolved.Oxygen..bracket.umol.per.kg.bracket.))[as.integer(dt2$DIssolved.Oxygen..bracket.umol.per.kg.bracket.) ]
if (class(dt2$DIssolved.Oxygen..bracket.ml.per.l.bracket.)=="factor") dt2$DIssolved.Oxygen..bracket.ml.per.l.bracket. <-as.numeric(levels(dt2$DIssolved.Oxygen..bracket.ml.per.l.bracket.))[as.integer(dt2$DIssolved.Oxygen..bracket.ml.per.l.bracket.) ]
if (class(dt2$O2.Beckman.YSI..bracket.umol.per.kg.bracket.)=="factor") dt2$O2.Beckman.YSI..bracket.umol.per.kg.bracket. <-as.numeric(levels(dt2$O2.Beckman.YSI..bracket.umol.per.kg.bracket.))[as.integer(dt2$O2.Beckman.YSI..bracket.umol.per.kg.bracket.) ]
if (class(dt2$O2.Beckman.YSI..bracket.ml.per.l.bracket.)=="factor") dt2$O2.Beckman.YSI..bracket.ml.per.l.bracket. <-as.numeric(levels(dt2$O2.Beckman.YSI..bracket.ml.per.l.bracket.))[as.integer(dt2$O2.Beckman.YSI..bracket.ml.per.l.bracket.) ]
if (class(dt2$O2.Beckman.YSI.Temperature..bracket.C.bracket.)=="factor") dt2$O2.Beckman.YSI.Temperature..bracket.C.bracket. <-as.numeric(levels(dt2$O2.Beckman.YSI.Temperature..bracket.C.bracket.))[as.integer(dt2$O2.Beckman.YSI.Temperature..bracket.C.bracket.) ]
if (class(dt2$potemp00)=="factor") dt2$potemp00 <-as.numeric(levels(dt2$potemp00))[as.integer(dt2$potemp00) ]
if (class(dt2$potemp11)=="factor") dt2$potemp11 <-as.numeric(levels(dt2$potemp11))[as.integer(dt2$potemp11) ]
if (class(dt2$sal00..bracket.PSU.bracket.)=="factor") dt2$sal00..bracket.PSU.bracket. <-as.numeric(levels(dt2$sal00..bracket.PSU.bracket.))[as.integer(dt2$sal00..bracket.PSU.bracket.) ]
if (class(dt2$sal11..bracket.SPU.bracket.)=="factor") dt2$sal11..bracket.SPU.bracket. <-as.numeric(levels(dt2$sal11..bracket.SPU.bracket.))[as.integer(dt2$sal11..bracket.SPU.bracket.) ]
if (class(dt2$sigma00)=="factor") dt2$sigma00 <-as.numeric(levels(dt2$sigma00))[as.integer(dt2$sigma00) ]
if (class(dt2$sigma11)=="factor") dt2$sigma11 <-as.numeric(levels(dt2$sigma11))[as.integer(dt2$sigma11) ]
if (class(dt2$sva00)=="factor") dt2$sva00 <-as.numeric(levels(dt2$sva00))[as.integer(dt2$sva00) ]
if (class(dt2$sva11)=="factor") dt2$sva11 <-as.numeric(levels(dt2$sva11))[as.integer(dt2$sva11) ]
if (class(dt2$nitrate_isus)=="factor") dt2$nitrate_isus <-as.numeric(levels(dt2$nitrate_isus))[as.integer(dt2$nitrate_isus) ]
if (class(dt2$xderv1)!="factor") dt2$xderv1<- as.factor(dt2$xderv1)
if (class(dt2$xderv2)!="factor") dt2$xderv2<- as.factor(dt2$xderv2)
if (class(dt2$xderv3)!="factor") dt2$xderv3<- as.factor(dt2$xderv3)
if (class(dt2$xderv4)!="factor") dt2$xderv4<- as.factor(dt2$xderv4)

# Here is the structure of the input data frame:
str(dt2)                            
attach(dt2)                            
# The analyses below are basic descriptions of the variables. After testing, they should be replaced.                 

summary(Cruise)
summary(Station)
summary(Type)
summary(mon.per.day.per.yr)
summary(hh.colon.mm)
summary(Lon..paren.degE.paren.)
summary(Lat..paren.degN.paren.)
summary(Bot..Depth..bracket.m.bracket.)
summary(Depth.SW..bracket.m.bracket.)
summary(Decimal.Year..bracket.yr.bracket.)
summary(lon)
summary(lat)
summary(Pressure..bracket.db.bracket.)
summary(T00)
summary(T11)
summary(C00)
summary(C11)
summary(scans.per.bin)
summary(Fluor)
summary(par)
summary(cpar)
summary(spar)
summary(v0)
summary(v1)
summary(v2)
summary(v3)
summary(v4)
summary(v5)
summary(v6)
summary(v7)
summary(Trans..bracket..percent..bracket.)
summary(Beam.C)
summary(DIssolved.Oxygen..bracket.umol.per.kg.bracket.)
summary(DIssolved.Oxygen..bracket.ml.per.l.bracket.)
summary(O2.Beckman.YSI..bracket.umol.per.kg.bracket.)
summary(O2.Beckman.YSI..bracket.ml.per.l.bracket.)
summary(O2.Beckman.YSI.Temperature..bracket.C.bracket.)
summary(potemp00)
summary(potemp11)
summary(sal00..bracket.PSU.bracket.)
summary(sal11..bracket.SPU.bracket.)
summary(sigma00)
summary(sigma11)
summary(sva00)
summary(sva11)
summary(nitrate_isus)
summary(xderv1)
summary(xderv2)
summary(xderv3)
summary(xderv4) 
detach(dt2)               
         

infile3  <- "https://pasta.lternet.edu/package/data/eml/knb-lter-sbc/1001/7/5db7cc69067b0d1722b8cac0c2d87045" 
infile3 <- sub("^https","http",infile3) 
 dt3 <-read.csv(infile3,header=F 
          ,skip=1
            ,sep=";"  
                ,quot='"' 
        , col.names=c(
                    "Cruise",     
                    "Station",     
                    "Type",     
                    "mon.per.day.per.yr",     
                    "hh.colon.mm",     
                    "Lon..paren.degE.paren.",     
                    "Lat..paren.degN.paren.",     
                    "Bot..Depth..bracket.m.bracket.",     
                    "Depth..bracket.target.m.bracket.",     
                    "Depth..bracket.actual.m.bracket.",     
                    "Lon_degE",     
                    "Lat_degN",     
                    "consecutive.sample.number",     
                    "cast.file.name",     
                    "rosette.bottle.number",     
                    "Incubation.Light.Level..bracket..percent..bracket.",     
                    "PO4..bracket.umol.per.l.bracket.",     
                    "Si..bracket.umol.per.l.bracket.",     
                    "NO2.plus.NO3..bracket.umol.per.l.bracket.",     
                    "NO2..bracket.umol.per.l.bracket.",     
                    "NH4..bracket.umol.per.l.bracket.",     
                    "POC..bracket.umol.per.l.bracket.",     
                    "PON..bracket.umol.per.l.bracket.",     
                    "13C",     
                    "15.N",     
                    "BSi",     
                    "LSi",     
                    "14C.light",     
                    "14C.dark",     
                    "14C.production",     
                    "integrated.primary.production",     
                    "Chl.total..bracket.ug.per.l.bracket.",     
                    "Chl.a..bracket.ug.per.l.bracket.",     
                    "Phaeopigments..bracket.ug.per.l.bracket.",     
                    "Pressure_btl",     
                    "T00_btl",     
                    "T11_btl",     
                    "C00_btl",     
                    "C11_btl",     
                    "sal00_btl",     
                    "sigma00_btl",     
                    "Fluor_btl",     
                    "Trans_btl",     
                    "Beam_C_btl",     
                    "DissolvedOxygen_btl..bracket.umol.per.kg.bracket.",     
                    "DissolvedOxygen_btl..bracket.ml.per.l.bracket.",     
                    "par_btl",     
                    "cpar_btl",     
                    "spar_btl",     
                    "comments"    ), check.names=TRUE)
               
  
# Fix any interval or ratio columns mistakenly read in as nominal and nominal columns read as numeric or dates read as strings
                
if (class(dt3$Cruise)!="factor") dt3$Cruise<- as.factor(dt3$Cruise)
if (class(dt3$Station)!="factor") dt3$Station<- as.factor(dt3$Station)
if (class(dt3$Type)!="factor") dt3$Type<- as.factor(dt3$Type)
if (class(dt3$Lon..paren.degE.paren.)=="factor") dt3$Lon..paren.degE.paren. <-as.numeric(levels(dt3$Lon..paren.degE.paren.))[as.integer(dt3$Lon..paren.degE.paren.) ]
if (class(dt3$Lat..paren.degN.paren.)=="factor") dt3$Lat..paren.degN.paren. <-as.numeric(levels(dt3$Lat..paren.degN.paren.))[as.integer(dt3$Lat..paren.degN.paren.) ]
if (class(dt3$Bot..Depth..bracket.m.bracket.)=="factor") dt3$Bot..Depth..bracket.m.bracket. <-as.numeric(levels(dt3$Bot..Depth..bracket.m.bracket.))[as.integer(dt3$Bot..Depth..bracket.m.bracket.) ]
if (class(dt3$Depth..bracket.target.m.bracket.)=="factor") dt3$Depth..bracket.target.m.bracket. <-as.numeric(levels(dt3$Depth..bracket.target.m.bracket.))[as.integer(dt3$Depth..bracket.target.m.bracket.) ]
if (class(dt3$Depth..bracket.actual.m.bracket.)=="factor") dt3$Depth..bracket.actual.m.bracket. <-as.numeric(levels(dt3$Depth..bracket.actual.m.bracket.))[as.integer(dt3$Depth..bracket.actual.m.bracket.) ]
if (class(dt3$Lon_degE)=="factor") dt3$Lon_degE <-as.numeric(levels(dt3$Lon_degE))[as.integer(dt3$Lon_degE) ]
if (class(dt3$Lat_degN)=="factor") dt3$Lat_degN <-as.numeric(levels(dt3$Lat_degN))[as.integer(dt3$Lat_degN) ]
if (class(dt3$consecutive.sample.number)=="factor") dt3$consecutive.sample.number <-as.numeric(levels(dt3$consecutive.sample.number))[as.integer(dt3$consecutive.sample.number) ]
if (class(dt3$cast.file.name)!="factor") dt3$cast.file.name<- as.factor(dt3$cast.file.name)
if (class(dt3$rosette.bottle.number)!="factor") dt3$rosette.bottle.number<- as.factor(dt3$rosette.bottle.number)
if (class(dt3$Incubation.Light.Level..bracket..percent..bracket.)=="factor") dt3$Incubation.Light.Level..bracket..percent..bracket. <-as.numeric(levels(dt3$Incubation.Light.Level..bracket..percent..bracket.))[as.integer(dt3$Incubation.Light.Level..bracket..percent..bracket.) ]
if (class(dt3$PO4..bracket.umol.per.l.bracket.)=="factor") dt3$PO4..bracket.umol.per.l.bracket. <-as.numeric(levels(dt3$PO4..bracket.umol.per.l.bracket.))[as.integer(dt3$PO4..bracket.umol.per.l.bracket.) ]
if (class(dt3$Si..bracket.umol.per.l.bracket.)=="factor") dt3$Si..bracket.umol.per.l.bracket. <-as.numeric(levels(dt3$Si..bracket.umol.per.l.bracket.))[as.integer(dt3$Si..bracket.umol.per.l.bracket.) ]
if (class(dt3$NO2.plus.NO3..bracket.umol.per.l.bracket.)=="factor") dt3$NO2.plus.NO3..bracket.umol.per.l.bracket. <-as.numeric(levels(dt3$NO2.plus.NO3..bracket.umol.per.l.bracket.))[as.integer(dt3$NO2.plus.NO3..bracket.umol.per.l.bracket.) ]
if (class(dt3$NO2..bracket.umol.per.l.bracket.)=="factor") dt3$NO2..bracket.umol.per.l.bracket. <-as.numeric(levels(dt3$NO2..bracket.umol.per.l.bracket.))[as.integer(dt3$NO2..bracket.umol.per.l.bracket.) ]
if (class(dt3$NH4..bracket.umol.per.l.bracket.)=="factor") dt3$NH4..bracket.umol.per.l.bracket. <-as.numeric(levels(dt3$NH4..bracket.umol.per.l.bracket.))[as.integer(dt3$NH4..bracket.umol.per.l.bracket.) ]
if (class(dt3$POC..bracket.umol.per.l.bracket.)=="factor") dt3$POC..bracket.umol.per.l.bracket. <-as.numeric(levels(dt3$POC..bracket.umol.per.l.bracket.))[as.integer(dt3$POC..bracket.umol.per.l.bracket.) ]
if (class(dt3$PON..bracket.umol.per.l.bracket.)=="factor") dt3$PON..bracket.umol.per.l.bracket. <-as.numeric(levels(dt3$PON..bracket.umol.per.l.bracket.))[as.integer(dt3$PON..bracket.umol.per.l.bracket.) ]
if (class(dt3$13C)=="factor") dt3$13C <-as.numeric(levels(dt3$13C))[as.integer(dt3$13C) ]
if (class(dt3$15.N)=="factor") dt3$15.N <-as.numeric(levels(dt3$15.N))[as.integer(dt3$15.N) ]
if (class(dt3$BSi)=="factor") dt3$BSi <-as.numeric(levels(dt3$BSi))[as.integer(dt3$BSi) ]
if (class(dt3$LSi)=="factor") dt3$LSi <-as.numeric(levels(dt3$LSi))[as.integer(dt3$LSi) ]
if (class(dt3$14C.light)=="factor") dt3$14C.light <-as.numeric(levels(dt3$14C.light))[as.integer(dt3$14C.light) ]
if (class(dt3$14C.dark)=="factor") dt3$14C.dark <-as.numeric(levels(dt3$14C.dark))[as.integer(dt3$14C.dark) ]
if (class(dt3$14C.production)=="factor") dt3$14C.production <-as.numeric(levels(dt3$14C.production))[as.integer(dt3$14C.production) ]
if (class(dt3$integrated.primary.production)=="factor") dt3$integrated.primary.production <-as.numeric(levels(dt3$integrated.primary.production))[as.integer(dt3$integrated.primary.production) ]
if (class(dt3$Chl.total..bracket.ug.per.l.bracket.)=="factor") dt3$Chl.total..bracket.ug.per.l.bracket. <-as.numeric(levels(dt3$Chl.total..bracket.ug.per.l.bracket.))[as.integer(dt3$Chl.total..bracket.ug.per.l.bracket.) ]
if (class(dt3$Chl.a..bracket.ug.per.l.bracket.)=="factor") dt3$Chl.a..bracket.ug.per.l.bracket. <-as.numeric(levels(dt3$Chl.a..bracket.ug.per.l.bracket.))[as.integer(dt3$Chl.a..bracket.ug.per.l.bracket.) ]
if (class(dt3$Phaeopigments..bracket.ug.per.l.bracket.)=="factor") dt3$Phaeopigments..bracket.ug.per.l.bracket. <-as.numeric(levels(dt3$Phaeopigments..bracket.ug.per.l.bracket.))[as.integer(dt3$Phaeopigments..bracket.ug.per.l.bracket.) ]
if (class(dt3$Pressure_btl)=="factor") dt3$Pressure_btl <-as.numeric(levels(dt3$Pressure_btl))[as.integer(dt3$Pressure_btl) ]
if (class(dt3$T00_btl)=="factor") dt3$T00_btl <-as.numeric(levels(dt3$T00_btl))[as.integer(dt3$T00_btl) ]
if (class(dt3$T11_btl)=="factor") dt3$T11_btl <-as.numeric(levels(dt3$T11_btl))[as.integer(dt3$T11_btl) ]
if (class(dt3$C00_btl)=="factor") dt3$C00_btl <-as.numeric(levels(dt3$C00_btl))[as.integer(dt3$C00_btl) ]
if (class(dt3$C11_btl)=="factor") dt3$C11_btl <-as.numeric(levels(dt3$C11_btl))[as.integer(dt3$C11_btl) ]
if (class(dt3$sal00_btl)=="factor") dt3$sal00_btl <-as.numeric(levels(dt3$sal00_btl))[as.integer(dt3$sal00_btl) ]
if (class(dt3$sigma00_btl)=="factor") dt3$sigma00_btl <-as.numeric(levels(dt3$sigma00_btl))[as.integer(dt3$sigma00_btl) ]
if (class(dt3$Fluor_btl)=="factor") dt3$Fluor_btl <-as.numeric(levels(dt3$Fluor_btl))[as.integer(dt3$Fluor_btl) ]
if (class(dt3$Trans_btl)=="factor") dt3$Trans_btl <-as.numeric(levels(dt3$Trans_btl))[as.integer(dt3$Trans_btl) ]
if (class(dt3$Beam_C_btl)=="factor") dt3$Beam_C_btl <-as.numeric(levels(dt3$Beam_C_btl))[as.integer(dt3$Beam_C_btl) ]
if (class(dt3$DissolvedOxygen_btl..bracket.umol.per.kg.bracket.)=="factor") dt3$DissolvedOxygen_btl..bracket.umol.per.kg.bracket. <-as.numeric(levels(dt3$DissolvedOxygen_btl..bracket.umol.per.kg.bracket.))[as.integer(dt3$DissolvedOxygen_btl..bracket.umol.per.kg.bracket.) ]
if (class(dt3$DissolvedOxygen_btl..bracket.ml.per.l.bracket.)=="factor") dt3$DissolvedOxygen_btl..bracket.ml.per.l.bracket. <-as.numeric(levels(dt3$DissolvedOxygen_btl..bracket.ml.per.l.bracket.))[as.integer(dt3$DissolvedOxygen_btl..bracket.ml.per.l.bracket.) ]
if (class(dt3$par_btl)=="factor") dt3$par_btl <-as.numeric(levels(dt3$par_btl))[as.integer(dt3$par_btl) ]
if (class(dt3$cpar_btl)=="factor") dt3$cpar_btl <-as.numeric(levels(dt3$cpar_btl))[as.integer(dt3$cpar_btl) ]
if (class(dt3$spar_btl)=="factor") dt3$spar_btl <-as.numeric(levels(dt3$spar_btl))[as.integer(dt3$spar_btl) ]
if (class(dt3$comments)!="factor") dt3$comments<- as.factor(dt3$comments)

# Here is the structure of the input data frame:
str(dt3)                            
attach(dt3)                            
# The analyses below are basic descriptions of the variables. After testing, they should be replaced.                 

summary(Cruise)
summary(Station)
summary(Type)
summary(mon.per.day.per.yr)
summary(hh.colon.mm)
summary(Lon..paren.degE.paren.)
summary(Lat..paren.degN.paren.)
summary(Bot..Depth..bracket.m.bracket.)
summary(Depth..bracket.target.m.bracket.)
summary(Depth..bracket.actual.m.bracket.)
summary(Lon_degE)
summary(Lat_degN)
summary(consecutive.sample.number)
summary(cast.file.name)
summary(rosette.bottle.number)
summary(Incubation.Light.Level..bracket..percent..bracket.)
summary(PO4..bracket.umol.per.l.bracket.)
summary(Si..bracket.umol.per.l.bracket.)
summary(NO2.plus.NO3..bracket.umol.per.l.bracket.)
summary(NO2..bracket.umol.per.l.bracket.)
summary(NH4..bracket.umol.per.l.bracket.)
summary(POC..bracket.umol.per.l.bracket.)
summary(PON..bracket.umol.per.l.bracket.)
summary(13C)
summary(15.N)
summary(BSi)
summary(LSi)
summary(14C.light)
summary(14C.dark)
summary(14C.production)
summary(integrated.primary.production)
summary(Chl.total..bracket.ug.per.l.bracket.)
summary(Chl.a..bracket.ug.per.l.bracket.)
summary(Phaeopigments..bracket.ug.per.l.bracket.)
summary(Pressure_btl)
summary(T00_btl)
summary(T11_btl)
summary(C00_btl)
summary(C11_btl)
summary(sal00_btl)
summary(sigma00_btl)
summary(Fluor_btl)
summary(Trans_btl)
summary(Beam_C_btl)
summary(DissolvedOxygen_btl..bracket.umol.per.kg.bracket.)
summary(DissolvedOxygen_btl..bracket.ml.per.l.bracket.)
summary(par_btl)
summary(cpar_btl)
summary(spar_btl)
summary(comments) 
detach(dt3)               

View(dt3)
write.csv(dt3)

library(tidyverse)
library(leaflet)

ppdf <- dt3 %>% 
  select(Cruise, Station, mon.per.day.per.yr, integrated.primary.production)

stationdf <- dt3 %>% 
  select(Station, Lon..paren.degE.paren., Lat..paren.degN.paren.) %>% 
  group_by(Station) %>% 
  filter(row_number() == 1) %>% 
  rename("longitude" = Lon..paren.degE.paren., "latitude" = Lat..paren.degN.paren.)

stationmap <- leaflet(stationdf) %>% #you can have leaflet() by itself but adding options can determine size of min and max zoom
  addTiles() %>% #this bring up a world map
  addMarkers(lng = ~longitude, lat = ~latitude, popup = "Zooming Maps")
stationmap

