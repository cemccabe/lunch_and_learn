# Lunch and Learn
The objective of this project is to expose a multitude of endpoints for use by a front-end team. The application allows users to get recipes for a particular country, get learning resources for a particular country, register as a user, add favorites to your user profile, and get a user's favorites. The endpoints exposed will allow the front-end team to display recipes, images, video, and data about certain countries.

## Learning Goals 
* Expose an API that aggregates data from multiple external APIs
* Expose an API that requires an authentication token 
* Expose an API for CRUD functionality
* Determine completion criteria based on the needs of other developers 
* Test both API consumption and exposure, making use of at least one mocking tool (VCR, Webmock, etc)

## API Information
This application calls on the RestCountries, Edamam, Youtube, GeoApify, Unsplash APIs - all except for RestCountries require you to register and obtain an API key. This project uses the Figaro gem to store your API keys.

* Begin by running `bundle exec figaro install`
* Place keys in the `application.yml` file in the `config` directory
* Keys follow the naming convention given in each API service's documentation

[REST Countries API](https://restcountries.com/)
* This service does not require an API key

[Edamam API](https://developer.edamam.com/)
* app_id: app_id
* app_key: app_key

[YouTube API](https://developers.google.com/youtube/v3/docs/)
* key: key

[Places API](https://apidocs.geoapify.com/docs/)
* apiKey: apiKey

[Unsplash API](https://unsplash.com/documentation)
* client_id: client_id


## Setup
This project requires Ruby 2.7.4 and Rails 5.2.8

1. Fork and clone this repository.
1. `cd` into the root directory
1. Run `bundle install`
1. Run `rails db:{drop,create,migrate}`
1. Configure Environment Variables

## Enpoints 
The base url for all endpoints is: `http://localhost:3000`

### Get Recipes for a Particular Country
**Request:** `GET /api/v1/recipes?country=<country name>`

### Get Learning Resources for a Particular Country
**Request:** `GET /api/v1/learning_resources?country=<country name>` 

### User Registration
**Request:** 
```
POST /api/v1/users
Content-Type: application/json
Accept: application/json

{
  "name": "Athena Dao",
  "email": "athenadao@bestgirlever.com"
}
```

### Add Favorites
**Request:**
```
POST /api/v1/favorites
Content-Type: application/json
Accept: application/json

{
    "api_key": "jgn983hy432432jij2343kjih2",
    "country": "thailand",
    "recipe_link": "https://www.tastingtable.com/.....",
    "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)"
}
```

### Get a User's Favorites
**Request:** `GET /api/v1/favorites?api_key=<USER_API_KEY>`

