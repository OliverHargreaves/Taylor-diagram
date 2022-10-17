# Taylor diagram on for the methods comparison

# Packages
library(readxl)
library(plotrix)

# ET data
ET.data=read_xlsx('ET.xlsx')

# Taylor diagram
taylor.diagram(ref=ET.data$ETa, model=ET.data$ET.A, main='',
               ngamma=5, gamma=3, sd.arcs=T, pch=4, pcex=1.5, col='olivedrab', bg='olivedrab')
taylor.diagram(ref=ET.data$ETa, model=ET.data$ET.B, add=T, pch=22, pcex=1.5, col='firebrick')
taylor.diagram(ref=ET.data$ETa, model=ET.data$ET.C, add=T, pch=23, pcex=1.5, col='gold2')
taylor.diagram(ref=ET.data$ETa, model=ET.data$ET.D, add=T, pch=24, pcex=1.5, col='royalblue3')
taylor.diagram(ref=ET.data$ETa, model=ET.data$ET.E, add=T, pch=25, pcex=1.5, col='purple')
taylor.diagram(ref=ET.data$ETa, model=ET.data$ET.F, add=T, pch=8, pcex=1.5, col='orange')
taylor.diagram(ref=ET.data$ETa, model=ET.data$ET.SMET, add=T, pch=10, pcex=1.5, col='violetred')

legend('topright', inset=-0.1, pch=c(1,4,22,23,24,25,8,10), pt.cex=1.5, bty='n',
       legend=c('ETa','Method A', 'Method B', 'Method C', 'Method D', 'Method E', 'Method F', 'SMET model'),
       col=c('black','olivedrab', 'firebrick', 'gold2', 'royalblue3', 'purple', 'orange', 'violetred'))

