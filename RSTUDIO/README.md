## Analyze COVID19 data with Rstudio in your browser with just three steps

1. Get your Kaggle.com credentials from: https://www.kaggle.com/docs/api#getting-started-installation-&-authentication and add them to the```kaggle.json``` file.
2. Build with docker or podman

```podman build . -t corona/rstudio```

3. Run the server and go to localhost:8787 in the browser.

```podman run -dit --ulimit="nofile=4096" --env PASSWORD=coronavirus -p 8787:8787 corona/rstudio```

