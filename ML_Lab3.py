'''
1. Consider the IRIS data set. Design a 3-way classifier to classify the 4-D feature
vectors using a parametric method. You may assume that the classes are Gaussian
distributed and the prior probabilities are equal. Use a 10-fold cross-validation
approach and report the average confusion matrix.

2. Use principal component analysis to reduce the dimensionality of the feature
vectors to 2. Repeat Problem 1.
'''




from __future__ import print_function
from sklearn import *
def validate(data,target):
	cross=cross_validation.KFold(len(data),n_folds=10,shuffle=True)
	model=naive_bayes.GaussianNB()
	model.fit(data,target)
	pmodel=model.predict(data)
	conf_mat=metrics.confusion_matrix(pmodel,target)
	print ("\n\n  The confusion Matrix is\n------------------------------\n")
	for i in conf_mat:
		for value in i:
			print (" %2s%2s|%2s"%(value," "," "),end=" ")
		print()
iris=datasets.load_iris()
data,target=iris['data'],iris['target']
print("\nBefore PCA")
validate(data,target)
PCA_model=decomposition.PCA(n_components=2)
reduced=PCA_model.fit_transform(data)
print("After PCA")
validate(reduced,target)