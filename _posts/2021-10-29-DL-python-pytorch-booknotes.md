---
title: DL with Python & DL with PyTorch - book notes
layout: default-foundation-20210515
date: 2021-10-21
tags: deep-learning booknotes
---

<h2>{{page.title}}</h2>

<div class="card" style="width: 50%;">
	<div class="card-divider">
		Deep Learning with Python (2nd ed) - Chollet
	</div>
	<img source="/px/math/DL-python-chollet-book-cover.png"/>
	<div class="card-divider">
		Deep Learning with PyTorch (1st ed) - multiple
	</div>
	<img source="/px/math/DL-PyTorch-book-cover.png"/>
</div>

- Python 2nd ed:
	- 1) Definition
	- 2) Math
		- Neural nets - first look
		- Data representation
		- Tensor ops
		- Gradients
		- Review

	- 3) Keras & Tensorflow
		- Keras
		- Tensorflow
		- History
		- Workspace setup
		- TF first steps
		- Neural net anatomy

	- 4) Classification basics
		- Binary classification (movie reviews)
		- Multiclass classification (newswires)
		- Regression (house prices)

	- 5) ML fundamentals
		- Generalization
		- Model evaluation
		- Improving model fit
		- Improving generalization

	- 6) Universal workflow
		- Tasks
		- Models
		- Deployment

	- 7) Keras deep dive
		- Workflows
		- How to build models
		- Training & evaluation loops - built-in
		- Training & evaluation loops - custom
	- 8) DL for CV (intro)
		- Convnets
		- Training from scratch - small dataset
		- Leveraging pretrained models

	- 9) DL for CV (advanced)
		- Three essential tasks
		- Image segmentation
		- Modern convnets
		- Interpreting what convnets learn

	- 10) DL for time series
		- Tasks
		- Example - temp forecasting
		- Recurrent networks (RNNs)
		- RNNs - advanced usage

	- 11) DL for text
		- NLP
		- Data prep
		- Word representation - two methods
		- Transformer
		- Sequence-to-sequence learning

	- 12) Generative DL
		- Text generation
			- History
			- Sequence data
			- Sampling
			- Keras implementation
			- Text-generation callback
			- Wrapup

		- Deep Dream
			- Keras implementation
			- Wrapup

		- Style Transfer
			- Content loss
			- Style loss
			- Keras implementation
			- Wrapup

		- Variational Autoencoders - Generating images
			- Sampling from latent image spaces
			- Concept vectors - image editing
			- VAEs
			- Keras implementation
			- Wrapup

		- GANs (generative adversarial nets)
			- Schematic
			- Bag of Tricks
			- CelebA dataset
			- Discriminator
			- Generator
			- Adversarial net
			- Wrapup

	- 13) Best practices
		- Parameter optimization
		- Model ensembles
		- Mixed-precision math
		- Multi-GPU training
		- TPU training

	- 14) Conclusions
		- Key concepts
		- Limitations
		- Generality
		- Implementing intelligence
		- Future
		- Staying up to date

- PyTorch:
	- Core
		- 1) Intro
			- Deep Learning
			- PyTorch
			- Why PyTorch
			- PyTorch for DL
			- HW/SW requirements

		- 2) Pretrained Nets
			- Net that recognizes image subjects
			- Fake it till you make it
			- Scene descriptions
			- Torch Hub

		- 3) Tensors
			- Floating point
			- Intro
			- Indexing
			- Named
			- Element types
			- API
			- Storage
			- Size, Offset, Stride
			- Moving to GPU
			- NumPy
			- Generalized tensors
			- Serializing

		- 4) Data Representation
			- Images
			- 3D (volumetric) Images
			- Tablular data
			- Time series
			- Text

		- 5) Learning Mechanics
			- Modeling lessons
			- Parameter estimation
			- Loss
			- Gradients
			- PyTorch autograd

		- 6) Fitting and Nets
			- Neurons
			- PyTorch nn module
			- Neural net

		- 7) Learning from Images
			- Image dataset
			- Distinguishing birds from airplanes

		- 8) Convolutions
			- Purpose
			- Convos in action
			- Subclassing the nn module
			- Training
			- Model design

	- Learning from Images
		- 9) Example: Cancer diagnosis
			- Intro
			- Setup
			- What is a CT Scan
			- Project (E2E)

		- 10) Combining Datasets
			- Raw CT Files
			- Parsing LUNA data
			- Loading Individual CT Scans
			- Patient Coordinates
			- Dataset Implementation

		- 11) Tumor Detection
			- Foundational Model
			- Main (entry point)
			- Setup
			- Net design (1st pass)
			- Training & validation
			- Metrics
			- Training script
			- Evaluation
			- Visualization w/ Tensorboard
			- Problem solving

		- 12) Metrics & Augmentation
			- High level plan
			- False positives & false negatives
			- Graphing
			- "Ideal" datasets
			- Overfitting
			- Overfitting & data augmentation

		- 13) Segmentation
			- Adding a 2nd model
			- Types of segmentation
			- Semantic segmentation (per-pixel classification)
			- Updating the model
			- Updating the dataset
			- Updating the script
			- Results

		- 14) E2E Nodule Analysis
			- Finish Line
			- Validation set independence
			- Bridging CT segmentation & nodule candidate classification
			- Quantitative validation
			- Predicting malignancy
			- What we see
			- What's next?

	- Deployment
		- 15) To Production
			- Serving PyTorch models
			- Exporting
			- PyTorch JIT
			- LibTorch
			- Mobile
			- Enterprise Model Serving
			- Conclusion