# COVID19 data from kaggle and mscb (Spain) in Rstudio-server using virtual containers, just three steps

<div style="text-align:center"><img src="https://github.com/progamandoconro/corona-COVID19/blob/master/COVID19_Rstudio_VC.png?raw=true" /></div>

Requirements:
Docker or Podman * tested with ```Docker 19.03.8``` and  ```Podman 1.8.1```.

Get the data from public API. Get your Kaggle.com credentials from: https://www.kaggle.com/docs/api#getting-started-installation-&-authentication and add them to ```kaggle.json``` file.

## ```Basic``` Rstudio-server + Kaggle Data

Steps:
1. Clone and cd into this repo: git clone https://github.com/progamandoconro/coronaCOVID19 && cd coronaCOVID19/RSTUDIO

2. Add your credentials to ```kaggle.json``` and build with docker or podman

Docker: ```docker build . -t corona/rstudio```

Podman: ```podman build . -t corona/rstudio```

3. Run the server and go to localhost:8787 in the browser.

Docker: ```docker run -dit --env PASSWORD=coronavirus -p 8787:8787 corona/rstudio```

Podman: ```podman run -dit --ulimit="nofile=4096" --env PASSWORD=coronavirus -p 8787:8787 corona/rstudio```

name: ```rstudio```
password: ```coronavirus```


## ```Full```: Rstudio-server + packages + Kaggle data

* Server includes ```git```, ```ssh```,```pip``` and ```kaggle```, as well as pre-installed R packages: ```dplyr```, ```ggplot2```, ```shiny```, ```reticulate``` and more. 

* You can always install more R packages with ```install.packages('')``` or Python's using ```pip install```.

Steps: Same as before but inside ```RSTUDIO+SHINY``` directory.


## ```Full + Data + Spain```: Rstudio-server + packages + Kaggle data + Spain data

With daily pdf reports from https://www.mscbs.gob.es/

Steps: Same as before but inside ```FULL+DATA+SPAIN``` directory.
