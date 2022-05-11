library(knitr)
library(highr)

local({
  hi_pandoc = function(code) {
    if (knitr:::pandoc_to() != 'latex') return(code)
    if (packageVersion('highr') < '0.6.1') stop('highr >= 0.6.1 is required')
    res = hi_latex(code, markup = highr:::cmd_pandoc_latex)
    sprintf('\\texttt{%s}', res)
  }
  hook_inline = knit_hooks$get('inline')
  knit_hooks$set(inline = function(x) {
    if (is.character(x) && inherits(x, 'AsIs')) hi_pandoc(x) else hook_inline(x)
  })
})
