---
layout: default
title: Dictionary
nav_order: 2

---

# Dictionary {{ site.version }}
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

### Actor, single

* Recognised legal entity, including but not limited to a...
    * For-profit firm (including [capped-profit structures](https://web.archive.org/web/20190430053255/https://openai.com/blog/openai-lp/))
    * Non-profit
    * Government
    * University
* Artificial agent (a particular instance of a particular piece of software.
  Multiple separately instantiated copies does not count as a single actor if they operate independently,
  but do if they are e.g. rented out by a single actor)

... or any legally binding partnership of the above

Examples:
* OpenAI
* The Chinese Government
* AlphaGo

Non-examples:
* A circle of friends
* A tidal wave
* Alphabet *and* Apple
* An informal project within an organization
* The open-source community

___

### Adversarial example

An input edited with some human-unnoticeable perturbation causing it to be misclassified by the system.

Examples:
* Adding a transparent sticker with a few pixels on it to a road sign, causing a Tesla to crash
* Overlaying an unnoticeable audio sample to a radio broadcast causing a Google Home/Alexa/etc to do something

Non-examples:
* Putting a political sticker on a road sign causing a Tesla to crash (even if it's intentional)
* Removing the road sign causing the Tesla to crash
* Making an elaborate chalk drawing causing a cartoonish optical illusion of the road veering off

___

### Automatable

*See also: [Job](#job)*

A job is automatable at a time t if a machine can outperform the median-skilled employee, with 6 months of training or less, at 10,000x the cost of the median employee or less.
Unless otherwise specified, the date of automation will taken to be the first time this threshold is crossed.

Examples:
* As of 2019, [Elevator Operator](https://web.archive.org/web/20190318031620/https://qz.com/932516/over-the-last-60-years-automation-has-totally-eliminated-just-one-us-occupation/)

Non-examples:
* As of 2019, Ambulance Driver
* As of 2019, Epidemiologist

___

### Compute, training

Amount of compute used to train a particular architecture, measured in petaflop/s-days,
calculated using the [Amodei and Hernandez (2018)](https://web.archive.org/web/20190529075648/https://openai.com/blog/ai-and-compute/)
methodology.

Details:

* Assumes a GPU utilisation of ~33% and CPU utilization of ~17%.
* “We count adds and multiplies as separate operations, we count any add or multiply as a single operation regardless of numerical precision (making “FLOP” a slight misnomer), and we ignore ensemble models.”

Examples:
* See the Amodei and Hernandez paper above for numerical examples of applying this measure to various systems

Non-examples:
* The total compute used for all experiments in a single paper
* The compute used for hyperparameter tuning
* The compute used for architecture search
* The compute used for inference during testing (but not during training)

___

### Credible report of AI system

Any item in:
* Blog-post co-authored by at least one of the researchers
* Pre-print posted to arXiv or similar
* Peer-reviewed (published) paper
* Second-hand report from a trusted source providing at least as much information as
the median acceptable blog post

Examples:

Non-examples:

___

### Human-machine intelligence parity

(As suggested by [Aguirre (2016) in a previous question on forecasting platform Metaculus](https://web.archive.org/web/20161204093931/https://www.metaculus.com/questions/384/human-machine-intelligence-parity-by-2040/).)

Human-machine intelligence parity is said to have been reached if there is a machine system which outscores at least two of the three humans on the following generalized intelligence test:

> A team of three expert interviewers will interact with a candidate machine system (MS) and three humans (3H). The humans will be graduate students in each of physics, mathematics and computer science from one of the top 25 research universities (per some recognized list), chosen independently of the interviewers. The interviewers will electronically communicate (via text, image, spoken word, or other means) an identical series of exam questions of their choosing over a period of two hours to the MS and 3H, designed to advantage the 3H. Both MS and 3H have full access to the internet, but no party is allowed to consult additional humans, and we assume the MS is not an internet-accessible resource. The exam will be scored blindly by a disinterested third party

Examples: 

Non-examples:
* Any actually implemented system, as of 2019. 

___

### Job

One of the occupations [listed by the U.S. Bureau of Labor Statistics](https://web.archive.org/web/20190514175951/https://www.bls.gov/oes/current/oes_stru.htm).

Examples:
* Web Developer
* Epidemiologist
* Forester
* Electrician

Non-examples:

___

### Module

Some division of an AI system such that all information between modules is human legible.

As an example, AlphaZero has two modules: a neural net, and a monte carlo tree search. The neural net, when given a boardstate, has two outputs to the tree search: a valuation of the board, and a policy over all available actions.

The “board value” is a single number between -1, and 1. A human cannot easily assess how the neural net reached that number, but the human can say crisply what the number represents: how good this board state is for the player. Similarly with the policy output. The policy is a probability vector. A human can conceptualize what sort of object it is: a series of weightings on the available moves by how likely those move are to lead to a win. The board value and the policy are both “human legible”.

Contrast this with a given floating point number inside of a neural net, which will rarely correspond to anything specific from a high-level human perspective. A floating point number in a neural net is not “human legible”.

A module is a component of a neural net that only outputs data that is legible in this way. (In some cases, such as the Monte Carlo Tree search of AlphaZero, the internal representation of a module will be human legible, and therefore that module could instead be thought of as several modules. In such cases, prefer the division that has the fewest number of modules.)

Examples:
* AlphaZero is made up of two modules: the neural net and the monte carlo tree search.
* An end-to-end neural network that takes in all sense data and outputs motor plans should be thought of as composed of only 1 module.

Non-examples:
* One neuron in a hidden layer in AlphaZero's neural net

___

### Transformative Artificial Intelligence

AI that precipitates a transition comparable to (or more significant than) the agricultural or industrial revolution. (As suggested by [Karnofsky (2016)](https://www.openphilanthropy.org/blog/some-background-our-views-regarding-advanced-artificial-intelligence#Sec1).)

Note that a TAI system is not necessarily an AGI system, as long as its impact mediated by narrow capabilities is sufficiently transformative (as was e.g. the case for inventions during the original agricultural and industrial revolutions). 

Examples:
* AI systems capable of fulfilling all the necessary functions of human scientists, unaided by humans, in developing another technology (or set of technologies) that ultimately becomes widely credited with being the most significant driver of a transition comparable to (or more significant than) the agricultural or industrial revolution. Note that just because AI systems *could* accomplish such a thing unaided by humans doesn’t mean they *would*; it’s possible that human scientists would provide an important complement to such systems, and could make even faster progress working in tandem than such systems could achieve unaided. 

Karnofsky (2016) emphasizes the hypothetical possibility of AI systems conducting substantial unaided research to draw a clear distinction from the types of AI systems that exist today. He believes that AI systems capable of such broad contributions to the relevant research would likely dramatically accelerate it.

* AI systems capable of performing tasks that in 2016 accounted for the majority of full-time [jobs](#job) worldwide, and/or over 50% of total world wages, unaided and for costs in the same range as what it would cost to employ humans. 

Aside from the fact that this would likely be sufficient for a major economic transformation relative to today, Karnofsky (2016) also thinks that an AI with such broad abilities would likely be able to far surpass human abilities in a subset of domains, making it likely to meet one or more of the other criteria laid out here.

* Surveillance, autonomous weapons, or other AI-centric technology that becomes sufficiently advanced to be the most significant driver of a transition comparable to (or more significant than) the agricultural or industrial revolution. 

(This contrasts with the first point because it refers to transformative technology that is itself AI-centric, whereas the first point refers to AI used to speed research on some other transformative technology.)

Non-examples:
* Any AI system that exists as of 2019.

___

### Years of experience used by an algorithm

The number of human-year-equivalents used in training by an algorithm. This metric mostly makes sense for domains with a defined realtime speed (e.g. games like Starcraft or Dota), but can also be extended to other domains (e.g. one might estimate the average time of a Go move to do the calculation for AlphaGo).

* If the same sample or data-point is presented to the algorithm multiple times during training, this counts multiple times towards the total. For comparison, if a human learning Spanish grammar needs to repeat the same vocabulary item 10 times, it makes sense to say that this human’s cognitive algorithm required 10 and not 1 sample to learn.
* If the algorithm uses some kind of meta-learning or transfer learning, we include the samples used for training the initial model as well, unless otherwise indicated.
* If the algorithm uses imitation learning, we do not include the years of experience required to produce the underlying data.

Examples:

Non-examples:
