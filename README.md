# tidyDFR

Minimal tools for reading JStor Data For Research files into R


This creates a dataframe with all the files from a Jstor DFR data set.

See Ben Marwick's [JSTORr](https://github.com/benmarwick/JSTORr) for a similar tool that interfaces with the tm package, or Andrew
Goldstone's [DFR analysis](https://github.com/agoldst/dfr-analysis) for a number of tools.

The goal of this code is to do less than those packages, but to fully integrate with the 'Hadleyverse' of tools. It mimic's Julia Silge and David Robinson's [tidytext package](https://cran.r-project.org/web/packages/tidytext/vignettes/tidytext.html) 
wherever possible--I basically want to be able to run the same code on those frames as on DFR.

See the [vignette](https://github.com/bmschmidt/tidyDFR/blob/master/vignettes/DFR-vignette.Rmd) for instructions and examples.
