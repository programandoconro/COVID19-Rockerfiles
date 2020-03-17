# Visualizations of CoronavirusCoVid19 kaggle.com public API data in the browser, using Python inside a Podman or Docker virtual container.

## Requirements:

1. ```docker``` or ```podman``` *.
2. Kaggle.com credentials, obtained from: https://www.kaggle.com/docs/api#getting-started-installation-&-authentication.

* tested with ```podman 1.8.1```.

## Steps:

1. Clone and cd into this repo: 
```git clone https://github.com/progamandoconro/coronaCOVID19 && cd coronaCOVID19```

2. Add your credentials to ```kaggle.json``` file.

3. Build the container: 

```docker build . -t corona```

4. Run the container:

```docker run -d -p 5000:5000 corona```

Go to ```localhost:5000``` in your browser

Start coding from ```app.py```, data will be in ```./``` 
