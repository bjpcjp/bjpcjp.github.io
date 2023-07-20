---
title: Gallium Arsenide book notes
layout: default-foundation-20210515
date: 2023-02-21 10:10
tags: booknotes semiconductors
---

<h2>{{page.title}}</h2>

{% assign book = "/pdfs/chips/GaN-transistors-power-conversion.pdf" %}

<div style="columns: 2;">

<div class="card">
	<div class="card-image">
		<a href="{{book}}">
			<img src="/px/chips/gallium-arsenide-book-cover.png"/></a> 
	</div>
</div>

<div class="card">
	<div class="card-divider">
		<a href="{{book}}#page=9">contents</a></div>
</div>

<div class="card">
	<div class="card-divider">
		<a href="{{book}}#page=19">technology overview</a></div>
	<div class="card-section">
		- History<br>
		- Benefits<br>
		- Transistor structure<br>
		- Manufacturing<br>
	</div>
</div>

<div class="card">
	<div class="card-divider">
		<a href="{{book}}#page=37">transistor characteristics</a></div>
	<div class="card-section">
		- Intro<br>
		- Device parameters<br>
		- Capacitance & charge<br>
		- Reverse conduction<br>
		- Thermal resistance<br>
		- Transient thermal impedance<br>
		- summary<br>
	</div>
</div>

<div class="card">
	<div class="card-divider">
		<a href="{{book}}#page=57">drivers</a></div>
	<div class="card-section">
		- Intro<br>
		- Gate drive voltage<br>
		- Bootstrapping & floating supplies<br>
		- dv/dt immunity<br>
		- di/dt immunity<br>
		- Ground bounce<br>
		- Common mode current<br>
		- Gate driver edge rate<br>
		- Driving cascode GaN devices<br>
		- summary<br>
	</div>
</div>

-<div class="card">
	<div class="card-divider">
		<a href="{{book}}#page=73">physical layout</a></div>
	<div class="card-section">
		- Intro<br>
		- Minimizing parasitic inductance<br>
		- Conventional power loop designs<br>
		- Power loop optimization<br>
		- Paralleling GaN transistors<br>
		- summary<br>
	</div>
</div>

<div class="card">
	<div class="card-divider">
		<a href="{{book}}#page=88">modeling / measurement</a></div>
	<div class="card-section">
		- Intro<br>
		- Electrical modeling<br>
		- Thermal modeling<br>
		- Performance measurement<br>
		- summary<br>
	</div>
</div>

<div class="card">
	<div class="card-divider">
		<a href="{{book}}#page=107">hard-switch topologies</a></div>
	<div class="card-section">
		- Intro<br>
		- Loss analysis<br>
		- External factors<br>
		- Reducing body diode conduction losses<br>
		- Frequency impact on magnetics<br>
		- Buck converter example<br>
		- summary<br>
	</div>
</div>

<div class="card">
	<div class="card-divider">
		<a href="{{book}}#page=146">resonant & soft-switch topologies</a></div>
	<div class="card-section">
		- Intro<br>
		- Techniques<br>
		- Device parameters<br>
		- Example: high-frequency resonant bus converter<br>
	</div>
</div>

<div class="card">
	<div class="card-divider">
		<a href="{{book}}#page=168">RF performance</a></div>
	<div class="card-section">
		- Intro<br>
		- RF vs switching transistors<br>
		- RF basics<br>
		- RF transistor metrics<br>
		- Amplifier design with small-signal S-parameters<br>
		- Amplifier design example<br>
	</div>
</div>

<div class="card">
	<div class="card-divider">
		<a href="{{book}}#page=190">space applications</a></div>
	<div class="card-section">
		- Intro<br>
		- Failure mechanisms<br>
		- Radiation exposure & tolerance stds<br>
		- Gamma radiation tolerance<br>
		- Single-event effects (SEE) testing<br>
		- Performance vs rad-hard silicon MOSFETs<br>
		- summary
	</div>
</div>

<div class="card">
	<div class="card-divider">
		<a href="{{book}}#page=197">more applications</a></div>
	<div class="card-section">
		- Intro<br>
		- DC-DC converters (non-isolated)<br>
		- DC-DC converters (isolated)<br>
		- Class-D audio<br>
		- Envelope tracking<br>
		- Highly resonant wireless energy transfer<br>
		- LIDAR & pulsed lasers<br>
		- Power correction factor<br>
		- Motor drive & photovoltaic inverters<br>
		- summary<br>
	</div>
</div>

<div class="card">
	<div class="card-divider">
		<a href="{{book}}#page=250">replace silicon power mosfets</a></div>
	<div class="card-section">
		- Rate of adoption<br>
		- GaN capabilities<br>
		- Ease of use<br>
		- Cost vs time<br>
		- Reliability<br>
		- Trends<br>
		- Conclusion<br>
	</div>
</div>

</div>