## A note on a multivariate lookup argument based on logarithmic derivatives. 

The repo started with a multivariate (standard) Plonk prover, leveraging logarithmic derivatives for the permutation argument. We decided to changed the focus with the publication of [Hyperplonk](https://eprint.iacr.org/2022/1355), switching to lookups, as there was nothing to add to their much more general (and beautiful) solution. 

The lookup argument is based on the same fractional decomposition technique as used by [Flookup](https://eprint.iacr.org/2022/1447), which (unluckily to us) appeared at the time of writing. Nevertheless, the paper documents in detail the benefits of fractional decompositions for *multi-column* lookups, where many columns are subject to the same (normal-sized) table lookup. (Multi-column lookups are extensively used by AIR-like execution trace provers, ensuring the elements of several trace columns to be valid machine words.) 
