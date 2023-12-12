using Tidier;
using RDatasets;
using Pipe;
using CSV,DataFrames
using GLMakie
movies = dataset("ggplot2", "movies");

# lowercase features
@pipe names(movies)|>lowercase.(_)|>rename!(movies,_);

vgd=CSV.File("./data/vgsales.csv")|>DataFrame|>dropmissing
vgd=@pipe names(vgd)|>lowercase.(_)|>rename(vgd,_);

bad_password=CSV.File("./data/users.csv")|>DataFrame|>dropmissing
bad_password=@pipe names(bad_password)|>lowercase.(_)|>rename(bad_password,_);

common_password=CSV.File("./data/10_million_password_list_top_10000.txt")|>DataFrame|>dropmissing;
"google-stat-10000 common words in use at internet"
common_words=CSV.File("./data/google-10000-english.txt")|>DataFrame|>dropmissing;
