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

### Alignment
Unclear
{: .label .label-red }
Disputed
{: .label .label-red }

Def. 1 - Acting not only [Safe], but consistent with [General Human Values], and continuing to do so even after arbitrary [scaling] or change in circumstance. Compare [Safe].

Proponents mostly agree that it is unclear if this is possible, and needs to be refined and better
understood. It is also unclear what class of proof would be sufficient. 

Def. 2 - Acting in a maner considered [Safe] according to a specific set of goals, and provably continuing to do so even after arbitrary [scaling] or changes in circumstance. The domain of proof needed is also unclear.

Unclear examples:
* Any provably limited system.

Non examples:
* Systems proven [Safe] in a given environment that can change, or empirically shown to be [Safe].


___

### Artificial General Intelligence (Unclear / Disputed)
Unclear
{: .label .label-red }
Disputed
{: .label .label-red }

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


### Corrigibility 
Unclear
{: .label .label-red }

The property of an AI system where the objective constrains it from taking actions that modify its own objective function in ways that undermine [Alignment]. 

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

### Discontinuous Scaling (Unclear / Disputed)
Unclear
{: .label .label-red }
Disputed
{: .label .label-red }

This refers to the hypothesis that at some point measured via external clock time, the capabilities of a system greatly increase in a way inconsistent with the trend up to that point. This does not require a true mathematical discontinuity, but does require a significant increase in growth rate, rather than continutation of an exponential growth. cf. [Scaling], [Foom]

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

### General Human Values (Unclear / Disputed)

Ultimate goals and constraints that either some human or all humans either espouse, or actually use operationally to guide actions. In the limit, this is related to "Coherent Extrapolated Volition" where given very large amounts of power, given effectively unlimited amounts of time to reflect and consider the impacts of actions and values, the resulting human values are coherent.

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

### Human Level AI

See [Artificial General Intelligence]. (Used interchangably in Baum, Goertzel, & Goertzel, 2011.)

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
### Overhang
Ambiguous
{: .label .label-red }

Overhang is a driver of [Discontinuous Scaling]. It refers to a situation where, when a goal is acheived, the resources needed for acheiving the goal are found to be far smaller than the state-of-the-art available at the time, creating a significant acceleration. 

For example, if an algorithmic breakthrough solves a problem in a way that requires far less hardware than needed for the basic task, performance at that task would jump significantly. 

Ambiguous Example:
In computer Go, where once the basic problem of playing at a human level was solved by Alpha Go using large amounts of [compute], it was found that a smaller system would be able to do the same task, and AlphaGo Zero, then AlphaZero, exhibited significant improvements with the same amount of less hardware.

See, for example, Strategic implications of openness in AI development (Bostrom, 2017)

___

### Safe, Artificial Intelligence
Ambiguous
{: .label .label-red }
Disputed
{: .label .label-red }

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
* Anything in (Victoria Kraknova's list)[https://vkrakovna.wordpress.com/2018/04/02/specification-gaming-examples-in-ai/] of specification failures, 
where systems did not do what the designer intended. 

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

### Scaling
Ambiguous
{: .label .label-red }

The ability of a system to operate better due to increased resources of a specific type or types, even without a fundamental new insight or change in the system.

Examples:
* A machine learning system improving at a task when given additional training data.
* A neural network that improves due to increasing its size, spending more time on [Compute, architecture search], [Compute, hyperparameter search], or [Compute, training].
 
Ambiguous Cases:
* A system that is improved by changing from one structure or training type to a different type of
 structure, such as the transition from AlphaGo to AlphaZero. 
* A system that self-modifies in ways not originally planned.

Non-examples:
* A system's increasing in capabilities when given more [Compute, operational], such as the improvement
from giving AlphaGo more time to consider each move, or relaxing restrictions, such as removing APM limits
from OpenAI Five.
* Self-modification via automated parameter search given a specific set of hardware reseources, such as
"Learning to learn by gradient descent by gradient descent" https://arxiv.org/abs/1606.04474
* Improvement at a task by a new or modified [system] due to fundamental breakthroughs or new 
structure types.

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

### Transformative Artificial Intelligence
Unclear
{: .label .label-red }
Disputed
{: .label .label-red }

AI that precipitates a transition comparable to (or more significant than) the agricultural or industrial revolution. (As suggested by [Karnofsky (2016)](https://www.openphilanthropy.org/blog/some-background-our-views-regarding-advanced-artificial-intelligence#Sec1).)

Per Greutzmacher, 2019, "AI that significantly transforms society by replacing humans for a large portion (i.e., 50% or greater) of economically useful work"

Note that a TAI system is not necessarily an AGI system, as long as its impact mediated by narrow capabilities is sufficiently transformative (as was e.g. the case for inventions during the original agricultural and industrial revolutions). 

Examples:
* AI systems capable of fulfilling all the necessary functions of human scientists, unaided by humans, in developing another technology (or set of technologies) that ultimately becomes widely credited with being the most significant driver of a transition comparable to (or more significant than) the agricultural or industrial revolution. 

Note that just because AI systems *could* accomplish such a thing unaided by humans doesn’t mean they *would*; it’s possible that human scientists would provide an important complement to such systems, and could make even faster progress working in tandem than such systems could achieve unaided. 

Karnofsky (2016) emphasizes the hypothetical possibility of AI systems conducting substantial unaided research to draw a clear distinction from the types of AI systems that exist today. He believes that AI systems capable of such broad contributions to the relevant research would likely dramatically accelerate it.

* AI systems capable of performing tasks that in 2016 accounted for the majority of full-time [jobs](#job) worldwide, and/or over 50% of total world wages, unaided and for costs in the same range as what it would cost to employ humans. 

Aside from the fact that this would likely be sufficient for a major economic transformation relative to today, Karnofsky (2016) also thinks that an AI with such broad abilities would likely be able to far surpass human abilities in a subset of domains, making it likely to meet one or more of the other criteria laid out here.

* Surveillance, autonomous weapons, or other AI-centric technology that becomes sufficiently advanced to be the most significant driver of a transition comparable to (or more significant than) the agricultural or industrial revolution. 

(This contrasts with the first point because it refers to transformative technology that is itself AI-centric, whereas the first point refers to AI used to speed research on some other transformative technology.)

Ambiguous Examples:
* Clearly narrow AI such as [Self Driving Car]s and factory automation reducing the workforce by more than 50%
* A transition to Universal Basic Income that leads more than 50% of people currently working to stop doing so.

Non-examples:
* Any AI system that exists as of 2019.

___

### Value learning (Unclear)
Unclear
{: .label .label-red }

The process of an AI system inductively learning goals that the system will pursue.

(The term does not denote sucess, just the class of process used for the goal.)

See: Nate Soars, "The Value Learning Problem" In: Ethics for Artificial Intelligence Workshop at 25th International Joint Conference on Artificial Intelligence

Non-examples:

### Years of experience used by an algorithm

The number of human-year-equivalents used in training by an algorithm. This metric mostly makes sense for domains with a defined realtime speed (e.g. games like Starcraft or Dota), but can also be extended to other domains (e.g. one might estimate the average time of a Go move to do the calculation for AlphaGo).

* If the same sample or data-point is presented to the algorithm multiple times during training, this counts multiple times towards the total. For comparison, if a human learning Spanish grammar needs to repeat the same vocabulary item 10 times, it makes sense to say that this human’s cognitive algorithm required 10 and not 1 sample to learn.
* If the algorithm uses some kind of meta-learning or transfer learning, we include the samples used for training the initial model as well, unless otherwise indicated.
* If the algorithm uses imitation learning, we do not include the years of experience required to produce the underlying data.

Examples:
* The OpenAI Five system was [credibly technically reported] [in a paper](https://arxiv.org/abs/1912.06680) to have used 10,000 years of human experience in training the system; 

Non-examples:
* The OpenAI Five system [ran for 10 months of training time](https://arxiv.org/abs/1912.06680)
