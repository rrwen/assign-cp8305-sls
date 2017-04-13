# Fig 1

# Setup ----

# (package_install) Required packages
packages <- c("DiagrammeR", "mlr")
for (pkg in packages) {
  if (!requireNamespace(pkg, quietly=TRUE)) {
    install.packages(pkg,
                     dependencies=TRUE,
                     repos="http://cran.rstudio.com/")
  }
}

# (library) Load packages
library(DiagrammeR)

# Function ----

# (function_kvEdges) Creates edges from key names and vector values belonging to each key
kvEdges <- function(kv) {
  edgesFrom <- c()
  edgesTo <- c()
  for (from in names(kv)) {
    to <- kv[[from]]
    edgesFrom <- c(edgesFrom, rep(from, length(to)))
    edgesTo <- c(edgesTo, to)
  }
  return(data.frame(from = edgesFrom, to = edgesTo, stringsAsFactors = FALSE))
}

# Graph ----

# (graph_source) Add data source paths
paths <- list()
paths[["UCI_Machine_Learning_Repository"]] <- "SLS_Dataset"
paths[["SLS_Dataset"]] <- "data"

# (graph_options) DiagrammeR mermaid options
graphInit <- "graph TB;"
graphStyle <- "classDef default fill:white,stroke:black,stroke-width:2px"

# (graph_data) Add data paths
paths$data = c("amazon_cells_labelled.txt", "imdb_labelled.txt", "yelp_labelled.txt")
for (p in paths$data) {
  paths[[p]] <- "preprocess"
}

# (graph_clean) Add data clean paths
paths$preprocess <- "features"
paths$features <- "selection"
paths$selection <- "cross_validation_sets"
paths$cross_validation_sets <- "learners"

# (graph_algorithms) Add algorithm paths
paths$learners <- "optimization"
paths$optimization <- "prediction_evaluation"

# (path_edges) Create flowchart edges
pathKVEdges <- kvEdges(paths)

# (path_graph) Create flowchart graph
pathGraph <- paste0(graphInit, "\n",
                    paste0(paste(pathKVEdges$from, pathKVEdges$to, sep="-->"), ";",
                           collapse="\n"),
                    "\n", graphStyle)

# (path_render) Display flowchart graph
print(DiagrammeR(pathGraph))
