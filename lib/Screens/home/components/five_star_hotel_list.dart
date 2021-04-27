import 'package:flutter/material.dart';
import 'package:travel_app/Models/five_star_hotel.dart';
import 'package:travel_app/Screens/constants/constants.dart';
import 'package:travel_app/util.dart';
import '../../../responsive.dart';
import 'liked_button.dart';


class FiveStarHotels extends StatefulWidget {
  @override
  _FiveStarHotelsState createState() => _FiveStarHotelsState();
}

class _FiveStarHotelsState extends State<FiveStarHotels> {
  double _height;
  double _width;

  List<FiveStarHotel> fiveStarHotel;
  int currentSlider = 0;

  void initState() {
    fiveStarHotel = Constants.getFiveStarHotelList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery
        .of(context)
        .size
        .height;
    _width = MediaQuery
        .of(context)
        .size
        .width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Top 5 star hotels',
                style: TextStyle(
                    fontFamily: 'Roboto Regular',
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20.0),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(
                        fontSize: isTab(context) ? 20 : 14
                    ),
                  )
              ),
            ),


          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0, left: 20, right: 20),
          height: 155,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: fiveStarHotel.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildFiveStarHotel(fiveStarHotel[index]);
            },
          ),
        ),
      ],
    );
  }


  Widget _buildFiveStarHotel(FiveStarHotel item) {
    return Container(
      width: 200,//_width / 2.2,
      padding: EdgeInsets.only(left: 0.0, right: 5.0),
      color: Colors.white,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 6,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item.img,
                      width: _width,
                      height: 180,
                      fit: BoxFit.fill,
                    ),
                    /*
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 5.0, right: 5.0),
                        alignment: Alignment.center,
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.transparent.withOpacity(0.5),
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                    ), */
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: double.infinity,
                          height: isTab(context) ? 120 : 80,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: cardInfoDecoration,
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                item.hotelName,
                                                style: TextStyle(
                                                  fontFamily: 'Roboto Regular',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16.0,
                                                  color: Colors.white,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Spacer(),
                                            SizedBox(height: 10,),
                                            LikedButton(),
                                          ],
                                        ),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    item.location,
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto Medium',
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14.0,
                                                      color: Colors.white,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),

                                                Icon(
                                                  Icons.location_on,
                                                  size: 14.5,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

          ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }


}