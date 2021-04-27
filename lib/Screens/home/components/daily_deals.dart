import 'package:flutter/material.dart';
import 'package:travel_app/Models/daily_deals_model.dart';
import 'package:travel_app/Screens/constants/constants.dart';

class DailyDealsScreen extends StatefulWidget {
  @override
  _DailyDealsScreenState createState() => _DailyDealsScreenState();
}

class _DailyDealsScreenState extends State<DailyDealsScreen> {

  List<DailyDeals> dailyDeals;

  void initState() {
    dailyDeals = Constants.getDailyDealsList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Daily Deals',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                fontSize: 18),
              ),
            ],
          ),
        ),

        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Container(
              margin: EdgeInsets.only(top: 5.0),
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                // color: Colors.red,
              ),
              child: PageView.builder(
                  itemCount: dailyDeals.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildDaliyDeals(dailyDeals[index], index);
                  }),
            ),
          ),
        ),
      ],
    );
  }
}

Widget _buildDaliyDeals(DailyDeals item, int index) {
  return Container(
    width: 90,
    height: 100,
    child: Card(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Stack(
              children: <Widget>[
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    child: Image.asset(
                      item.img,
                      width: 180,
                      height: 180,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  // child:Icon(Icons.favorite_border,color:Colors.white,),
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
                ),
              ],
            ),
          ),
          Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.only(
                    top: 5.0,
                    left: 10.0,
                    bottom:10.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Text(
                        item.add,
                        style: TextStyle(
                            fontFamily: 'Roboto Regular',
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),

                    Row(
                      children: <Widget>[
                        Text(
                          item.star,
                          style: TextStyle(
                              fontFamily: 'Roboto Medium',
                              fontSize: 15.5,
                              fontWeight: FontWeight.w500,
                              color: Colors.orangeAccent),
                        ),
                        SizedBox(width: 10,),
                        Icon(
                          Icons.location_on,
                          color: Colors.black38,
                          size: 15.0,
                        ),

                        Text(
                          item.location,
                          style: TextStyle(
                              fontFamily: 'Roboto Medium',
                              color: Colors.black38,
                              fontSize: 12.5,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Container(
                          height: 18,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 10.0,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                item.rating,
                                style: TextStyle(
                                    fontFamily: 'Roboto Regular',
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          item.review,
                          style: TextStyle(
                              color: Colors.black38,
                              fontFamily: 'Roboto Regular',
                              fontSize: 12.5,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),

                    Text(
                      item.offer,
                      style: TextStyle(
                          fontFamily: 'Roboto Regular',
                          color: Colors.redAccent,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600),
                    ),

                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              // color: Colors.redAccent,
                              width: 100,
                              alignment: Alignment.bottomRight,
                              child: Text(
                                'Discover ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    ),
  );
}
