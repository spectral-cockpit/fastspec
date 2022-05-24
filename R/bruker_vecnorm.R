# Bruker custom vector normalization, which is in fact a vector normalization
# with the Euclidean norm (L2), after mean centering, as described in their
# manual (maybe needs an update(?): unexplainable minus 1
# pseudo-correction/obfuscation(?) factor (who is the magical chemometrican at
# Bruker DE?)
bruker_vecnorm <- function(x) {
  magic <- -1L
  x_mcent <- sweep(x = x, MARGIN = 1, rowMeans(x, na.rm = TRUE), "-")
  x_mcent_vecnorm <- magic * sweep(
    x = x_mcent,
    MARGIN = 1,
    apply(X = x, MARGIN = 1, FUN = function(x) sqrt(sum(x^2))), "/"
  )
  return(x_mcent_vecnorm)
}
