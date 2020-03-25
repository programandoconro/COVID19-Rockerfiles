FROM rocker/rstudio:latest
COPY kaggle.json /root/.kaggle/
COPY . /home/rstudio
RUN apt update -y && apt install python3-pip r-base ssh wget curl -y && \
R -e 'install.packages(c("pdftools","ggplot2","plotly","dplyr","shiny","shinydashboard","reticulate"))'
WORKDIR /home/rstudio/
RUN pip3 install kaggle && \
kaggle datasets download sudalairajkumar/novel-corona-virus-2019-dataset && \
unzip novel-corona-virus-2019-dataset.zip && sh get_data_spain.sh
