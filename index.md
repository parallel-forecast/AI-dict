---
layout: default
title: Home
nav_order: 1
permalink: /
search_exclude: true
---

# Scalable, collaborative resolution standards
{: .fs-9 }

The **AI Forecasting Dictionary {{ site.version }}** is {{ site.description }}
{: .fs-6 .fw-300 }

[Browse the Dictionary](/AI-dict/docs/dictionary){: .btn .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-2 } [Contribute](#contributing){: .btn .fs-5 .mb-4 .mb-md-0 }

---

## Why build a dictionary?

The future is big.

1. To model it, we’re going to need to forecast *a lot* of questions.

2. Yet the task of ‘operationalization’ -- making a vague question specific enough it can be tied to real world events -- is hard, and currently done in a siloed, highly time-consuming manner.

3. So in order to forecast AI we must achieve economies-of-scale -- making it cheap to write and answer the marginal question by efficiently reusing work across them.

Building a Dictionary is a piece of the puzzle to do this.

### Low overhead

When writers don’t have to reinvent the wheel whenever they operationalise a new thought, and forecasters can reduce the drag of constantly interpreting new resolutions, we can both generate and answer more questions.

### High signal

There are a number of [common pitfalls](/AI-dict/docs/best-practices) that can make a seemingly valid question ambiguous or misleading. Carefully avoiding these comes with a high initial cost -- and we can make that worth it by ensuring the work is broadly used and built upon.

### Stable yet flexible

Drawing upon best practices for software version management, we can allow resolution conditions that change and improve over time while maintaining the precision necessary for quantitative reasoning.

## How do I use the Dictionary?

Simply write a question relying on definitions from the Dictionary, and append the tag [ai-dict-vX.Y.Z] (by the question title or somewhere in an accompanying description).

For example:

`I predict that image classification will be made robust against
adversarial examples by 2023. [ai-dict-v2]`

`Will there be a superhuman Starcraft agent trained using less than $10.000 of publicly available compute by 2025? [ai-dict-v1.0.4]`

More details can be found [here](/AI-dict/docs/guidelines/#usage).

---

## About

The Dictionary is &copy; 2019 by [Parallel, LLC](https://parallelforecast.com/#/).
The latest release is {{ site.version }}.

### License

The Dictionary is distributed by an [MIT license](https://github.com/parallel-forecast/AI-dict/blob/master/LICENSE.md).

### Contributing

We welcome contributions, as long as they follow [our guidelines](/AI-dict/docs/guidelines). You can do so via:
* A pull-request in our [GitHub Repo](https://github.com/parallel-forecast/AI-dict), to the file ```/docs/dictionary.md``` ([What does this mean?](https://help.github.com/en/articles/creating-a-pull-request-from-a-fork))
* By making a suggestion in the [Google Doc version of the Dictionary](https://docs.google.com/document/d/1faRzWgu9AP7qOZ5PfIE1_yVAzf1nJOjslzPwUhXDanc/edit?usp=sharing)[^1]

You can also check out the [Open Problems](/AI-dict/docs/open_problems) for discussion of more high-level
design issues.

### Contact

Reach out at hello@parallelforecast.com.

___

 [^1]: <small>Please note that we do not ensure the Google Doc version is up-to-date, and is not as easily maintained using [Semantic Versioning](https://semver.org/). It should merely be treated as a convenient method for discussing dictionary terms, and not a resolution source.</small>
