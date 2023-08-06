height = c(165, 175, 160, 180, 170,172, 168, 185, 155, 163, 177, 162, 170, 182, 169, 175, 176, 167, 158, 179, 165, 171, 174, 168, 176)
weight = c(60, 70, 55, 75, 65,68, 62, 78, 58, 61, 72, 56, 63, 76, 68, 70, 71, 66, 60, 74, 65, 69, 72, 62, 70)
df = data.frame(Height = height, Weight = weight)

model=lm(Weight~Height,df)

plot(df$Height,df$Weight,abline(model),col="red",pch=16,cex=1.5,xlab = "Height",ylab="Weight")
