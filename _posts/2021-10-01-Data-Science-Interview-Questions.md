---
title: Data Science Interview Q&A
layout: default-foundation-20210515
date: 2021-10-01
tags: data-science machine-learning
---

<div class="callout">
<h2>{{page.title}}</h2></div>

__Explain Logistic Regression.__
   - Logistic Regression is a popular method for classification. It models the probability of the default class.
   - It uses the __sigmoid function__ to map any real-valued number to a probability 0-->1 to predict the output class. 
   - Two types: __Binary__ (2 categories) and __Multinomial__ (3+ categories).
   - Assumptions:
      - __Binary__ logistic regression requires the dependent variable to be binary. 
      - Variables should be __independent__ of each other. (the model should have little or no multicollinearity.)
      - Independent variables should be linearly related to the log odds.

---

__Explain Linear Regression.__
   - Finds a relationship between a predictor (independent) variable and a response (dependent) variable. Both are continuous values.
   - Assumptions: 
      - __Linear relationship__: Between the dependent and independent variables.
      - __Multivariate normality__: Multiple regression assumes that the residuals are normally distributed.
      - No or minimal __multicollinearity__ between independent variables.
      - __No autocorrelation__: the correlation between the values of the same variables is based on related objects. It violates the assumption of instance independence, which underlies most of the conventional models.
      - __Homoscedasticity__: the variance around the regression line is the same for all values of the predictor variable.

---

__How do you split your data between training and validation?__
   - Ensure the validation set is large enough to yield statistically meaningful results.
   - The validation set should be representative of the entire data set.
   - __K-folds__ validation is a good choice. It creates multiple splits of the dataset into training and validation sets. This offers various samples of data and ultimately reduces the chances of overfitting.

---

__Describe Binary Classification.__
   - Binary classification predicts the class of a set of data points. 
   - The classes are also known as targets/ labels. 
   - It approximates a mapping function (f) from inputs (X) to discrete output variables (y). 
   - For example, spam detection in email service providers is a binary classification since there are only 2 classes: spam and not spam.

---

__Describe decision trees.__
   - A decision tree classifier stratifies a predictor space into multiple regions. Each such region contains a subset of the training dataset. 
   - To predict the outcome for a given observation, __determine the region it belongs to__. Once identified, the outcome class is predicted as being the same as the __mode__ (most common) of the outcome classes of all the training observations that are included in that region. 
   - The rules used to stratify the predictor space can be graphically described in a tree-like flow-chart, hence the name of the algorithm.
   - Decision tree classifiers can handle qualitative predictors without the need to create dummy variables.
   - Missing values are not a problem. 
   - Decision trees can also be used for regression models. However, high variance can be a problem.

---

__What are some classification metrics?__
   - Confusion Matrix
   - Accuracy
   - Precision and Recall
   - F1 Score
   - AUC-ROC Curve.

   - Selecting a performance metric depends on the question and dataset. 
      - If the dataset is balanced - __accuracy__ would be a good measure.
      - __Confusion matrix__ is a good alternative if you want to know the cost of False Positives and False Negatives.

---

__What is a cost function?__
   - Cost functions are used to learn the parameters in an ML model such that the total error is minimized. 
   - It measures a model’s __ability to estimate the relationship between dependent and independent variables__. 
   - It is typically expressed as a difference between the predicted and actual values. Every algorithm can have its own cost function depending on the problem.

---

__What's the difference between convex and non-convex cost functions?__
   - A convex function has __one global minimum__. Optimization algorithms won't get stuck in a local (non-global) minimum. An example is x^2. It can easily converge at the global minimum.
   - A non-convex function has __multiple local minimums__. Its shape can be visualized with multiple 'valleys' that depict local minima. Algorithms can get stuck in local minimums - it can take a lot of time to identify whether the problem has no solution or if the solution is global. An example is x^6 + x^3 -x^2.

---

__Why is it important to understand the bias-variance trade off?__
   - Bias and Variance are part of model prediction errors. 
   - A model with _high bias_ pays little attention to training data and __oversimplifies the model__ (underfitting). 
   - A model with _high variance_ pays too much attention to training data and __does not generalize on unseen data__ (overfitting).
   - Underfitting/Bias error is the difference between the expected/average prediction of the model and the true value.
      - The model building/prediction process should be repeated with new variations of the data. 
      - Due to randomness in the underlying data sets, we will have a set of predictions for each point. 
      - Bias measures how much the predictions deviate from the true value we are trying to predict.
   - Overfitting/Variance error is the variability of model prediction for a given data point. 
      - The model prediction is repeated for various data sets. 
      - It's an indicator of a model’s sensitivity to small variations. It will return large prediction changes for small changes in training data.
      - There is no analytical way to know when we can achieve the bias-variance tradeoff.

 ---

__What is regularization? What are the differences between L1 and L2 regularization?__
   - Regularization reduces error by fitting a function to a training set - thereby avoiding overfitting.
   - The difference between L1 and L2 regularization is the __penalty term__. 
      - __Lasso__ Regression (Least Absolute Shrinkage and Selection Operator, __L1__) adds an _absolute value of magnitude_ coefficient as a penalty term to the loss function. 
      - __Ridge__ regression (L2) adds a _squared magnitude_ of coefficient as a penalty term to the loss function. 
      - Ridge also sets the weights of some features to small values.
      - Lasso shrinks the less important features coefficient to zero (removing some features altogether). 
   - This works well for feature selection/dimensionality reduction when we have a huge number of features.

---

__What are exploding gradients?__
   - Exploding gradients appear during training when gradients are propagated back through the layers.
      - The gradients are being continuously updated via matrix multiplication. If they have values >1, they will eventually become so large that they overflow - resulting in NaN/undefined values.

---

__Is it necessary to use activation functions?__
   - Activation functions __add non-linearity__ to a network. Otherwise input signals will be mapped to an output using a linear function (a polynomial of one degree). 
      - Linear functions are not able to capture complex functional data mappings. 
      - However, this is possible with the use of nonlinear functions which have a degree of >1.

---

__How is a box plot different from a histogram?__
   - Boxplots display the distribution of data based on the Minimum, First Quartile, Median, Third Quartile, and Maximum. 
      - Each box shows the range of values __from the first quartile (bottom) to the third quartile (top)__ of the box. 
      - A line in the middle of the box occurs at the __median__ of all the values. 
      - Plot “whiskers” display the __maximum and minimum__. They describe the variability and dispersion of data. They also display outliers and describe the symmetry and skewness of the data.
   - Histograms show the frequency distribution of __continuous data__ using rectangles. 
      - It is similar to a bar graph, however, the __bars are adjacent__. 
      - Data is split into intervals and the frequency of instances in each interval is plotted. 
      - It describes the distribution of a graph, its skewness, and indicates the presence of outliers.

---

__What is cross validation?__
   - Cross-validation evaluates predictive models. It partitions a dataset into a training set to train the model and a test set to evaluate it. 
   - __k-fold cv__: the original sample is randomly partitioned into k equally sized subsamples.
      - A single subsample is retained as the __validation data__ for testing the model.
      - The remaining k-1 subsamples are used as __training data__. 
      - The cross-validation process is repeated k times, with __each of k subsamples used once for validation__.
      - The k results can be averaged to produce a single estimation. This allows all observations to be used for both training and validation, and each observation is used for validation exactly once. It helps in reducing bias because cross validation ensures that every observation from the original dataset has the chance of appearing in training and test set.

---

__What are false positives and false negatives?__
   - __False positive__: when a model incorrectly predicts an outcome to be positive when it should have been negative. 
   - __False negative__: when an outcome is incorrectly predicted to be negative. 
   - Both are used as evaluation metrics for classification algorithms.


---

__Explain how SVM works__.
   - SVM is a classification and regression algorithm. It identifies a __hyperplane__ which separates the classes in the data. 
   - A hyperplane is a geometric entity with a dimension of 1 less than its surrounding (ambient) space.
      - If an SVM is asked to classify a two-dimensional dataset, it will use a 1D hyperplane (a line).
      - Classes in 3D data will be separated by a 2D plane.
      - Nth dimensional data will be separated by a N-1 dimension line.
   - SVM is also called a margin classifier because it draws a margin between classes.
   - __Advantages__:
      - It has a regularization parameter, which can be tweaked to avoid over-fitting.
      - SVM uses the __kernel trick__: you can build a modified version of a model depending on the problem complexity.
      - It works well with less data.
   - __Disadvantages__:
      - Choosing a kernel is tricky. Kernel models are usually quite sensitive to over-fitting so a lot of knowledge is required to make sound decisions.
      - It is difficult to tune the hyperparameters such that the error is the minimum.

---

__What techniques can be used to evaluate a Machine Learning model?__
   - Regression:
      - Mean Absolute Error
      - Mean Squared Error
      - R square
      - Adjusted R square
      - Root Mean Squared Logarithmic Error
   - Classification:
      - Classification Accuracy
      - Logarithmic Loss
      - Precision
      - Recall
      - F1 Score
      - Confusion Matrix
      - Receiver Operating Characteristics (ROC) curve
      - Area under Curve (AUC)
      - Gini coefficient

---

__Why is overfitting a problem? What steps can you take to avoid it?__
   - Overfitting is defined as when a model __fits too closely__ on the training data.
      - aka it has "memorized" the data & performs poorly on unseen data because it's not generalized. 
      - An overfitted model learns the details of training data such that noise is picked up and learned as concepts. 
   - Overfitting can be reduced by using the following:
      - __Resampling__ techniques such as k-fold cross validation that creates multiple train-test splits,
      - Using __Ensembling__ techniques that combines predictions from separate models;
      - Using __Regularization__ to add a penalty to the cost function - making models more flexible

---

__Describe how to detect anomalies.__
   - Anomaly detection identifies unusual patterns that do not conform to expected behavior, called outliers. 
   - Typically, anomalous data can be connected to a problem or rare event such as e.g. bank fraud, medical problems, structural defects, malfunctioning equipment, etc.
   - The simplest approach to identifying anomalies is to __use simple statistical techniques__ and flag the data points that deviate from common statistical properties of a distribution, including mean, median, mode, and quantiles.
   - Statistical approaches could be difficult in higher dimensions. Machine learning techniques could be used. Following are the popular methods used to detect anomalies:
      - Isolation Forest
      - One Class SVM
      - PCA-based Anomaly detection
      - FAST-MCD
      - Local Outlier Factor

   - Isolation Forests (as an example solution) build a Random Forest in which each Decision Tree is grown randomly. 
      - At each node, it randomly picks a feature & random threshold value (between the min and max value) to split the dataset in two. 
      - The dataset gradually gets chopped into pieces this way, until all instances end up isolated from the other instances.
      - Random partitioning produces noticeably shorter paths for anomalies. 
      - Hence, when a forest of random trees collectively produces shorter path lengths for particular samples, they are highly likely to be anomalies. 

---

__What are the Naive Bayes fundamentals?__
   - Naive Bayes is a __probabilistic model__ that is often used for text classification. 
   - It learns the probability of an object with a given feature belonging to a specific class. 
   - Naive Bayes is "Naive" because it assumes feature occurrences __are independent of the occurrence of other features__. 
   - There are __three types__ of Naive Bayes:
      - __Multinomial__: Used when we have __discrete data__. With respect to text classification, if the words can be represented by their occurrences/frequency count, then use this method.
      - __Bernoulli__: It assumes input features are __binary__ (only two categories_. If you just care about the presence or absence of a word in a document, use Bernoulli classification.
      - __Gaussian__: Used with __continuous features__. For example, the Iris dataset features have sepal width, petal width, sepal length, and petal length.

---

__What is a ROC curve, sensitivity, specificity, and confusion matrix?
   - A __Receiver Operating characteristic (ROC) Curve__ plots True Positive Rate (TPR) vs False Positive Rate (FPR) at different classification thresholds. It measures a classification model's performance. Curves of different models can be compared directly or for different thresholds.
   - __Sensitivity__ (aka "TPR") = true positives/(true positive + false negative)
   - __Specificity__ (aka "TNR") = true negatives/(true negative + false positives)
   - __Confusion matrix__: a table that summarizes classification performance. It returns combinations of predicted and actual values which include True Positive and False Positive in the 1st row, whereas, False Negative and True Negative in the second row.

---

__What is an AUC-ROC Curve__?
   - When we need to visualize the performance of a __multi-class classification problem__, we use AUC (Area Under The Curve) ROC (Receiver Operating Characteristics) curve. 
   - ROC is a __probability curve__ AUC represents the __degree of separability__. 
   - It measures a model's capability of __distinguishing between classes__ such as spam/not-spam. 
   - The higher the AUC, the __better the model is at predicting__ spam email as spam and non- spam email as non-spam. 
   - An accurate model has __AUC close to 1__ which reflects a good separability. A poor model has __AUC near 0__ which means it has worst measure of separability.

---

__What is K-means__?
   - K-means is an __unsupervised clustering__ algorithm. It randomly identifies k centroids & allocates every data point to the nearest cluster - while keeping the centroids as small as possible. 
   - The result is that the input unlabelled data is converted into clusters which are differentiable.

---

How does __Gradient Boosting__ work?
   - Gradient Boosting __sequentially adds predictors__ to an ensemble - with each predictor correcting its predecessor. 
   - Imagine the boosting problem as an optimization problem, where we take a loss function and try to optimize it. It has 3 core elements: 
      - a __weak learner__ to make predictions, 
      - a __loss function__ to be optimized, and 
      - an __additive model__ to add to the weak learners to minimize the loss function.

---

__What is the difference between bagging and boosting__?
   - Bagging and Boosting are both __ensemble__ techniques.
      - Sets of weak learners are combined to create a strong learner for better performance. 
   - __Bagging__: each model is trained in parallel and is running independently. The outputs are aggregated at the end without preference to any model.
   -  __Boosting__ is all about “teamwork”. Each previous model decides the subset of features used by the next model depending on the performance. 
   - The choice of the model to use depends on the data.

---

__Why do we need feature selection?
   - The data features used to train your models have a huge influence on the performance of the model.
      - Some feature sets will be __more influential than others__ on model accuracy. 
      - __Irrelevant features__ can increase the complexity of the model and add noise to the data which can negatively impact model performance. 
      - Features __may be redundant__ if they're highly correlated with another feature. These types of features can be removed from the data set without any loss of information.
   - Feature selection methods can identify and remove attributes that don't contribute to the accuracy of a predictive model. 
   - Variable selection can reduce the amount of data that contributes to the __curse of dimensionality__. Reducing the number of features through feature selection ensures training the model will require minimum memory and computational power, leading to shorter training times and also reducing the common problem of overfitting.

---

__What is unbalanced binary classification__?
   - Unbalance Binary Classification can be dealt in multiple ways:
      - Under-sampling: Eliminates majority class examples until data is balanced.
      - Over-sampling: Increases number of instances in a minority class by adding copies of those instances. This can be done randomly or synthetically using Synthetic Minority Over-sampling Technique (SMOTE).
   - Use suitable performance metrics: Accuracy can be a misleading metric for unbalanced data. 
      - Suitable metrics would include Precision, Recall, F1-score, AUC, etc.
   - Use suitable algorithms: 
      - Algorithms such as Decision Tree and Random Forest work well with unbalanced data.
   - Penalizing wrong classification imposes an additional cost on the model for making classification mistakes on rare classes during training more than wrong classifications of the abundant class. These penalties can create bias in the model to pay more attention to and favor of the rare class.

---

Why is __dimensionality reduction__ important?
   - Datasets with large numbers of features (specifically images, sound, and/or textual contents) increase space, add overfitting and slow down the time to train the models.
   - Dimensionality reduction reduces the dimensionality of a feature space by obtaining a set of __principal features__. It can boost performance of the learning algorithm resulting in less computational cost.
   - It also __eliminates redundant features__ and __features with strong inter-correlation__, therefore reducing overfitting. Moreover, projection into 2-3 dimensions often used for visualization of high-D data sets, leading to better human interpretations.

---

__Describe hyperparameters__?
   - A model learns parameters from training data. Hyperparameters are set before training begins. 
   - They describe how a model is supposed to function. Examples: the number of trees in a decision tree or the learning rate of a regression model. Hyperparameters control the behavior of the training algorithm and have a significant impact on the performance of the model being trained.
   - Hyperparameters can be tuned by running __multiple trials__. Some common techniques are: Grid search, Random Search & Bayesian Optimization.
   - To verify if hyperparameters work, __test them against an evaluation metric__ based on the nature of our problem. For example, we can choose hyperparameters that return the best accuracy or the best F1 score.

---

__How will you decide if a customer will buy a product today given: income, location, profession, and gender?__
   - This is a classification algorithm. 
   - To solve this problem, the dataset will be collected and stored. 
      - It will be cleaned and pre-processed for any abnormalities or missing values. 
      - Then it will be subjected to feature engineering. 
         - Some steps may include dealing with missing values, encoding categorical values, and normalizing numerical values.
   - The dataset would then be divided into train and test sets, using K-folds validation with k set to an appropriate number of folds. The train set would be used to fit a classification model such as a Logistic Regression, Decision Tree Classifier or Support Vector Classifier. 
   - The fitted model is then evaluated against the test set to check how good the model is using an evaluation metric such as accuracy or F1 score.

---

__Design a heatmap for Uber drivers to recommend where to wait for passengers__.
   - You can use __k-means clustering__ to group previous journeys of the customers in similar area. This will give a fair idea about the preference of the potential rides.
   - Perform exploratory data analysis to analyze how long it took for a driver to find the client once they arrived at the pick-up location. Filter out those locations with the minimum pickup time.
   - The model can use maps to identify whether it is possible to pick up people at those points in terms of practicality. For instance, it would be inconvenient to pick up people from congested areas so a nearby pickup point should be suggested to ensure efficiency and quick service.

---

What are __time series forecasting techniques__?
   - __Simple moving average (SMA)__ is the simplest. It averages the last ‘n’ period’s values.
   - __Exponential Smoothing__ assigns exponentially decreasing weights as the observations get older.
   - __Autoregressive Integrated Moving Average (ARIMA)__: The parameters are (P, d, q) - the autoregressive, integrated and moving average parts of the data set, respectively. ARIMA handles the trends, seasonality, cycles, errors and non-stationary aspects of a data set when making forecasts.

---

__How does a logistic regression model know what the coefficients are?__
   - Consider when the input variable is __continuous__. 
      - The first coefficient (y-axis intercept) - when the input variable/feature is 0 the log(odds of output variable) is equal to the intercept value. 
      - The second coefficient (slope) represents the __change in log(odds of output variable)__ per unit of x-axis gained. 

   - Consider when the input variable is __discrete__. Example: where a mouse is "obese" or "not obese". 
      - The independent variable is discrete - whether the mouse has normal or mutated genes. 
      - The first coefficient/intercept tells us the __log(odds of normal gene)__.
      - The second coefficient tells us the __logodds ratio__ which determines, on a log scale, how much having a mutated gene increases/decreases the odds of being obese.

---

Explain __Principle Component Analysis (PCA)__.
   - PCA is a dimensionality reduction technique for large data sets. It transforms a large set of variables into a smaller one that still contains most of the information in the large set.  It's often used to make data easy to explore and visualize.

---

Explain __Latent Semantic Analysis (LSA)__ and __Latent Dirichlet Allocation (LDA)__.
   - LSA & LDA are used for __topic modelling__. LSI learns latent topics by performing a matrix decomposition on the term-document matrix. 
   - The objective of LSA is to reduce dimensions for classification in NLP. 
   - LDA is a “generative probabilistic model” which uses unsupervised learning for topic modeling/classification of topics.

---

Why is __gradient checking__ important?
   - Gradient Checking is used check out the derivatives in back-propagation algorithms.
   - It’s necessary before running the neural network on training data to verify that our implementation of back-propagation is correct. 
   - Gradient checking compares back-propagation gradients, which are obtained analytically with a loss function, with numerically obtained gradients for each parameter. 
   - It ensures the implementation is correct and increases our confidence in the correctness of our code.
   - By numerically checking the computed derivatives, gradient checking eliminates problems as back-propagation can have subtle bugs. 

---

Is __random weight assignment__ better than __assigning same weights__ to the units in a hidden layer?
   - Consider a situation where the weights are assigned equally. 
   - Since neural nets use __gradient descent__ to optimize parameters and find the lowest point to reduce the error of the cost function, they __need an initialization point__.
   - If the starting point is A at the first iteration then it is possible that the network is unable to find a path towards the local minima. Keeping the initialization point consistent each time will lead to the same conclusion.
   - __If the starting point is random at each iteration__, the network will have a better chance at finding local minima to reduce the error of the cost function. This technique is also known as breaking the symmetry. 
   - The initialization is asymmetric so we can find various solutions to the same problem.

---

Describe __an F1 score__.
   - F1 score is a __classification metric__. 
      - It is derived from __precision__ (true positives / all positives labeled by algorithm) and __recall__ (true positives to all positives in reality). 
      - F1 is the harmonic mean of precision and recall. It seeks a balance between Precision and Recall in uneven class distributions.
   - It can be formulated as 2- ((recall - precision) / (recall+precision))
   - F1 = 1 when precision and recall are perfect. A worst case F1 = 0. 
   - It tells you how precise your classifier is (how many instances it classifies correctly), as well as how robust it is.

---

Describe some common __topic modeling__ techniques.
   - __Latent Semantic Analysis (LSA)__ uses the context around the words to find hidden concepts. 
      - It does that by generating __a document-term matrix__.
      - Each cell has a __TD-IDF__ score which assigns a weight for every term in the document. 
      - Using __Singular Value Decomposition (SVD)__, the dimensions of the matrix are reduced to __a number of desired topics.__  The resulting matrices, after decomposition, gives us vectors for every document & term in our data. It can then be used to find similar words and similar documents using __cosine similarity__.
   - __Probabilistic Latent Semantic Analysis__ (PLSA) models information under a probabilistic framework instead of SVD. It creates a model P(D,W): for any document d and word w, P(d,w) corresponds to that entry in the document-term matrix.
   - __Latent Dirichlet Allocation (LDA)__ automatically discovers topics in documents. 
      - LDA represents documents as mixtures of topics that spit out words with certain probabilities. 
      - It assumes each document mixes with various topics and every topic mixes with various words.
      - LDA tries to backtrack from the documents to find a set of topics most likely to have generated the collection. 
      - It maps all documents to topics such that the words in each document are mostly captured by those topics.

---

__How does a neural network with one layer, input and output compare to a logistic regression?__
   - NNs and LR are both used for classification problems. 
   - LR can be described as the simplest form of a NN with straightforward decision boundaries.
   - NNs are a superset that includes additional decision boundaries to cater to more complex and large data. 
   - LR models cannot capture complex non-linear feature relationships. 

---

__Why is Rectified Linear Unit/ReLU is a good activation function?
   - ReLUs are better than traditional sigmoid or tangent activation functions because they help solve the problem of __vanishing gradients__. 
   - Vanishing gradients occur while back-propagating weights through the layers. They tend to get smaller as we keep moving backwards in the network. 
      - Due to this, the learning is very slow for large values of the input as gradient values are small.
      - When a neuron's activation saturates close to 0, the gradients at these regions are close to 0.
      - During back-propagation, this local gradient will be multiplied with the gradient of the state's output. Hence, if the local gradient is really small, it will make gradients slowly vanish. 
      - Therefore almost no signal will flow through the neurons to it's weights.
      - ReLUs are faster in learning. They are only used for the hidden layers of DNNs.

---

How do you use __Gaussian mixture models (GMMs)__?
   - A GMM is a probabilistic model that assumes data is generated from a mixture of several Gaussian distributions with __unknown parameters__.
   - We describe each cluster by its centroid (mean), covariance, and the size (weight) of the cluster. 
   - Therefore a GMM is applicable when we know that the data points are mixtures of a gaussian distribution and form clusters with different means and standard deviations.

---

How to decide __whether to double the number of ads in Facebook's Newsfeed?__
   - You can use __A/B testing__ to make a conclusion about the success rate of the ads. 
   - A/B testing is experimenting and comparing two variations of a campaign such as ad text, a headline, or any element of a marketing campaign. 
   - Even a small sample size in an A/B test can provide significant, actionable insights.

---

What is __Long short-term memory (LSTM)__?
   - LSTM is based on a __recurrent neural network (RNN)__ architecture. 
   - LSTM tackles long-term dependencies of RNNs in which the RNNs cannot predict the word stored in long-term memory but can give more accurate predictions from recent information. 
   - LSTM uses __a memory unit, called the cell__, into the network. LSTM units contain a cell, an input gate, an output gate, and a forget gate. 
   - Each unit makes decisions by considering the current input, previous output and previous memory. And it generates a new output and alters its memory.
   - LSTM is used for processing, predicting and classifying based on time series data. 
   - Unlike standard feedforward neural networks, __LSTM has feedback connections__ that make it a general-purpose computer. 
   - It can not only process single data points (such as images), but also entire sequences of data (such as speech or video).

---

Explain the difference between __generative__ and __discriminative algorithms__.
   - Suppose we have a dataset with training input x and labels y. 
   - A __Generative Model explicitly models the actual distribution__ of each class. 
      - It learns the joint probability distribution p(x,y) & makes predictions using Bayes rules to calculate p(ylx).
      - It then picks the most likely label y. 
      - Examples: Naïve Bayes, Bayesian Networks, Markov random fields.
   - A __Discriminative Model learns the conditional probability distribution p(y|x),__ or learns a direct map from inputs x to the class labels.
      - It models the decision boundary between classes. 
      - Some popular discriminative classifiers: Logistic regression, Traditional neural networks, Nearest neighbors.

---

What is __MapReduce__?
   - MapReduce is a data processing tool that enables distributed computations for handling large datasets. 
   - It is used to split and process data in parallel, achieving quicker results. 
   - MR makes it easy to scale data processing over multiple computing nodes.
   - Processing uses the map and reduce functions. 
      - Map converts a dataset into another -individual elements are broken down into tuples. 
      - Reduce accepts a map’s output & combines those tuples into a smaller set of tuples.

---

If the model isn't perfect, __how do you select the threshold for a binary model__?
   - We need to understand what will happen as a result of selecting a decision boundary. 
   - You need to know the __relative cost__ of a false positive vs. a false negative. 
   - A __precision-recall curve__ can be plotted on your validation data. 
   - Example: it's important to know that if you accidently label a true potential customer as false, this will result in losing customers. This analysis will help in deciding the right threshold for the model.

---

Are __boosting algorithms__ better than __decision trees__? If yes, why?
   - __Yes__, they perform better than decision trees. 
   - Boosting algorithms combine several weak learners into one strong one. 
   - They create a sequence of models that attempt to fix the errors of previous models. 
   - Models are added until the training set is predicted perfectly or a maximum number of models are added. 
   - During this process, if an input is misclassified by a hypothesis, its weight is increased so that the next hypothesis is more likely to classify it correctly. 
   - This process converts weak learners into better models. The results are combined to create a final output prediction.

---

__How does speech synthesis work__?
   - Speech synthesis is the process of creating human like speech. It's also referred to as a text-to-speech (TTS) system that converts natural language into audible speech. It's a form of output where a computer reads words to you out loud in a real or simulated voice. It is usually generated by concatenating pieces of recorded speech.
   - The entire process could be described as:
      - __Pre-processing__: Since there's a lot of ambiguity involved in reading text, as words can be read in several ways, the pre-processing tries to eliminate the ambiguity and handles homographs.
      - __Words to Phenomes__: the algorithm uses phonemes to convert text into sequences of sounds. Phonemes are the sound components used to make spoken words.
      - __Phenomes to sound__: Last, output techniques are used to mimic human voices read out the text. This can be in 3 forms: 
         - Using recordings of humans saying the phonemes
         - Using a computer to generate the phonemes by generating basic sound frequencies
         - Mimicking the mechanism of the human voice

---

__How do you detect if a new observation is an outlier__?
   - Use a __Boxplot/Whiskers plot__ to visualize the outlier: 
      - Any value that will be more than the upper limit or smaller than the lower limit of the plot will be outliers. 
      - Only the data between the Lower and Upper limits is statistically considered normal and can be used for further analysis.
   - __Standard deviation__: Find the points which lie more than 3 times the standard deviation of the data.
   - __Clustering__: Use __K-means__ or __DBSCAN__ (Density-Based Spatial Clustering of Applications with Noise).

---

__What are anomaly detection methods__?
   - Anomaly detection identifies patterns that do not conform to expected behavior (__outliers__).The simplest approach to identify irregularities in data is to flag the data points that deviate from common statistical properties of a distribution, including mean, median, mode, and quantiles. 
   - __Density-Based Anomaly Detection__ assumes normal data points occur around a dense neighborhood and abnormalities are far away. The nearest set of data points are evaluated using a score such __Euclidean distance__
   - __Z-score__ is a parametric outlier detection method. It assumes a Gaussian distribution of the data. The outliers are the data points that are in the tails of the distribution and therefore far from the mean.

---

__How do you solve for multicollinearity__?
   - Multicollinearity: when __independent variables in a regression model are correlated__. To solve this issue, remove highly correlated predictors from the model. If you have two or more correlated variables, remove one from the model since they supply redundant information.
   - Regularization can be used - it stabilizes the regression coefficients so the effect of multicollinearity is mitigated. 
   - You can also use Principle component analysis to cut the number of correlated predictors.

---

__How does caching work__?
   - It is often necessary to save various data files when the process of loading and/or manipulating data takes a considerable amount of time. 
   - Server caching saves already computed elements may not need to be recomputed. When you want to access some data that is expensive to look up (in terms of time/resources), you cache it so that the next time you want to look up that same data, it’s much less expensive and time efficient. 
   - Caching also enables content to be retrieved faster because an entire network round trip is not necessary. Browser caches can make information retrieval nearly instantaneous.

---

__How would you define a representative sample of search queries from 5 million queries?__
   - Some key features need to be kept in mind:
      - __Diversity__: A sample must be as diverse as the 5 million search queries. It should be sensitive to all the local differences between the search query and should keep those features in mind.
   - __Consistency__: We need to make sure that any change we see in our sample data is also reflected in the true population which is the 5 million queries.
   - __Transparency__: It is extremely important to decide the appropriate sample size and structure so that it is a true representative. These properties of a sample should be discussed to ensure that the results are accurate.

---

__Discuss how to randomly select a sample from a product user population__.
- Sampling techniques can be divided into two categories:
   - __Probability-based__:
      - Simple Random Sampling
      - Stratified Sampling
      - Clustered Sampling
      - Systematic Sampling
   - __Non-Probability based__:
      - Convenience Sampling
      - Snowball Sampling
      - Quota Sampling
      - Judgement Sampling

---

What is the __importance of Markov Chains (MCs)__?
   - MCs are a stochastic model __describing a sequence of possible events that are probabilistically related to each other__. 
      - The probability of the upcoming event depends only on the present state - not previous states. 
      - This is called a __Memoryless__ property. It disregards the events in the past and uses the present information to predict what happens in the next state.
   - Imagine you have an online product selling platform:
      - You want to know whether a customer's in the stage where they are considering to "buy a product". (These are the states at which the customer would be at any point in their purchase journey.) 
      - __MCs describe the current state & transition probabilities__ of moving from one state to another. As a result, we can predict the next stage. In this case, we can predict how likely a customer is going to buy the specified product.

---

What is the difference between __Maximum Likelihood Estimation (MLE)__ and __Maximum A Posteriori (MAP)__?
   - MLE & MAP estimate a variable in probability distributions or graphical models. 
   - MAP usually appears in __Bayesian settings__. It works on a __posterior distribution__ - not only the likelihood like MLE.
   - If you have useful prior information, posterior distribution will be more informative than the likelihood function. 
   - Comparing MLE & MAP: the difference is the __inclusion of prior P(θ) in MAP__. Otherwise they are identical. 

---

__What does P-Value mean__?
   - P-Values measure the statistical significance in the __Null Hypothesis__. 
      - It stands for probability value and __indicates how likely a result occurred by chance alone__. 
      - __Small p-values__ indicate the result is __unlikely to have occurred by chance alone__. (ie, they are statistically significant.)
      - __Large p-values__ indicate the result __is within chance or normal sampling error__. (The test is not significant.) 
         - A __large p-value beyond a chosen significance level__ indicates weak evidence against the null hypothesis, so you fail to reject the null hypothesis.

---

__Define Central Limit Theorem (CLT)__
   - CLT: the __sampling distribution__ of the __sample mean__ approaches the __normal distribution__ as the sample size gets large - no matter what the initial shape of the population distribution is. 
   - It helps quantify the probability that the random sample will deviate from the population without having to take any new samples for comparison. 
   - Thanks to CLT we don’t need the characteristics about the whole population to understand the likelihood of our sample being representative of it. 
   - __Confidence intervals, hypothesis testing, and p-value analysis__ is based on the CLT. 
   - In a nutshell, CLT can make inferences from a sample about a population.


74. There are 6 marbles in a bag, 1 is white. You reach in the bag 100 times. After drawing a marble, it is placed back in the bag. What is the probability of drawing the white marble at least once?
The probability of drawing out at least one marble is the complement of probability of drawing not a single white marble at all. Therefore, we’ll calculate the Probability of drawing all non-white marbles over a hundred times and subtract by 1:


P(White at least once) = 1 – [P(Non-white marbles) ^ 100] = 1 - [(5/6) ^ 100]


__Explain Euclidean distance__.
   - Euclidean distance measures distance between 2 points P and Q. It is based on the Pythagoras theorem where the distance from point P to Q (in 2-dimensional space) as the hypotenuse of a triangle.
   - It can be used to measure the "similarity" between two vectors by several classification and clustering algorithms.

---

__Define variance__.
   - Variance is a measure of the variability of data in a distribution. 
   - It measures how far a set of (random) numbers are spread out from their average value. It can be formulated as the average of the squared differences from the mean.

---

__What is the law of large numbers?__
   - As the sample size is increased, __the sample mean approaches the true population mean__.

---

How do you weigh 9 marbles three times on a balance scale to select the heaviest one?
   - Divide 9 marbles into groups of 3. The groups have 4, 4 and 1 marbles respectively. 
   - Weigh the 2 groups with 4 marbles each. 
   - If the scale is balanced, then the 1 marble from the last group is the heaviest. 
   - If one group is heavier, divide it into 2 subgroups of 2 marbles each. 
      - Weigh them and find the heaviest group. Now we’re left with 2 marbles from the selected group.
      - Weigh those 2 marbles. We are left with the heaviest marble.

---

You call 3 random friends and ask each if it's raining. Each friend has a 2/3 chance of telling you the truth and a 1/3 chance of lying. All three say "yes". __What's the probability it's actually raining?__
   - We have to find the probability of raining given that all three friends said ‘Yes’:
        P(rain | yes, yes, yes)
   - Using Bayes Theorem, our equation will now be:
         P(rain | yes, yes, yes) 
            = P(yes,yes,yes|rain)  -P(rain) 
            / [P(yes,yes,yes|rain) -P(not rain) 
            + P(yes,yes,yes|rain)  -P(not rain)]

   - We have the following values:
   - P(yes, yes, yes | rain)         = 2/3 ^ 3 = 8/27
   - P(yes, yes, yes | not rain)         = 1/3 ^ 3 = 1/27
   - P(rain)                         = R (it is not given in question, so we’ll assume R)
   - P(not rain) = 1 - R
   - Substituting these values in equation we get:
   - P(rain | yes, yes, yes) =  8P/(7P + 1)

---

__What is a Poisson distribution?__
   - A __Poisson distribution is a discrete probability distribution__. It predicts the probability of events from happening using how often the event has occurred. 
      - It predicts the probability of a given number of events occurring in a fixed interval of time. 
      - Examples: the number of phone calls received by a call center per hour and the number of decay events per second from a radioactive source.
      - The Poisson distribution is applied when:
         - If the event is possible to count and can be counted in whole numbers
         - If the average frequency of occurrence for the time period in question is known
         - When the occurrences are independent

---

__What is the difference between a Stack and Queue?
   - A stack is a linear data structure in which elements can be inserted and deleted only from one side of the list, called the top. 
      - It is a __LIFO (last in first out)__ structure. 
      - We track of the last element present in the list with a pointer called top. 
   - Queues are __FIFO (first in first out)__ data structures.
      - Elements can be __inserted only from the rear__ of the list.
      - Elements can be __deleted only from the front__ of the list.

---

__What is the difference between Linked lists and Arrays?__
   - The difference is how they allocate memory. 
   - A Linked List is an __ordered collection of elements of the same type__. They are connected to each other using __pointers__. The address of the new element’s memory location is stored in the previous node of the linked list, forming a link between the two nodes/elements. 
   - Linked lists have a dynamic size, but random access isn't allowed. 
   - An array is a random-access data structure. It consumes __contiguous memory locations allocated at compile time__. An array has a fixed size, but random access is permissible via an index.

---

__How should you handle NULLs when querying a data set?__
   - In a relational database, __null means that no entry has been made for that cell__. (Either the values exist but is unknown, or there is no information about the existence of value.)
   - A null is __not the same as 0 or blank__. Databases such as SQL reserves the NULL keyword to denote an unknown or missing value.
   - It is extremely important to handle null values when doing some arithmetic operations because if a null value is used in any of these operations, the answer always remains null which is hard to demystify. 

---

What is the __JOIN function__ in SQL?
   - SQL handles __queries across multiple tables__ with JOINs. 
   - JOINs are clauses in SQL statements that link two tables together, usually based on __common keys__ that define the relationship between those two tables. 
   - __INNER joins__ select all rows from both tables that meet the required condition.
   - __LEFT joins__ return all the rows of the table on the left side of the join and matching rows for the table on the right side of join. In no matches on the right side, the result will contain nulll.
   - __RIGHT joins__ return all the rows of the table on the right side of the join and matching rows for the table on the left side. In no matches on the left side, the result will contain null.
   - __FULL joins__ return the combined result of both LEFT and RIGHT JOIN. It will contain all the rows from both tables. In case of no matching, the result will contain null.

---

__Select all customers who purchased at least two items on two separate days__ from Amazon.
   SELECT Customer_ID, 
   COUNT(DISTINCT Item_ID) as ‘item’, 
   COUNT(DISTINCT Purchase_Date) as ‘date’ 
   FROM Purchase_List 
   GROUP BY Customer_ID 
   HAVING ‘date’ >= 2 AND ‘item’ >= 2

---

What is the difference between DDL, DML, and DCL?
   - __DDL: Data Definition Language__. It describes commands such as  CREATE, DROP, ALTER, and TRUNCATE which can be applied on data.
   - __DML: Data Manipulation Language__. It describes commands such as SELECT, INSERT, UPDATE, and DELETE.
   - __DCL: Data Control Language__. It describes commands so you can GRANT or REVOKE access rights of someone over the database.

---

Why is __Database Normalization Important?
   - Database normalization is used to organize a database. The goals are:
      - All the data is stored in one place ensuring consistency
      - Removes duplicate records
      - Minimizes data modification issues
      - Querying the database is simplified

---

What is the difference between a __clustered__ and __non-clustered__ index?
   - Indexes accelerate query processes in an SQL Server.
   - __Clustered__ Indexes: 
      - A clustered index __defines the order in which data is physically stored__ in a table. 
      - Since the data can be sorted in only one order, there can be only one clustered index per table. 
      - It is __faster to read__ than non-clustered index as data is physically stored in index order.
   - __Non-Clustered__ Indexes: 
      - A non-clustered index __doesn’t sort the data inside the table__.
      -  A non-clustered index is stored at one place and table data is stored in another place. This allows multiple non-clustered indexes per table. This method is quicker to insert and update operations (more writes than reads) than a clustered index.

---

How do you avoid __selection bias__?
   - Selection bias occurs during __population sampling__. 
   - It's defined as when a selected sample does not represent the characteristics of the population. 
   - There are three types of selection bias:
      - __Undercoverage__: when some members of the population are inadequately represented. This problem usually occurs while doing convenience sampling.
      - __Voluntary Response Bias__: when members are self-selected volunteers who are strongly opinionated. The resulting sample tends to overrepresent these individuals.
      - __Nonresponse Bias__: when there's a significant difference between those who responded to the survey and those who did not. This may happen for a variety of reasons such as some people refused to participate or some people simply forgot to return the surveys.
   - To avoid selection bias, use random sampling.