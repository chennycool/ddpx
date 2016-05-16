---
title       : Body Mass Index
subtitle    : BMI Calculator
author      : Chennycool
job         : Coursera project
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

  The body mass index (BMI) or Quetelet index is a value derived from the mass (weight) and height of an individual. 
  The BMI is an attempt to quantify the amount of tissue mass (muscle, fat, and bone) in an individual, and then categorize that person as underweight, normal weight, overweight, or obese based on that value.

---
  
---
## The Algorithm


```r
Weight<- 65
Height<- 1.70
BMI<- (Weight) / (Height^2)
BMI
```

```
## [1] 22.49135
```

The BMI is defined as the body mass divided by the square of the body height, resulting from mass in kilograms and height in metres.

--- 
---
## BMI Calculator
![image:](ddpx.png)

Screenshot of shiny app for BMI Calculator





