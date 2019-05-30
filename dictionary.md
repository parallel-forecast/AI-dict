**Adversarial example**
An input edited with some human-unnoticeable perturbation causing it to be misclassified by the system. 

Examples that count as adversarial examples:

* Adding a transparent sticker with a few pixels on it to a road sign, causing a Tesla to crash
* Overlaying an unnoticeable audio sample to a radio broadcast causing a Google Home/Alexa/etc to do something

Examples that do not count as adversarial examples:

* Putting a political sticker on a road sign causing a Tesla to crash (even if it's intentional)
* Removing the road sign causing the Tesla to crash
* Making an elaborate chalk drawing causing a cartoonish optical illusion of the road veering off


**Module**

A “module” refers to some division of an AI system such that all information between modules is human legible.

As an example, AlphaZero has two modules: a neural net, and a monte carlo tree search. The neural net, when given a boardstate, 
has two outputs to the tree search: a valuation of the board, and a policy over all available actions.

The “board value” is a single number between -1, and 1. A human cannot easily assess how the neural net reached that number, 
but the human can say crisply what the number represents: how good this board state is for the player. Similarly with the policy output. 
The policy is a probability vector. A human can conceptualize what sort of object it is: a series of weightings on the available 
moves by how likely those move are to lead to a win. The board value and the policy are both “human legible”.

Contrast this with a given floating point number inside of a neural net, which will rarely correspond to anything specific from a 
high-level human perspective. A floating point number in a neural net is not “human legible”.

A module is a component of a neural net that only outputs data that is legible in this way. 
(In some cases, such as the Monte Carlo Tree search of AlphaZero, the internal representation of a module will be human legible, 
and therefore that module could instead be thought of as several modules. In such cases, prefer the division that has 
the fewest number of modules.)

Therefore AlphaZero is made up of two modules: the neural net and the monte carlo tree search.

An end-to-end neural network that takes in all sense data and outputs motor plans should be thought of as composed of only 
a single module.
