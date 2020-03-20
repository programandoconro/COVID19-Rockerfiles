# COVID19 data from kaggle in Rstudio-server using virtual containers  with just three steps
Requirements:
docker or podman * tested with podman 1.8.1.

Get the data from public API. Get your Kaggle.com credentials from: https://www.kaggle.com/docs/api#getting-started-installation-&-authentication and add them to ```kaggle.json``` file.

## ```Basic``` Rstudio-server

Steps:
1. Clone and cd into this repo: git clone https://github.com/progamandoconro/coronaCOVID19 && cd coronaCOVID19/RSTUDIO

2. Add your credentials to ```kaggle.json``` and build with docker or podman

```podman build . -t corona/rstudio```

3. Run the server and go to localhost:8787 in the browser.

```podman run -dit --ulimit="nofile=4096" --env PASSWORD=coronavirus -p 8787:8787 corona/rstudio```


name: ```rstudio```
password: ```coronavirus```


## ```Full```: Rstudio-server + packages & programs.

* Server includes ```git```, ```ssh```,```pip``` and ```kaggle```, as well as pre-installed R packages: ```dplyr```, ```ggplot2```, ```shiny```, ```reticulate``` and more. 

* You can always install more R packages with ```install.packages('')``` or Python's using ```pip install```

Steps:
1. Clone and cd into this repo: git clone https://github.com/progamandoconro/coronaCOVID19 && cd coronaCOVID19/RSTUDIO+SHINY/

2. Add your credentials to ```kaggle.json``` and build with docker or podman

```podman build . -t corona/rstudio/shiny```

3. Run the server and go to localhost:8787 in the browser.

```podman run -dit --ulimit="nofile=4096" --env PASSWORD=coronavirus -p 8787:8787 corona/rstudio/shiny```


name: ```rstudio```
password: ```coronavirus```


<div style="text-align:center"><img src="https://github.com/progamandoconro/corona-COVID19/blob/master/COVID19_Rstudio_Dockerfile.png?raw=true" /></div>
