---
layout: default
title: Best practices
nav_order: 5
search_exclude: true
---

# Best practices for question writing
{: .no_toc }

This page lists recommendations and common failure modes involved in crafting good forecasting questions.
{: .fs-6 .fw-300 }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

___

## Failure modes of operationalization

These are some common ways in which a technical forecasting question can
fail to capture the important, intended uncertainty. (Note that the below examples are not fully fleshed out questions, in order to allow for easier reading.)

### Ambiguity

Terms that can have many different meanings, such as "AGI" or "hardcoded knowledge". 

### Underspecification

Resolution criteria that neglects to specify how questions should be resolved in some possible scenarios. 

**Examples**

Resolving
```
This questions resolves positively if an article in a
reputable journal article finds that ommerically-available
automated speech recognition is better than human speech recognition
(in the sense of having a lower transcribing error rate). 
```
if a journal article is published that finds that in only in some domains commerically-available automated speech recognition is better, but worse in most other domains, it is unclear from the resolution criteria how this question should be resolved.  

### Spurious resolutions

Edge-case resolutions that technically satisfy the description as written, yet fail to capture the intention of the question.

**Examples**

Positively resolving the question:
```
Will there be an incident causing the loss of human life in the
South China Sea (a highly politically contested sea in the pacific ocean) by 2018?
```
by having a battleship accidentally run over a fishing boat. (This is adapted from an actual question used by the Good Judgment Project.)

Positively resolving the question:
```
Will an AI lab have been nationalized by 2024?
```
by the US government nationalising Ford for auto manufacturing reasons, yet Ford nonetheless having a self-driving car research division.

### Trivial pathways

An unrelated causal pathway to resolution “screens off” the intended pathways.

**Examples**

Forecasting
```
When will there be a superhuman Angry Birds agent using no hardcoded
knowledge?
```
and realizing that there seems to be little active interest in the yearly benchmark competition (with performance even declining over years). This means that the probability entirely depends on whether anyone with enough money and competence decides to work on it, as opposed to what key components make Angry Birds difficult (e.g. physics-based simulation) and how fast progress is in those domains.

Forecasting
```
How sample efficient will the best Dota 2 RL agent be in 2020?
```
by analyzing OpenAI’s decision on whether or not to build a new agent, rather than the underlying difficulty and progress of RL in partially observable, high-dimensional environments.

Forecasting
```  
Will there have been a 2-year interval where the amount of training
compute used in the largest AI experiment did not grow 32x, before 2024?
```
by analyzing how often big experiments are run, rather than what the key drivers of the trend are (e.g. parallelizability and compute economics) and how they will change in future.

### Failed parameter tuning

Any [free variables](/AI-dict/docs/open_problems#how-should-we-deal-with-terms-with-free-variables) are set to values which do not maximise uncertainty.

**Examples**

Having the answer to:
```  
When will 100% of jobs be automatable at a performance close to the
median employee and cost <10,000x of that employee?
```
be very different from using the parameter ```99.999%```, as certain edge-case jobs ("underwater basket weaving") as surprisingly hard to automate but for non-interesting reasons.

Asking:
```
Will global investment in AI R&D be <$100 trillion in 2020?
```
is not interesting, even though asking about values in the range of ```~$30B``` to ```~$100B``` might have been.


### Non-incentive compatible questions

Questions where the answer that would score highest on some scoring metric is different from the forecasters truthful answer.

**Examples**

Forecasting ```Will the world end in 2024?”``` as ```1%``` (or whatever else is the minimum for the given platform), because for any higher number you wouldn’t be around to cache out the rewards of your calibration.

## General suggestions for question writing

### Importance

Questions should either be of intrinsic importance or be relevant to important existing questions.

All else equal, a question is better the more important its resolution is. The greater the stakes, or the larger the scale of the impact of the question’s resolution on industry, academia and society, the more interesting the question.

Some questions might not themselves be intrinsically important, but be highly diagnostic or informative about questions that are intrinsically important. Take for example the recent question on whether a [mouse will have lived for 2,500 days before 1 January 2035?]( https://www.metaculus.com/questions/1624/will-a-mouse-be-confirmed-to-have-lived-for-2500-days-before-1-january-2035/). Although the lifespan of mice seems to be of little larger societal importance, it is actually considered a critical precursor to the development of human anti-aging techniques. This might therefore serve to inform the community on important questions, such as [whether someone born before 2001 live to be 150?](https://www.metaculus.com/questions/353/will-someone-born-before-2001-live-to-be-150/). 

### It holds predictors accountable

All else equal, a question is better the higher its probability of non-ambiguous resolution. 

In order to have an incentive to make good predictions at all, predictors should at least be faced with the prospect of being differentially punished or rewarded for the predictions they make. When a question resolves ambiguous, users are not accountable to the predictions made, and therefore are not additionally encouraged to make good probabilistic predictions.

Has a high feedback rate (probability of non-ambiguous resolution per unit time)
Not everyone is looking to stay on Metaculus forever. In fact, there is even some speculation that [Metaculus won’t be around in 2030]( https://www.metaculus.com/questions/841/will-metaculus-exist-in-2030/).  Hence, all else equal, it seems better to have as soon as possible non-ambiguous resolution. This increases both the rate at which predictors learn from past predictions, and the rate at which users and Metaculus understands how, on the aggregate, predictors are able to forecast different types of outcomes. All else equal, the faster the probability of non-ambiguous resolution, the better the question.


### Has a high feedback rate

All else equal, a question is better the more quickly it can be expected to be resolved.

A higher feedback rate increases both the rate at which predictors learn from past predictions, and the rate at which users and Metaculus understands how, on the aggregate, predictors are able to forecast different types of outcomes. All else equal, the faster the probability of non-ambiguous resolution, the better the question. 

Of course, many of the most important questions are about events in the medium to long-term future. Balancing this trade-off between importance and generating a high feedback rate should involve asking questions that are highly diagnostic about the medium to far future which can be known sooner.

### Generates valuable information

Though not always necessary, it is good if there is some reason to suspect that the predictions on the question have potential for informing people of something they did not already know, and generate information that is not much worse than information easily attainable elsewhere (such as through financial or betting markets), or attainable through simple extrapolation.





