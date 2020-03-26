FROM rocker/rstudio:latest
COPY kaggle.json /root/.kaggle/
COPY . /home/rstudio
RUN apt update -y && apt install python3 python3-pip r-base ssh wget curl -y && \
R -e 'install.packages(c("ggplot2","plotly","dplyr","shiny","shinydashboard","reticulate"))'
WORKDIR /home/rstudio/
RUN pip3 install PyPDF2 && sh get_data_spain.sh && python3 mining.py
