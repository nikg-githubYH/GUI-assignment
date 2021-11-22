GeolocationAccessStatus accessStatus = await Geolocator.RequestAccessAsync();
// The variable `position` now contains the latitude and longitude.
Geoposition position = await new Geolocator().GetGeopositionAsync();