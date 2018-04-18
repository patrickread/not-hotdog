# Hot dog / Not Hot dog

A quick experiment to see how fast you can implement Hot dog / Not hot dog in a Google Cloud Vision API client. Turns out pretty fast!

# Getting started

1. [Setup your Google Cloud Platform credentials.](https://cloud.google.com/vision/docs/libraries#setting_up_authentication)
2. Set your environment variables, so the script knows to use your auth JSON file from step #1 and your specific project ID. For inline usage, run hotdog.rb with the following line:
```
GOOGLE_APPLICATION_CREDENTIALS="keys/vision-api-key.json" GOOGLE_CLOUD_PROJECT="YOUR_PROJECT_ID" ./hotdog.rb
```
3. Place JPG's of unknown hot dog relation in the `images` folder. A few samples are included in this repo.
4. ???
5. Write a TV show episode