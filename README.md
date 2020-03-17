# Coronavirus CoVid19 ```data-analysis-app``` from kaggle.com ```public API``` using ```Python``` inside a ```podman (docker)``` virtual container.

## Requirements:

```docker``` or ```podman```

* tested with ```podman 1.8.1```

## Steps:

1. Clone and cd into this repo: ```git clone https://github.com/progamandoconro/coronaCOVID19 && cd coronaCOVID19```
2. Add your credentials to ```kaggle.json``` obtainded from: (https://www.kaggle.com/docs/api#getting-started-installation-&-authentication). 
3. Build the container: ```docker build . -t corona```.
4. Run the container: ```docker run -d -p 5000:5000 corona```

Go to ```localhost:5000``` in your browser. 
