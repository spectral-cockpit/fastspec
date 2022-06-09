This is an experimental package for prototyping fast general spectroscopic processing routines.

# Features

* `bruker_vecnorm_TRA()`: Custom vector normalization of Bruker Inc., which corresponds to a vector normalization with the Euclidean norm (L2), after mean centering. Additionally, ther is a minus 1 obfuscation/correction factor. The implementation uses `collapse::TRA()` for matrix sweeping operations.
