---
title: Elements of Statistical Learning - book notes
layout: default-foundation-20210515
date: 2021-09-30
tags: math booknotes
---

<h2>{{page.title}}</h2>

<div class="callout">
	<h3>
		This post is in progress. It will be fleshed out as time permits.
	</h3>
</div>

{% assign ESC = "/pdfs/math/book-elements-of-statistical-learning-ESL.pdf" %}


- [Cover]({{ESC}}#page=1)
- [Preface]({{ESC}}#page=8)
- [Contents]({{ESC}}#page=10)
- [Intro]({{ESC}}#page=20)

- [Supervised Learning]({{ESC}}#page=28)

	Variable types & terminology,
	Basic approaches (least squares & nearest neighbors),
	Decision theory,
	Local methods in high dimensions,
	Statistical models, supervised learning & function approximation,
	Structured regression models,
	Classes of restricted estimators
	Model selection & bias-variance tradeoff

- [Linear Regression]({{ESC}}#page=62)

	Intro,
	Least squares,
	Subset selection,
	Shrinkage,
	Derived input directions,
	Multiple-outcome shrinkage & selection,
	Lasso & related path algorithms,
	Computation factors

- [Linear Classification]({{ESC}}#page=120)

	Intro,
	Indicator matrix,
	Linear discriminant analysis,
	Logistic regression,
	Separating hyperplanes

- [Basis Expansion & Regularization]({{ESC}}#page=158)

	Intro,
	Piecewise polynomials & splines,
	Filtering & feature extraction,
	Smoothing splines,
	Auto selection of smoothing paramters,
	Non-parametric logistic regression,
	Multi-dimensional splines,
	Regularization & reproducing Kernel Hilbert spaces,
	Wavelet smoothing

- [Kernel Smoothing]({{ESC}}#page=210)

	1-D kernel smoothers,
	Kernel widths,
	Local regression,
	Structured local regression,
	Local likelihood & other models,
	Kernel density estimation (KDE) & classification,
	Radial basis functions & kernels,
	Mixture models,
	Computational factors

- [Model Assessment & Selection]({{ESC}}#page=238)

	Intro,
	Bias, variance, model complexity,
	Bias-variance decomposition,
	Training error rate optimism,
	In-sample prediction error estimates,
	Effective number of parameters,
	Bayesian approach & BIC,
	Max description length,
	Vapnik-Chervokenkis dimension,
	Cross validation,
	Bootstrap methods

- [Model Inference & Averaging]({{ESC}}#page=280)

	Intro,
	Bootstrap & max likelihood methods,
	Bayes methods,
	Bootstrap-Bayes relationship,
	EM algorithm,
	MCM for posterior sampling,
	Bagging,
	Model averaging & stacking
	Stochastic search: bumping

- [Additive Models, Trees, Related Methods]({{ESC}}#page=314)

	Generalized additive methods,
	Tree methods,
	PRIM: bump hunting,
	MARS: multivariate adaptive regression splines,
	Hierarchical mixtures of experts,
	Missing data,
	Computational factors

- [Boosting & Additive Trees]({{ESC}}#page=356)

	Boosting,
	Boosting Fits an Additive Model,
	Forward Stagewise Additive Modeling,
	Exponential Loss & AdaBoost,
	Why exponential loss,
	Loss functions,
	Std data mining procedures,
	Example: Spam data,
	Boosting trees,
	Gradient boosting,
	Right-sized trees for boosting,
	Regularization,
	Interpretation,
	Illustrations

- [Neural Nets]({{ESC}}#page=408)

	Intro,
	Projection pursuit regression,
	Neural nets,
	Fitting,
	Training issues,
	Examples & discussion,
	Bayes NNs,
	Computational factors

- [Support Vector Machines & Flexible Discriminants]({{ESC}}#page=436)

	Intro,
	Support Vector Classifier,
	Support Vector Machines & Kernels,
	Generalizing Linear Discriminant Analysis (LDA),
	Flexible Discriminant Analysis,
	Penalized Discriminant Analysis,
	Mixture Discriminant Analysis

- [Prototype Methods & Nearest Neighbors]({{ESC}}#page=478)

	Intro,
	Prototype methods,
	KNN classifiers,
	Adaptive nearest-neighbor methods,
	Computational factors

- [Unsupervised Learning]({{ESC}}#page=504)

	Intro,
	Association Rules,
	Cluster Analysis,
	Self-Organizing Maps,
	Principal Components/Curves/Surfaces,
	Non-Negative Matrix Factorization (NNMF),
	Independent Component Analysis (ICA),
	Multidimensional Scaling (MDS),
	Nonlinear dimension reduction,
	Google PageRank

- [Random Forests]({{ESC}}#page=606)

	Intro,
	Definition,
	Details,
	Analysis

- [Ensembles]({{ESC}}#page=624)

	Intro,
	Boosting & regularization paths,
	Learning ensembles

- [Undirected graphical models]({{ESC}}#page=644)

	Intro,
	Markov graphs,
	UGMs for continuous variables,
	UGMs for discrete variables

- [High-dimensional problems]({{ESC}}#page=668)

	When p>>N,
	Diagonal LDA & nearest shrunken centroids,
	Linear classifiers & quadratic regularization,
	L1 regularization,
	Classification when features are unavailable,
	High-D regression,
	Feature assessment
