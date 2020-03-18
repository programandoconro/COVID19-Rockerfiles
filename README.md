# COVID19 data from kaggle in Rstudio or Python Flask using virtual containers
Requirements:
docker or podman * tested with podman 1.8.1.

Get the data from public API. Get your Kaggle.com credentials from: https://www.kaggle.com/docs/api#getting-started-installation-&-authentication and add them to ```kaggle.json``` file.

## Rstudio in your browser with just three steps

Steps:
1. Clone and cd into this repo: git clone https://github.com/progamandoconro/coronaCOVID19 && cd coronaCOVID19/RSTUDIO

2. Add your credentials to ```kaggle.json``` and build with docker or podman

```podman build . -t corona/rstudio```

3. Run the server and go to localhost:8787 in the browser.

```podman run -dit --ulimit="nofile=4096" --env PASSWORD=coronavirus -p 8787:8787 corona/rstudio```


name: ```rstudio```
password: ```coronavirus```


## Flask App (Python)

Steps:
Clone and cd into this repo: git clone https://github.com/progamandoconro/coronaCOVID19 && cd coronaCOVID19/FLASK

Add your credentials to kaggle.json file.

Build the container:

```docker build . -t corona```

Run the container:
```docker run -d -p 5000:5000 corona```

That is it. Go to localhost:5000 in your browser and start coding in app.py, data is in root ./.

<div style="text-align:center"><img src="https://github.com/progamandoconro/corona-COVID19/blob/master/COVID19_Rstudio_Dockerfile.png?raw=true" /></div>
