# Bruker custom vector normalization, which is in fact a vector normalization
# with the Euclidean norm (L2), after mean centering, as described in their
# manual (maybe needs an update(?): unexplainable minus 1
# pseudo-correction/obfuscation(?) factor (who is the magical chemometrican at
# Bruker DE?)
bruker_vecnorm <- function(x) {
  magic <- -1L
  x_cent <- sweep(x = x, MARGIN = 1, rowMeans(x, na.rm = TRUE), "-")
  x_cent_vecnorm <- magic * sweep(
    x = x_cent,
    MARGIN = 1,
    apply(X = x, MARGIN = 1, FUN = function(x) sqrt(sum(x^2))), "/"
  )
  return(x_cent_vecnorm)
}

bruker_vecnorm_tra <- function(x) {
  stopifnot(
    is.data.frame(x) || is.matrix(x)
  )
  magic <- -1L
  x_cent <- collapse::fwithin(x)
  x_cent_vecnorm <- magic * collapse::TRA(
    x_cent,
    function(x) sqrt(sum(x^2)),
    "/"
  )
  return(x_cent_vecnorm)
}