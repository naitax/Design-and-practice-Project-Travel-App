import 'package:flutter/material.dart';
class FeaturedPlaces extends StatefulWidget {
  @override
  _FeaturedPlacesState createState() => _FeaturedPlacesState();
}

class _FeaturedPlacesState extends State<FeaturedPlaces> {

  List<Featured> featureds = getFeaturedList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8,),
          child: Text(
            "Featured Places",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        Container(
          height: 90,
          child: PageView(
            physics: BouncingScrollPhysics(),
            children: buildFeatureds(),
          ),
        ),
      ],
    );
  }


  List<Widget> buildFeatureds() {
    List<Widget> list = [];
    for (var featured in featureds) {
      list.add(buildFeatured(featured));
    }
    return list;
  }

  Widget buildFeatured(Featured featured) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12,),
      child: Card(
        elevation: 0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featured.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text(
                  featured.year,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(
                  height: 4,
                ),

                Text(
                  featured.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}

  class Featured {

  String year;
  String title;
  String imageUrl;

  Featured(this.year, this.title, this.imageUrl);

}

List<Featured> getFeaturedList(){
  return <Featured>[
    Featured(
      "2019",
      "Top 5 Beaches",
      "assets/images/beach.jpg",
    ),
    Featured(
      "2019",
      "Best Nightlife Cities",
      "assets/images/city.jpg",
    ),
    Featured(
      "2018",
      "Top 10 Destinations",
      "assets/images/destination.jpg",
    ),
  ];
}