bhaskara <- function(a, b, c) {
  delta <- b ^ 2 - (4 * a * c)
  x1 <- (- b + sqrt(delta)) / 2 * a
  x2 <- (- b - sqrt(delta)) / 2 * a
  return(cbind(x1, x2))
}

print(bhaskara(1, -4, 3))
print(bhaskara(1, 2, -3))