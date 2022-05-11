unsure <- function(expression, n=250000) {

  expr <- quote(expression)

  e <- rlang::env(
    `~` = function(x, y) {
      mu <- (x + y)/2
      sd <- abs(x - mu)/2
      out <- rnorm(250000, mu, sd)
      return(out)
    }
  )

  eval(expr, e)
  # eval(2 ~ 3, e)

}
