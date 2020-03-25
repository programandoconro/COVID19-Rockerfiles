FROM rocker/rstudio:latest
COPY kaggle.json /root/.kaggle/
COPY . /home/rstudio
RUN apt update -y && apt install python3-pip r-base ssh wget curl -y
RUN pip3 install kaggle && \
kaggle datasets download sudalairajkumar/novel-corona-virus-2019-dataset && \
unzip novel-corona-virus-2019-dataset.zip && \
mv *.csv /home/rstudio/
WORKDIR /home/rstudio/
RUN sh get_data_spain.sh
RUN echo 'install.packages(c("ggplot2","plotly","dplyr","shiny","shinydashboard","reticulate"))' > requirements.R && \
Rscript requirements.R
