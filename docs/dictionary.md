---
layout: default
title: Dictionary
nav_order: 2
has_children: true

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

This includes either actual elimination of such jobs at costs less than those quoted above, or the ability to replace all aspects of the job, making full replacement possible. For instance, self-driving trucks which cannot load or unload deliveries would potentially make most freight truck jobs (NAICS code 4841) automatable, but would not make specialized trucking (NAICS code 4842,) such as home moving company drivers (NAICS code 484210) automatable.
(See: https://www.naics.com/naics-code-description/?code=484)

___

### Comprehensive AI Service (CAIS)
Ambiguous
{: .label .label-red }

A composition of Narrow AI systems or modules (as defined in the dictionary) that in combination performs a specific task at a human level, without any single system that can perform tasks at a human level. (As discussed by Eric Drexler.)

Examples: 
* A self-driving car composed of (1) a module that plans routes and outputs , (2) a module that ingests information and updates an environment, perhaps shared between cars, and (3) a module that drives the car along a route provided by module 1, while avoiding obstacles in the environment provided by module 2, is a collective service that allows self-driving cars despite each module being distinct.

Ambiguous Examples: 
* A collection of systems which are, or can be, automatically combined to autonomously perform tasks at or above a human level.

Non-examples:

* Systems that can do individual tasks at human or superhuman levels, but are unable to be
automatically combined in ways that allow human level performance at full jobs.
* Artificial General Intelligence, as defined above. 



Ambiguous
{: .label .label-red }

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

### Foom
Unclear
{: .label .label-red }
Disputed
{: .label .label-red }

The hypothesis that AI systems will reach a point where very rapid (but perhaps not discontinuous)
progress occurs near the point at which AGI is acheived due to self-improvement or similar capabilities.
Arguments for this include [Intelligence Explosion]. See discussion in Bostrom's Superintelligence.

___

### Full Automation

When every human task, including both every extant [Job] and any future type of work, including creative
and emotional tasks can be done by a [system] better than humans. 

Note: Many have argued this implies [Artificial General Intelligence], but recent arguments note [Comprehensive AI Services] could accomplish this.

___

### High-level machine intelligence

A [system], per Muller and Bostrom, 2014, "that can carry out most human professions at least as well as
a typical human." https://www.nickbostrom.com/papers/survey.pdf They noted that further specification
would be helpful, but it "very likely implies being able to pass a classic Turing test."

This was further specified by Meulhauser, 2016: A system is a high-level machine intelligence if it can
be used to [Automate](#automatable) at least 95% of [Jobs](#job).
https://www.openphilanthropy.org/focus/global-catastrophic-risks/potential-risks-advanced-artificial-intelligence/ai-timelines#What_are_we_trying_to_forecast


Examples:

Non-examples:

___


### Human-machine intelligence parity

(As suggested by [Aguirre (2016) in a previous question on forecasting platform Metaculus](https://web.archive.org/web/20161204093931/https://www.metaculus.com/questions/384/human-machine-intelligence-parity-by-2040/).)

Human-machine intelligence parity is said to have been reached if there is a machine system which outscores at least two of the three humans on the following generalized intelligence test:

> A team of three expert interviewers will interact with a candidate machine system (MS) and three humans (3H). The humans will be graduate students in each of physics, mathematics and computer science from one of the top 25 research universities (per some recognized list), chosen independently of the interviewers. The interviewers will electronically communicate (via text, image, spoken word, or other means) an identical series of exam questions of their choosing over a period of two hours to the MS and 3H, designed to advantage the 3H. Both MS and 3H have full access to the internet, but no party is allowed to consult additional humans, and we assume the MS is not an internet-accessible resource. The exam will be scored blindly by a disinterested third party

Examples: 
* A future system that passes the test proposed by Aguirre.

Non-examples:
* Any actually implemented system, as of 2019. 

___

### Human Task

See: [Job]. In Greutzmacher et al 2019, this was "all tasks that humans are currently paid to do."

Note: As discussed in that entry, the definition of [Job] changes over time.

___

### Intelligence Explosion

Per I.J. Good, "Let an ultraintelligent machine be defined as a machine that can far surpass all the intellectual activities of any man however clever. Since the design of machines is one of these intellectual activities, an ultraintelligent machine could design even better machines; there would then unquestionably be an ‘intelligence explosion’, and the intelligence of man would be left far behind. Thus the first ultraintelligent machine is the last invention that man need ever make."

See: [Foom]

___

### Job

One of the occupations [listed by the U.S. Bureau of Labor Statistics](https://web.archive.org/web/20190514175951/https://www.bls.gov/oes/current/oes_stru.htm).

Note: The US Bureau of Labor Statistics uses the OES Structure, based on the NAICS, which "is periodically revised to reflect changes in the industrial structure of the U.S. and North American economy." For this reason, it changes over time, and the time or version should be specified. (For example, from 2012-2017, "Research and Development in Biotechnology"  was changed to "Research and Development in Biotechnology (except Nanobiotechnology)," and "Research and Development in Nanotechnology" was added. It currently (2019) has no category for Data Science or Machine Learning, which would presumably fall under "Custom Computer Programming Services."

Examples:
* Web Developer
* Epidemiologist
* Forester
* Electrician

Non-examples:
* Data Scientist
* Statistician
* Machine Learning Developer

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

Progress, Artificial intelligence (Unclear)

Improvements in capabilities due to scientiﬁc breakthroughs and Research and Development. (See: Grace et al. 2018) 

___
### Safety Research, Artificial Intelligence

Research intended to ensure future [Artificial General Intelligence] is safe, or that alternatives 
are found. 

Examples:
* MIRI's technical AI Safety research
* Paul Christiano's Interated Amplification
* Work doen by safety research teams at AI research organizations such as DeepMind and OpenAI.

Unclear Examples:
* Explainable AI Research

Non examples:
* Algorithmic Bias Research
* [Self Driving Car] safety and development


___

### Self Driving Car

Per a SAE International report, J3016, Taxonomy and Definitions for Terms Related to On-Road Motor Vehicle
Automated Driving Systems, there are six levels of self-driving, numbered 0-5. When used without qualification, this refers to Level 5, "full automation under all roadway and environmental conditions that can be managed by a human driver."

___

### System

A single set of extant computer-based artificial programs (machine learning or otherwise) and the devices and hardware needed to run it, to accomplish a given task. This includes the trained parameters, architecture, and so on, but not the system or architecture needed to find those values.

Examples:
* DeepBlue, AlphaGo, Boston Dynamics' Atlas Robot
* A self-driving car along with all remote computing devices and data needed for its operation.

Non-examples:
* AIXI
* Terminator, Skynet, etc.
* Any planned future systems or abilities that cannot currently be used.
* Any robot that needs instructions from a human to accompish its assigned task.
* A robot that can accomplish a task autonomously when connected to a control system, data, etc.
exclusive of that control system, data, etc. (cf. self-driving car along with the control system, above)

___

### Years of experience used by an algorithm

The number of human-year-equivalents used in training by an algorithm. This metric mostly makes sense for domains with a defined realtime speed (e.g. games like Starcraft or Dota), but can also be extended to other domains (e.g. one might estimate the average time of a Go move to do the calculation for AlphaGo).

* If the same sample or data-point is presented to the algorithm multiple times during training, this counts multiple times towards the total. For comparison, if a human learning Spanish grammar needs to repeat the same vocabulary item 10 times, it makes sense to say that this human’s cognitive algorithm required 10 and not 1 sample to learn.
* If the algorithm uses some kind of meta-learning or transfer learning, we include the samples used for training the initial model as well, unless otherwise indicated.
* If the algorithm uses imitation learning, we do not include the years of experience required to produce the underlying data.

Examples:
* The OpenAI Five system was [credibly technically reported] [in a paper](https://arxiv.org/abs/1912.06680) to have used 10,000 years of human experience in training the system; 

Non-examples:
* The OpenAI Five system [ran for 10 months of training time](https://arxiv.org/abs/1912.06680)
