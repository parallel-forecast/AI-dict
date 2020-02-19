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

### Artificial General Intelligence (Unclear / Disputed)

An artificial intelligence system that has capabilities similar to that of humans, 
including the ability to learn arbitrary new tasks and perform them.

Examples:
* Hypothesized future systems that think and act similarly to humans, are agentic, 
with articulable goals. They are capable of performing any individual task or job 
a human would do, including creative or abstract thought.

Unclear:
* Comprehensive AI Services capable of performing every human job or task
* Systems able to learn any one human task or job, including high level or creative 
ones, but that are not able to adapt or learn.

Non-examples:
* Any currently extant system

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

This includes either actual elimination of such jobs at costs less than those quoted above, or the ability to replace all aspects of the job, making full replacement possible. For instance, self-driving trucks which cannot load or unload deliveries would potentially make most freight truck jobs (NAICS code 4841) automatable, but would not make specialized trucking (NAICS code 4842,) such as home moving company drivers (NAICS code 484210) automatable.
(See: https://www.naics.com/naics-code-description/?code=484)

___

### Collective AI Service

A composition of narrow AI systems or modules (as defined in the dictionary) that in combination performs a specific task at a human level, without any single system that can perform tasks at a human level. (As discussed by Eric Drexler.)

Examples: 
* A self-driving car composed of (1) a module that plans routes and outputs , (2) a module that ingests information and updates an environment, perhaps shared between cars, and (3) a module that drives the car along a route provided by module 1, while avoiding obstacles in the environment provided by module 2, is a collective service that allows self-driving cars despite each module being distinct.

Non-examples:

* Systems that can do individual tasks at human or superhuman levels, but are unable to be
automatically combined in ways that allow human level performance at full jobs.
* Artificial General Intelligence, as defined above. 


___

### Compute, operational

Amount of compute used to deploy a trained model, in petaflop/s. 

This is exclusive of compute used to further improve the system, but not compute used to maintain the system’s viability. 

Examples: 
* A self-driving car which ingests environmental data to update its environment model to avoid obstacles, and that process is necessary for operation. 

Non-examples: 
* A self-driving car may use experience as an input into a network to improve driving in the future, 
but this step is not necessary for its operation.

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

### Compute, architecture search

The amount of compute used testing or training different architectures before the eventually trained module’s structure is deployed or trained. (This is exclusive of the hyperparameter search and the final system training time.)

Examples:


Non-examples:

___

### Compute, hyperparameter search

The amount of compute used testing or training with different hyperparameters before the eventually trained module is deployed or trained. (This is exclusive of the final system training time.)

Examples:

Non-examples:

___

### Compute, Total needed

*See also: [Compute, training](#compute-training), [Compute, training](#compute-architecture-search), [Compute, training](#compute-hyperparameter-search)*

The sum of the compute for architecture search, hyperparameter search, and training as defined above.

Examples:
* GPT was built using __ total compute, including architecture search, hyperparameter searche, and
training.


Non-examples:
* AlphaGo's reported total compute in the published papers, which excludes search.

___

### Credible media report

An outlet widely viewed as a credible source publishes a news article that attests to something having happened. (Note: announcing that a researcher or company claims something, is potentially a [Credible technical announcement](#credible-technical-announcement), but not a credible media report in this sense.)

Examples: 
* Articles in CNN, Fox News, or the New York Times witnessing an event.
* CNN reporting that AlphaGo won 4 of 5 matches against Lee Sedol

Non-examples: 
* Personal or Corporate blog-posts.
* Preprints claiming results

___

### Credible technical announcement

Any item in:
* Blog-post co-authored by at least one of the researchers, or pre-print posted to arXiv or similar,
along with either a working example of outputs or demo version of the system, or credible media 
reports of the systems operation.
* Peer-reviewed (published) paper in a well-known journal, even without outputs, demos, or media reports.
* Second-hand report from a trusted academic or technical source providing at least as much information
as the median acceptable blog post.

Examples:
* Arxiv preprint announcing AlphaGo, along with media reports of winning against high-level players.

Non-examples:
* ArXiv preprint announcing success at cold fusion.
* Claims in media by the authors or designers.
* Paper in a pay-to-publish, minimally peer-reviewed journal without working code or examples of output.

___

### Deep Learning

(Disputed / Unclear) A set of techniques currently used in machine learning involving neural networks with many layers, and related structures.

Definite Examples:
* Neural Networks, including recurrent neural networks, convolutional neural networks, transformers, and similar with hundreds of layers

Unclear / Disputed Examples:
* Neural Networks with five or ten layers
* Generative adversarial networks, which involve multiple neural networks
* Future potential advances in machine learning that are in some ways similar to current neural networks.

Non-examples:
* Single layer neural networks
* Linear regression
* Theorized general intelligence systems based on other approaches.


___

### High-level machine intelligence

(As suggested by [Muehlhauser (2016)](https://www.openphilanthropy.org/focus/global-catastrophic-risks/potential-risks-advanced-artificial-intelligence/ai-timelines#What_are_we_trying_to_forecast).)

A system is a high-level machine intelligence if it can be used to [Automate](#automatable) at least 95% of [Jobs](#job).

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

### Safe, Artificial Intelligence (Ambiguous / Disputed)

A human designed system that does at least approximately what the designer and/or user intended it to do, without
significant unwanted side effects.

Examples:
* AlphaGo

Unclear examples:
* Systems that have been experimentally verified to operate within planned constraints.
* Systems which obey orders that should not be allowed, such as military systems being operated by 
rogue factions without authorization.
* Systems that refuse orders that they are given, which cannot be overridden, because the system decides 
the outcome would be unacceptable.

Non-Examples:
* Humans
* Anything in Victoria Kraknova's list of specification failures, where systems did not do what
the designer intended. 
(https://vkrakovna.wordpress.com/2018/04/02/specification-gaming-examples-in-ai/)


___

### Scaling

The ability of a system to operate better due solely to increased resources of a specific type or types.

Examples:
* A machine learning system improving at a task when given additional training data.
* A neural network that improves due to increasing its size, spending more time on hyperparameter search,
 or being given longer to train on data.
 
Ambiguous Cases:
* A system that is improved by changing from one structure or training type to a different type of
 structure, such as the transition from AlphaGo to AlphaZero.

Non-examples:
* Improvement at a task due to fundamental breakthroughs or new structure types.


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
* The OpenAI Five system was credibly technically reported to have used 10,000 years of human experience in training the system; https://arxiv.org/abs/1912.06680

Non-examples:
