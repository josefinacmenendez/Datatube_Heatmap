# Datatube_Heatmap
A shiny app to view a heatmap of differential gene expression for a select number of contigs.
The data was obtained from J García-Arrarás' research laboratory. The species is H. glaberrima.

The required packages can be installed as follows:

```
install.packages("shiny")
install.packages("gplots")
```

To run the app, run the following line of code in R:

```
shiny::runGitHub("josefinacmenendez/Datatube_Heatmap")
```
Another option is to run the app through shinyapps by clicking on the following link:

https://josefinacmenendez.shinyapps.io/Datatube_Heatmap/

To access an item in the dataset that is not shown on the menu, type its name or part of its name and a list with matching items will be shown. If disconnected from the server, simply hit the refresh button.
