---
title: The Matching Factory
author: Spencer
---

Suppose I have a bipartite graph $G = (L, R, E)$, where $L$ and $R$ have the same number of vertices $n$, and nonnegative costs $c(u, v)$ for each edge $(u, v)$. I want to compute a minimum cost perfect matching; that is, a subset $M$ of $E$ such that every vertex of $G$ is contained in exactly one edge of $M$, with the minimum sum of edge costs among all such subsets. 

One way to tackle this problem is linear programming duality. Chapter 3 of these [excellent lecture notes](http://www.cs.cornell.edu/courses/cs6820/2019fa/handouts/matchings.pdf) by Robert Kleinberg describes a primal-dual algorithm for minimum cost bipartite perfect matching. Paraphrasing, a subset of the edge set $E$ of $G$ can be represented by a $n \times n$ matrix of zeros and ones $X$, where $X_{ij} = 1$ represents an edge from vertex $i \in L$ to vertex $j \in R$. The edge set represented by $X$ is a perfect matching iff the sum of each row and each column is $1$. We want to find the cheapest such edge set, that is to solve the optimization problem:

\begin{align}
&\min \sum_{i, j} c(i, j) X_{ij} \quad \text{subject to}\\
&\forall j \quad \sum_i X_{ij} = 1 \\
&\forall i \quad \sum_j X_{ij} = 1 \\
&\forall i \forall j \quad X_{ij} \in \{0, 1\} \\
\end{align}

Relaxing this to a continuous optimization problem by letting the $X_{ij}$ take values in the *interval* $[0, 1]$ gives a *linear program* whose solutions are *fractional perfect matchings*; (see the lecture notes for more detail).

\begin{align}
&\min \sum_{i, j} c(i, j) X_{ij} \quad \text{subject to}\\
&\forall j \quad \sum_i X_{ij} = 1 \\
&\forall i \quad \sum_j X_{ij} = 1 \\
&\forall i \forall j \quad X_{ij} \in [0, 1] \\
\end{align}.

We call the optimal objective value (in this case, the cost of the minimum cost fractional perfect matching) the *value* of this linear program. By combining the constraints of this linear program, we arrive at the *dual* program, a maximization problem whose value is equal to the value of the above program (called the *primal* program).

To be continued!