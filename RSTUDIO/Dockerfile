FROM rocker/rstudio:latest
RUN apt update -y && apt upgrade -y
RUN apt install r-base r-base-dev python3-pip -y
RUN pip3 install kaggle
COPY kaggle.json /root/.kaggle/
RUN  kaggle datasets download  sudalairajkumar/novel-corona-virus-2019-dataset && \
unzip novel-corona-virus-2019-dataset.zip
RUN mv *.csv /home/rstudio/
