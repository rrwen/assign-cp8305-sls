# Experiments on Natural Language Processing and Prediction of Sentiment Labelled Sentences

Richard Wen  
rwen@ryerson.ca      
April 13, 2017  
Assignment for Course CP8305  
Instructed by Dr. Cherie Ding  

- [HTML](https://rrwen.github.io/assign-cp8305-sls)
- [PDF](https://github.com/rrwen/assign-cp8305-sls/blob/master/index.pdf)

## References

- Kotzias, Dimitrios, Misha Denil, De Freitas Nando, and Padhraic Smyth. 2015. “From Group to
Individual Labels Using Deep Features.” Proceedings of the 21th ACM SIGKDD International
Conference on Knowledge Discovery and Data Mining. Association for Computing Machinery,
597–606. doi:10.1145/2783258.2783380.
- Lichman, Moshe. 2013. “(UCI) Machine Learning Repository.” http://archive.ics.uci.edu/ml.

## Developer Notes

To render Portable Document File (PDF) and HTML:

1. Install [R](https://cran.r-project.org/) and [RStudio](https://www.rstudio.com/products/rstudio/download/) if not installed
2. Open **index.rmd** with Rstudio
3. In the R console, enter `install.packages("bookdown")`
4. Click *Knit*-> *Knit to gitbook* (HTML)
5. Click *Knit*-> *Knit to pdf_document2* (PDF)

Push to git:

1. Install [git](https://git-scm.com/) if not installed
2. Run the following commands to commit to remote repository

```
git add .
git commit -a -m "Generic update"
git push
```

Some known issues:

- Error when using `rmarkdown::render` function for PDF
- Error when using knit in Rstudio, but correct PDF is generated

