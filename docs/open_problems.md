---
layout: default
title: Open problems
nav_order: 6
search_exclude: true
---

# Open Problems
{: .no_toc }

We're still in the early stages of experimenting with forecasting dictionaries,
and intend to learn as we go and stay receptive to the needs of the forecasting community.
{: .fs-6 .fw-300 }

This page lists some current open problems we're thinking about.
{: .fs-6 .fw-300 }

___

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

___

### How we should we deal with big, vague, important terms?

*Discuss this problem in [this GitHub issue](https://github.com/parallel-forecast/AI-dict/issues/3).*

A key example here is "AGI", which can be interpreted in many different ways.
Approaches include:

**Option 1**

Using some kind of more granular naming, e.g.

```
AGI.d1
AGI.d2
AGI.d3
```

**Option 2**

Decide on one single definition.

**Option 3**

Getting rid of big, ambiguous words like "AGI" entirely, replacing them with a larger
range of smaller words (e.g. "high-level machine intelligence", "human-level machine intelligence", "superintelligence", etc.)

**Option 4**

Allowing a tree structure of terms with classes and inheritance, as is done in
object-oriented programming.

___

### How should we deal with terms with free variables?

*Discuss this problem in [this GitHub issue](https://github.com/parallel-forecast/AI-dict/issues/4).*

Consider the Open Philanthropy Project's [sample definition](https://www.openphilanthropy.org/focus/global-catastrophic-risks/potential-risks-advanced-artificial-intelligence/ai-timelines#What_are_we_trying_to_forecast) of "high-level machine
intelligence" (HLMI):

> A computer system can outperform the median-skilled employee...
> * ...for 95% of occupations listed by the U.S. Bureau of Labor Statistics...
> * ...with 6 months of training or less...
> * ...at 10,000x the cost of the median employee or less

Different choices of input parameters (95%, 6 months, 10000x) can
capture very different things,

**Option 1**

Restrict all future use cases to a particular parameterization.

**Option 2**

Allow functions in the dictionary, e.g. listing the term as:

```
HLMI(percentage, months, cost-multiple)
```

and writing questions as:

```
By 2029, will we have HLMI(0.95, 6, 10000)? [ai-dict-v1]
```
___

### What is the right long-term data structure for storing the dictionary?

We're currently using a markdown file as an MVP, but this is very limited in
terms of e.g. database functionality.
