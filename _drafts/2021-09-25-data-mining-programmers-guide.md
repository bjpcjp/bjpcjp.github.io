---
title: Data Mining - a Programmers Guide
layout: default-foundation-20210515
date: 2021-09-25
tags: math
---

<h2>{{page.title}}</h2>

<div class="callout">
	<h3>
		This post is in progress. It will be fleshed out as time permits.
	</h3>
</div>

{% assign DMG = "http://guidetodatamining.com" %}

- [Data Mining: a Programmer's Guide (Zacharski)]({{DMG}})

	- [Intro]({{DMG}}/chapter1)
	
	- [Recommendation Systems]({{DMG}}/chapter2)

		Intro; finding similar items; Manhattan distance; Euclidean distance;
		Minkowski distance; Pearson correlation coefficient; cosine similarity;
		k-nearest-neighbors in Python; book crossing dataset

	- [Item-based Filtering]({{DMG}}/chapter3)

		Explicit & implicit ratings; user-based filters; item-based filters;
		adjusted cosine similarity; slope one algorithm; Python code; 
		MovieLens dataset

	- [Classification]({{DMG}}/chapter4)

		Pandora-like systems; selecting appropriate attributes; example; 
		data normalization; modified standard score; Python code;
		sports example; acquiring attribute data

	- [Classification, Pt2]({{DMG}}/chapter5)

		Training sets & test data; 10-fold cross validation;
		adding data vs algorithm tweaks; kNN; Python code

	- [Naive Bayes & Probability Density Functions]({{DMG}}/chapter6)

		Lazy & eager learning; probability refresher; conditional probability;
		Bayes theorem; Python code; Congress Voting dataset; Gaussian distribution;
		Python code

	- [Naive Bayes & unstructured text]({{DMG}}/chapter7)

		Positive & negative texts; classifier training; stop words;
		newsgroup classifier; Python code; sentiment analysis

	- [Clustering]({{DMG}}/chapter8)

		Intro; hierarchical; single/complete/average linkages; dog breed clusters;
		breakfast cereal clusters; Kmeans; Kmeans++, Enron email dataset

