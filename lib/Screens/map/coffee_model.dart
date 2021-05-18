import 'package:google_maps_flutter/google_maps_flutter.dart';

class Coffee {
  String shopName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;

  Coffee(
      {this.shopName,
        this.address,
        this.description,
        this.thumbNail,
        this.locationCoords});
}

final List<Coffee> coffeeShops = [
  Coffee(
      shopName: 'The British Museum',
      address: 'Great Rusell St, London',
      description:
      'Huge showcase for global antiquities, including Egyptian mummies and ancient Greek sculptures.',
      locationCoords: LatLng(51.5064722,-0.1557469),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipN507h8euodRM1TDdcl8ka1EtnHYOigTsebYXJe=w408-h314-k-no'
  ),
  Coffee(
      shopName: 'Museum of London',
      address: '150 London Wall',
      description:
      'Artifacts and interactives chronicle London\'s turbulent history from pre-Roman to modern times.',
      locationCoords: LatLng(51.5142673,-0.1030029),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipOezb8X7t32hvef7pKpBStgYwwKSE6VsbSdxgy5=w408-h270-k-no'
  ),
  Coffee(
      shopName: 'BigBen',
      address: 'Palace of Westminster',
      description:
      '16-storey Gothic clocktower and national symbol at the Eastern end of the Houses of Parliament.',
      locationCoords: LatLng(51.5004821,-0.1257627),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipMzlsXUt4HcMwgvgY7U9s8rZjCZpP2OdbLgPwa_=w408-h257-k-no'
  ),
  Coffee(
      shopName: 'Natural History Museum',
      address: 'Cromwell Rd',
      description:
      'Landmark museum of animals and natural phenomena, with hands-on exhibits and animatronic dinosaurs.',
      locationCoords: LatLng(51.495941,-0.1785822),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipOkzmfiMj00hbJ4YFOjlxIFvjYOLXG6KaKYdpKB=w408-h300-k-no'
  ),
  Coffee(
      shopName: 'Victoria and Albert Museum',
      address: 'Cromwell Rd, London',
      description:
      'Blockbuster exhibitions and permanent decorative arts collection, with design shop and ornate cafe.',
      locationCoords: LatLng(51.4966392,-0.1809347),
      thumbNail: 'https://lh3.googleusercontent.com/proxy/qVHdhaGYDjxkBlT3AR8DoLgr0jxhq9h9BcO_aOFUXQqWXlzZvpbX9dR9PeZ0SKt5p9DghIRymljfz4Mm4eXoieba3jZfCIDK4tLTcGKZuTUVGSj1iU1aITusL54OCNpEX88Ij46eAs3_5HrbaAxXdKBhgeHocA=w408-h272-k-no'
  )
];