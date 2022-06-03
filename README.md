# Bici sample app

With this app you can find available bikes and e-bikes near to you. The app allows you
to locate bikes in a database that containes real time info of the public bicycle
services from more than 400 cities.

This project has been created as a demonstration of the modular architecture used
in Flutter projects at [Stuart](https://stuart.com/blog/tech/).

This app relies on the public [API](http://api.citybik.es/v2/) provided by
[CityBikes](https://citybik.es/).

# How to run it

1. Install all dependencies:
   ```
   make pub_get_all
   ```
2. With a device connected run the app:
   ```
   flutter run
   ```
Please check [Makefile](Makefile) to discover all the available `make` commands.
