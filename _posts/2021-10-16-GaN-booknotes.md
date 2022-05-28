---
title: Gallium Arsenide book notes
layout: default-foundation-20210515
date: 2021-10-16
tags: circuit-design booknotes
---

<h2>{{page.title}}</h2>

<div class="card" width="50%">
	<div class="card-image">
		<img src="/px/chips/gallium-arsenide-book-cover.png"/> 
	</div>
</div>

{% assign book = "/pdfs/chips/GaN-transistors-power-conversion.pdf" %}

- [contents]({{book}}#page=9)
- [GaN technology overview]({{book}}#page=19)
	- History
	- Benefits
	- Transistor structure
	- Manufacturing

- [Transistor characteristics]({{book}}#page=37)
	- Intro
	- Device parameters
	- Capacitance & charge
	- Reverse conduction
	- Thermal resistance
	- Transient thermal impedance
	- summary

- [Drivers]({{book}}#page=57)
	- Intro
	- Gate drive voltage
	- Bootstrapping & floating supplies
	- dv/dt immunity
	- di/dt immunity
	- Ground bounce
	- Common mode current
	- Gate driver edge rate
	- Driving cascode GaN devices
	- summary

- [Layout]({{book}}#page=73)
	- Intro
	- Minimizing parasitic inductance
	- Conventional power loop designs
	- Power loop optimization
	- Paralleling GaN transistors
	- summary

- [Modeling & Measurement]({{book}}#page=88)
	- Intro
	- Electrical modeling
	- Thermal modeling
	- Performance measurement
	- summary

- [Hard-Switch Topologies]({{book}}#page=107)
	- Intro
	- Loss analysis
	- External factors
	- Reducing body diode conduction losses
	- Frequency impact on magnetics
	- Buck converter example
	- summary

- [Resonant & Soft-Switch Topologies]({{book}}#page=146)
	- Intro
	- Techniques
	- Device parameters
	- Example: high-frequency resonant bus converter

- [RF performance]({{book}}#page=168)
	- Intro
	- RF vs switching transistors
	- RF basics
	- RF transistor metrics
	- Amplifier design with small-signal S-parameters
	- Amplifier design example

- [Space applications]({{book}}#page=190)
	- Intro
	- Failure mechanisms
	- Radiation exposure & tolerance stds
	- Gamma radiation tolerance
	- Single-event effects (SEE) testing
	- Performance vs rad-hard silicon MOSFETs
	- summary

- [Application examples]({{book}}#page=197)
	- Intro
	- DC-DC converters (non-isolated)
	- DC-DC converters (isolated)
	- Class-D audio
	- Envelope tracking
	- Highly resonant wireless energy transfer
	- LIDAR & pulsed lasers
	- Power correction factor
	- Motor drive & photovoltaic inverters
	- summary

- [Replacing silicon power MOSFETs]({{book}}#page=250)
	- Rate of adoption
	- GaN capabilities
	- Ease of use
	- Cost vs time
	- Reliability
	- Trends
	- Conclusion