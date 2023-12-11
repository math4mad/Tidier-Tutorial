using Tidier;
using RDatasets;
using Pipe;
movies = dataset("ggplot2", "movies");

# lowercase features
@pipe names(movies)|>lowercase.(_)|>rename!(movies,_)