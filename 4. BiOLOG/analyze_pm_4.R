##code from Vaas, Lea AI, et al. "opm: an R package for analysing OmniLog® phenotype microarray data." Bioinformatics 29.14 (2013): 1823-1824.
##code from Vaas, Lea AI, Benjamin Hofner, and Markus Göker. "Working with substrate information in opm."

library(opm)

pm <- read_opm("All_PM__allHours_kinetic.csv",convert = 'grp')
pm.meta <- collect_template(pm, include= '*.csv')

########## Growth curve for each plate 
pm1 <- pm$PM01
xy_plot(pm1,col=  c('gold1',  'deepskyblue3','dodgerblue2', 'indianred2','goldenrod2','orangered1'))
pm2 <- pm$PM02
xy_plot(pm2,col=  c('gold1',  'deepskyblue3','dodgerblue2', 'indianred2','goldenrod2','orangered1'))
