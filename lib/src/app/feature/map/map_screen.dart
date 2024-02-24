import 'dart:async';

import 'package:ecoguard/src/app/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:geocode/geocode.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:velocity_x/velocity_x.dart';



import 'package:google_maps_webservice/places.dart';
import 'package:google_api_headers/google_api_headers.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;

  LatLng currentLocation = const LatLng(32.472704, 14.571257);


  final Completer<GoogleMapController> _controller = Completer();

  String address = '';
  LatLng centerLatLng = const LatLng(32.472704, 14.571257);

  @override
  void dispose() {
    mapController?.dispose();
    super.dispose();
  }

  void onCameraMove(CameraPosition position) {
    setState(() {
      centerLatLng = position.target;
      print('Latitude: ${centerLatLng.latitude}');
      print('Longitude: ${centerLatLng.longitude}');
      GeoCode geoCode = GeoCode();
      geoCode
          .reverseGeocoding(
              latitude: centerLatLng.latitude,
              longitude: centerLatLng.longitude)
          .then((value) {
        if (value.streetAddress != 'Throttled! See geocode.xyz/pricing' &&
            value.streetAddress != null) {
          address = value.streetAddress!;
        } else if (value.streetAddress !=
                'Throttled! See geocode.xyz/pricing' &&
            value.streetAddress == null) {
          address = 'شارع بدون اسم';
        }
        print('Street Name: ${value.streetAddress}');
      });
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var textScale = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
            height: size.height * 0.056,
            width: size.width * 0.8,
            child: InkWell(
              onTap: () {
                _showSearchDialog();
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) {
                //   return MapSearch();
                // }));
              },
              child: Container(
                height: size.height * 0.056,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search_rounded),
                    Text(
                      'ابحث بإسم المنطقة او الشارع',
                      style: TextStyle(
                          fontSize: textScale * 17),
                    ).px4()
                  ],
                ).px8(),
              ),
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              mapToolbarEnabled: false,
              zoomControlsEnabled: false,
              myLocationEnabled: true,
              onMapCreated: _onMapCreated,
              onCameraMove: onCameraMove,
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: centerLatLng,
                zoom: 18,
              ),
              markers: {
                Marker(
                  markerId: const MarkerId('center_marker'),
                  position: centerLatLng,
                  draggable: true,
                  onDragEnd: (newPosition) {
                    // Update the centerLatLng when the marker is moved
                    setState(() {
                      centerLatLng = newPosition;
                    });
                  },
                ),
              },
            ),
          ),
          Container(
            width: size.width,
            height: size.height * 0.2075,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'موقع التوصيل',
                  style:
                  TextStyle( fontSize: textScale * 16),
                ),
                Text(
                  address,
                  style: TextStyle(
                      fontSize: textScale * 18,
                      fontWeight: FontWeight.bold),
                ).px(2).py12(),
                SizedBox(
                  width: size.width * 0.6,
                  height: size.height * 0.05,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentLocation = centerLatLng;
                      });

                    },
                    child: Text(
                      'تأكيد',
                      style: TextStyle(
                          color: Palette.white, fontSize: textScale * 18),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );

  }

  Future<void> _showSearchDialog() async {
    var p = await PlacesAutocomplete.show(
        context: context,
        apiKey: 'googleApikey',
        mode: Mode.fullscreen,
        language: "ar",
        region: "ly",
        offset: 0,
        hint: "ابحث بإسم المنطقة او الشارع",
        radius: 1000,
        types: [],
        strictbounds: false,
        components: [Component(Component.country, "ly")]);
    _getLocationFromPlaceId(p!.placeId!);
  }

  Future<void> _getLocationFromPlaceId(String placeId) async {
    GoogleMapsPlaces places = GoogleMapsPlaces(
      apiKey: 'googleApikey',
      apiHeaders: await const GoogleApiHeaders().getHeaders(),
    );

    PlacesDetailsResponse detail = await places.getDetailsByPlaceId(placeId);

    _animateCamera(LatLng(detail.result.geometry!.location.lat,
        detail.result.geometry!.location.lng));
  }

  Future<void> _animateCamera(LatLng location) async {
    final GoogleMapController controller = await _controller.future;
    CameraPosition cameraPosition = CameraPosition(
      target: location,
      zoom: 18,
    );
    print(
        "animating camera to (lat: ${location.latitude}, long: ${location.longitude}");
    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }
}
