---
title: Convex Optimization - book notes
layout: default-foundation-20210515
date: 2021-09-25
tags: math booknotes
---

<h2>{{page.title}}</h2>

<div class="callout">
	<h3>
		This post is in progress. It will be fleshed out as time permits.
	</h3>
</div>

{% assign CO = "/pdfs/math/convex-optimization.pdf" %}

- [Convex Optimization (Boyd, Vandenberghe)]({{CO}}#page=1)

	- [Contents]({{CO}}#page=7)
	- [Preface]({{CO}}#page=11)

	- [Intro]({{CO}}#page=15)

		Math optimization; Linear programming / least squares; Convex optimization;
		Non-linear optimization; Book outline; Notation

	- [Convex Sets]({{CO}}#page=35)

		Affine & convex sets; examples; operations that preserve convexity; 
		inequalities; separating & supporting hyperplanes; dual cones

	- [Convex Functions]({{CO}}#page=81)

		Basic properties; operations that preserve convexity; conjugate functions;
		quasi-convex functions; log-concave & log-convex functions; convexity & 
		generalized inequalities

	- [Convex Optimization]({{CO}}#page=141)

		Intro; convex optimization; linear optimization; quadratic optimization;
		geometric programming; generalized inequality constraints; 
		vector optimization

	- [Duality]({{CO}}#page=229)

		Lagrange dual function; Lagrange dual problem; geometric interpretation;
		saddle-point interpretation; optimality conditions; pertubation & sensitivity
		analysis; examples; theorems of alternatives; generalized inequalities

	- [Approximation & fitting]({{CO}}#page=305)

		Norm approximation; least-norm problems; regularized approximation; 
		robust approximation; function fitting & interpolation

	- [Statistical estimation]({{CO}}#page=365)

		Parametric distributions; non-parametric distributions; optimal detector
		design & hypothesis testing; Chebyshev & Chernoff bounds; experiment design

	- [Geometric problems]({{CO}}#page=411)

		Projection on a set; distances between sets; Euclidean distances & angle
		problems; extremal volume ellipsoids; centering; classification; placement
		& location; floorplanning

	- [Unconstrained optimization]({{CO}}#page=471)

		Problems; descent methods; gradient descent; steepest descent; Newton's method;
		self-concordance; implementation

	- [Equality-constrained minimization]({{CO}}#page=535)

		Problems; Newton's method; infeasible-start Newton's method; implementation

	- [Interior-point methods]({{CO}}#page=575)

		Problems; log-barrier function & central path; barrier method; feasibility &
		phase I methods; complexity analysis; general-inequality problems; primal-dual
		methods; implementation

	- [Appendix: Math]({{CO}}#page=647)

		Norms; analysis; functions; derivatives; linear algebra

	- [Appendix: Two-quadratic-function problems]({{CO}}#page=667)

		Single-constraint optimization; S-procedure; symmetric matrix values;
		strong duality proofs

	- [Appendix: Numerical linear algebra]({{CO}}#page=675)

		Matrix structures & algorithm complexity; solving linear equations with
		factored matrices; LU, Cholesky & LDL factorization; block elimination &
		Schur complements; solving under-determined linear equations
