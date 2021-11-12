# How to integrate Google Maps into your Rails project: the React way

## Background

1. [Building our Rails backbone](https://dev.to/rhysmalyon/building-our-rails-backbone-2jmb)
2. [Installing React and creating our first component](https://dev.to/rhysmalyon/installing-react-and-creating-our-first-component-1e1c)
3. [Setting up Google Maps API](https://dev.to/rhysmalyon/setting-up-google-maps-api-1ji6)
4. [Creating our Google Map component](https://dev.to/rhysmalyon/creating-our-google-map-component-4h88)

This is the source code for the Rails and React tutorial series on dev.to. The 4-part article series explores implementing Google Maps using the [react google maps api](https://www.npmjs.com/package/@react-google-maps/api) package together with the [geocoder](https://github.com/alexreisner/geocoder) gem for geocoding and pulling coordinates from addresses.

The process runs from starting up a Rails app through to installing Rails React, setting up Google Maps API keys and APIs, and finally bringing it all together to create a Map component.

## Setup

If cloning from this directory, ensure that you have the prerequisites from the [Building our rails backbone](https://dev.to/rhysmalyon/implementing-google-maps-in-your-rails-project-with-react-2kgb). After doing so, you can run these commands in your terminal:

```
bundle install
npm install / yarn add
```

Next, set up your database:

```
rails db:create
rails db:migrate
rails db:seed
```

## Running the project

In your terminal:

```
rails server
```

## Adding more places

There are multiple ways to do this. Before you attempt to do so, ensure that you have set up the following in your .env file:

```
GMAPS_SERVER_KEY=your_key_here
GMAPS_BROWSER_KEY=your_key_here
```

For more details, check out [Setting up Google Maps API](https://dev.to/rhysmalyon/adding-a-map-to-our-app-9ok).

The simplest way to create a new place instance is to run `rails console` and manually add them with the following command:

```
Place.create!(name: "ENTER_NAME_HERE", address: "ENTER_ADDRESS_HERE")
```

If the address is valid it should automatically assign latitude and longitude to your new place. You can confirm by either checking in the console or on your map as only valid markers will be displayed.

If you want to expand project features you can add form inputs like [simple form](https://github.com/heartcombo/simple_form) that can help you easily add new places. This would be especially useful if you plan to allow others to add places to your map.
