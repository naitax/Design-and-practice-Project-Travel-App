import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/responsive.dart';

class PlacesCategories extends StatefulWidget {
  const PlacesCategories({
    Key key,
  }) : super(key: key);

  @override
  _PlacesCategoriesState createState() => _PlacesCategoriesState();
}

class _PlacesCategoriesState extends State<PlacesCategories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> placesCategoris = ["Popular Places"];

    return Padding(
      padding: EdgeInsets.all(30),
      child: SizedBox(
        height: isTab(context) ? 35 : 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: placesCategoris.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  this.selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    placesCategoris[index],
                    style: TextStyle(
                      fontSize: 20,
                      color: selectedIndex == index ? kPrimaryColor : kTextColor,
                      fontWeight: selectedIndex == index ? FontWeight.bold : FontWeight.normal
                    ),
                  ),
                ),
              ),
            );
          }
        ),
      ),

    );
  }
}


