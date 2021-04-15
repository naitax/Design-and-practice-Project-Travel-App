import 'package:flutter/material.dart';
import 'package:travel_app/Screens/home/components/current_location.dart';
import 'package:travel_app/Screens/home/components/feautured_places.dart';
import 'package:travel_app/Screens/home/components/location.dart';
import 'package:travel_app/Screens/home/components/map_widget.dart';
import 'package:travel_app/Screens/home/components/places_categoris.dart';
import 'package:travel_app/Screens/home/components/popular_places.dart';
import 'package:travel_app/Screens/home/components/recommended.dart';
import 'package:travel_app/Screens/home/components/recommended_places.dart';
import 'package:travel_app/Screens/home/components/search_bar.dart';
import 'package:travel_app/components/app_bar.dart';
import 'package:travel_app/components/bottom_nav_bar.dart';
import 'package:travel_app/components/hamburger_menu.dart';
import 'package:travel_app/components/user_avatar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: buildAppBar(context,
          title: 'Welcome to United Kingdom',
          leading: HamburgerMenu(),
          actions: [UserAvatar()]),
      backgroundColor: Colors.white,
      //bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            SearchBar(),
            PlacesCategories(),//popular, featured
            PopularPlaces(),
            //FeaturedPlaces(),
            //CurrentLocation(),
            //Location(),
            Recommended(),
            RecommendedPlaces()
          ],
        ),
      ),
    );
  }
}
