Reinforcement Learning in trajectory planning:
----------------------------------------------

Reinforcement Learning is a branch of machine learning that has got the potential to adapt to robust conditions given just a reward signal and state, action spaces. Without any predetermined parameters or data about the environment, an RL agent can adapt to drastic conditions by collecting experience and training in it. In the below project I am trying to use it for trajectory planning of an agent in a custom-built environment.
Unlike previous work done in grid worlds, I am trying to explore continuous space and continuous action spaces with the state of the art algorithms like DDPG, PPO and make an agent learn to escape from a moving predator and exploit the loops holes present in the environment with no pre-existing knowledge 

Problem Framing:
----------------
* The problem is framed to be a Cat and a Rat chase,  where the Rat is the RL agent and the Cat follows the Rat by the shortest distance.
* In future there will be burrows and hiding areas that give the Rat an edge over the Cat and create circumstances that the tradition CPU controlled Cat will never be able to reach the Rat and the Rl agent is expected to exploit this on its own by training.

Physical Implications:
----------------------
* Self-adapting robots can be deployed in space exploration, Hazard prone areas, where we humans with our limited knowledge about the environment are not able to predetermine the circumstances that might arise.
* Self-learning algorithms like this, when implemented in the cyber-physical system, hold the potential to accelerate the process of our experimentation and learning in various fields.

Work is done:
----------
The uploaded environment is a rough implementation of the environment and is designed to closely resemble real-world robot cart control as we have an idea to implement in Real-world aswell.

Work in progress:
-----------------
* Experimentation is done on the platforms to use to closely resemble the real-life conditions like communication over the head.
* Algorithmic experimentation is also Done by training the agent with different algorithms and are being validated and scored.
The full project source is coming soon.....
