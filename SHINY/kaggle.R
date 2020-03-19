library(reticulate)
source_python('kaggle.py')
unzip('novel-corona-virus-2019-dataset.zip')

df_covid = read.csv('covid_19_data.csv')

