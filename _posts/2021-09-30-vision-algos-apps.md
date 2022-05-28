---
title: Computer Vision Algos & Apps - book notes
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

{% assign CVAA = "/pdfs/math/vision_szeliski_2010.pdf" %}

- [Computer Vision: Algorithms & Applications (Czeliski)]({{CVAA}}#page=1)

	- [Contents]({{CVAA}}#page=12)
	- [Intro]({{CVAA}}#page=22)
	- [Image Formation]({{CVAA}}#page=50)

		Geometric primitives, 
		Photometric image formation,
		Digital cameras

	- [Image Processing]({{CVAA}}#page=120)

		Point operators,
		Linear filtering,
		More neighborhood operators,
		Fourier transforms,
		Pyramids & wavelets,
		Geometric transforms,
		Global optimization


	- [Feature Detection/Matching]({{CVAA}}#page=226)

		Points & patches,
		Edges,
		Lines


	- [Segmentation]({{CVAA}}#page=288)

		Active contours,
		Split & merge,
		Mean shift & mode finding,
		Normalized cuts
		Graph cuts & energy-based methods

	- [Feature-based Alignment]({{CVAA}}#page=330)

		2D & 3D alignment,
		Post estimation,
		Geometric intrinsic calibration

	- [Structure from Motion]({{CVAA}}#page=364)

		Triangulation,
		2-frame structure from motion,
		Factorization,
		Bundle adjustment,
		Constrained structure & motion

	- [Dense Motion Estimation]({{CVAA}}#page=402)

		Translational alignment,
		Parametric motion,
		Spline-based motion,
		Optical flow,
		Layered motion

	- [Image Stitching]({{CVAA}}#page=448)

		Motion models,
		Global alignment,
		Compositing

	- [Computational Photography]({{CVAA}}#page=488)

		Photometric calibration,
		High dynamic range imaging,
		Super-resolution & blur removal,
		Image matting & compositing,
		Texture analysis & synthesis

	- [Stereo Correspondence]({{CVAA}}#page=554)

		Epipolar geometry,
		Sparse correspondence,
		Local methods,
		Global optimization,
		Multi-view stereo

	- [3D Reconstruction]({{CVAA}}#page=598)

		Shapes from X,
		Active rangefinding,
		Surface representations,
		Point-based representations,
		Volumetric representations,
		Model-based reconstruction,
		Recovering texture maps

	- [Image-based Rendering]({{CVAA}}#page=640)

		View interpolation,
		Layered depth images,
		Light fields & lumigraphs,
		Environment mattes,
		Video-based rendering

	- [Recognition]({{CVAA}}#page=676)

		Object detection,
		Face recognition,
		Instance recognition,
		Category recognition,
		Context & scene understanding,
		Recognition databases

	- [Conclusion]({{CVAA}}#page=752)

	- [Linear Algebra / Numerical Techniques]({{CVAA}}#page=756)

		Matrix decomposition,
		Linear least squares,
		Nonlinear least squares,
		Direct sparse matrix techniques
		Interative techniques

	- [Bayesian Modeling & Inference]({{CVAA}}#page=776)

		Estimation theory,
		Max likelihood estimation,
		Robust statistics,
		Prior models,
		Markov random fields,
		Uncertainty estimation

	- [Supplements]({{CVAA}}#page=798)
		-datasets]({{CVAA}}#page=800) 
		[sw libraries]({{CVAA}}#page=804)
		[slides]({{CVAA}}#page=806)
