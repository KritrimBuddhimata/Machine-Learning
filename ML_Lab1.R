'''
1)Consider the four-dimensional data set "IRIS data". The data set contains 3 classes
of 50 instances each, where each class refers to a type of iris plant. The four
attributes are: sepal length in cm, sepal width in cm, petal length in cm, and petal
width in cm. Show a scatter plot of the first two attributes. Use different symbols to
plot data from different classes.
'''
data<-iris
plot(data$Sepal.Length, data$Sepal.Width,pch=c(2,8,3)[unclass(data$Species)],main="Edgar
Andersons Iris Data",col= c('red','black','blue'))
legend(1,2.4,c('Setosa','Versicolor','Virginia'),pch=c(2,8,3))
legend("topleft",legend=c('Setosa','Versicolor','Virginia'),pch=c(2,8,3))


'''
2)Show the marginal distribution of Attribute 3 for each class separately, using a
suitable bin size.
'''
data<-iris
legend("topleft",legend=c('Setosa','Versicolor','Virginia'),pch=c(2,8,3))
hist(data$Petal.Length[data$Species=='setosa'],pch=c(2),breaks=10,xlab='Petal Length',main='Setosa',ylim=c(0,20))
hist(data$Petal.Length[data$Species=='versicolor'],pch=c(8),breaks=10,xlab='Petal Length',main='Versicolor',ylim=c(0,20))
hist(data$Petal.Length[data$Species=='virginica'],pch=c(2),breaks=10,xlab='Petal Length',main='Virginica',ylim=c(0,20))par(mfrow=c(3,1))
