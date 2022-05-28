# Monte Queue

There is a recurring problem I face everytime I'm at my local supermarket. There is an express queue and the regular queue.

The express queue has far few tellers, usually just 1 or 2. The regular queue has more tellers, but _many_ more shoppers.

The shoppers in the regular queue also have more items. So what's the best line to pick based on the ratio of tellers in each? That's what this app is trying to solve via the ultimate hack: Monte Carlo Simulations

# Approach

The general approach here is to have basket struct with a random number of items in it based on the the intended checkout queue.

Each queue, will have a random number of people in it, although it will be bounded to feflect reality.

There will be multiple rounds, and in each I'll calculate the total checkout time of the entire queue. The idea being you, the undecided customer aren't actually in the queue yet.

I'll stick the results in a hash map, and at the end of the rounds, calculate the probability.

# Assumptions

1. That all tellers have the same processing speed, namely I item crosses the scanner every second.
2. That payment takes the same. The default is 20s.

In real life there are some people still paying with checks or who move slowly, but this is meant to be an approximation :)
