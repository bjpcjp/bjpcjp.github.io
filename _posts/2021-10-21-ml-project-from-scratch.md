---
title: ML project from scratch
layout: default-foundation-20210515
date: 2021-10-21
tags: machine-learning
---

<div class="callout">
<h2>{{page.title}}</h2>
</div>

![tools](/px/math/ml_tools-20211021.png)

{% assign root = "https://www.mihaileric.com/posts/" %}

## Part 1 (Intro):

- [intro]({{root}}setting-up-a-machine-learning-project/)
- [source code](https://github.com/mihail911/fake-news)
- [PyTest](https://docs.pytest.org/en/stable/)
- [dvc](https://dvc.org/)
- [Anaconda environments (for isolating project dependencies)](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html)

---

## Part 2 (Data acquisition / analysis):

- [blog post]({{root}}performing-exploratory-data-analysis/)
- [Liar Liar dataset](https://www.aclweb.org/anthology/P17-2067/)
- [Liar Liar, augmented](https://github.com/Tariq60/LIAR-PLUS)
- [Pandas](https://pandas.pydata.org/)
	
- Analyze label distributions
- Ngram analysis
	- [TF-IDF weightings](https://en.wikipedia.org/wiki/Tf%E2%80%93idf)

- Topic modeling
	- [LDA (Wikipedia)](https://en.wikipedia.org/wiki/Latent_Dirichlet_allocation)
	- [LSA (Wikipedia)](https://en.wikipedia.org/wiki/Latent_semantic_analysis)

- Sentiment analysis
	- (compare sentiment score between True & False statements)
	- [VADER algorithm](http://comp.social.gatech.edu/papers/icwsm14.vader.hutto.pdf)

---

## Part 3 (First model):

- [Model V1]({{root}}/machine-learning-project-model-v1/)
	- Preprocessing
		- [cleaner script](https://github.com/mihail911/fake-news/blob/master/scripts/normalize_and_clean_data.py)

	- Model definition
		- [random forest as baseline](https://en.wikipedia.org/wiki/Random_forest)
		- [definition (github)](https://github.com/mihail911/fake-news/blob/master/fake_news/model/base.py)

	- Features
		- Use 2 types: **manual** and **ngram**
		- [one-hot encoding](https://machinelearningmastery.com/why-one-hot-encode-data-in-machine-learning/)

	- Training Pipeline
		- [json format](https://www.json.org/json-en.html)
		- [yaml format](https://yaml.org/)
		- [jsonnet format](https://jsonnet.org/)
		- [pipeline code boilerplate](https://github.com/mihail911/fake-news/blob/master/fake_news/train.py)
		- [MLFlow tracking API](https://www.mlflow.org/docs/latest/tracking.html)

	- Functionality tests
		- [testing (Jeremy Jordan)](https://www.jeremyjordan.me/testing-ml/)
		- [testing (Eugene Yan)](https://eugeneyan.com/writing/testing-ml/)
		- [testing (@keeper6928)](https://medium.com/@keeper6928/how-to-unit-test-machine-learning-code-57cf6fd81765)
		- [normalization tests](https://github.com/mihail911/fake-news/blob/master/tests/test_features.py)
		- [modeling tests](https://github.com/mihail911/fake-news/blob/master/tests/test_model.py)
		- ["Great Expectations" library](https://greatexpectations.io/)
		- [testing script](https://github.com/mihail911/fake-news/blob/master/tests/great_expectations/validate_data.py)

	- Wrapup

---

## Part 4 (refined model):

- [Model V2]({{root}}machine-learning-project-error-analysis-model-v2/)

	- Feature Importance
		- [Gini impurity](https://victorzhou.com/blog/gini-impurity/)
		- [error analysis](https://github.com/mihail911/fake-news/blob/master/notebooks/error_analysis.ipynb)
		- [Shapely values](https://proceedings.neurips.cc/paper/2017/file/8a20a8621978632d76c43dfd28b67767-Paper.pdf)
		- [SHAP library](https://github.com/slundberg/shap)

	- Error Analysis
	- What Does the Data Say?
	- Model V2
		- [Transformer model](http://jalammar.github.io/illustrated-transformer/)
		- [Roberta](https://ai.facebook.com/blog/roberta-an-optimized-method-for-pretraining-self-supervised-nlp-systems/)
		
---

## Part 5 (Deployment):

- Prediction Rest API
- Chrome Extension
- Continuous Integration (CI)
