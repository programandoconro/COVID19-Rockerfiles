# Visualizations of CoronavirusCoVid19 kaggle.com public API data in the browser, using Python inside a virtual container.

## Requirements:

* ```docker``` or ```podman``` * tested with ```podman 1.8.1```.

* Kaggle.com credentials, obtained from: https://www.kaggle.com/docs/api#getting-started-installation-&-authentication.

## Steps:

1. Clone and cd into this repo: 
```git clone https://github.com/progamandoconro/coronaCOVID19 && cd coronaCOVID19```

2. Add your credentials to ```kaggle.json``` file.

3. Build the container: 

```docker build . -t corona```

4. Run the container:

```docker run -d -p 5000:5000 corona```

That is it. Go to ```localhost:5000``` in your browser and start coding in ```app.py```, data is in root ```./```. 
