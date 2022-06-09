This is an experimental package for prototyping fast general spectroscopic processing routines.

# Features

# Bruker custom vector normalization, which is in fact a vector normalization
# with the Euclidean norm (L2), after mean centering, as described in their
# manual (maybe needs an update(?): unexplainable minus 1
# pseudo-correction/obfuscation(?) factor (who is the magical chemometrican at
# Bruker DE?)
* `bruker_vecnorm()`: Custom vector normalization of Bruker Inc., which corresponds to a vector normalization with the Euclidean norm (L2), after mean centering. Additionally, ther is a minus 1 obfuscation/correction factor.
