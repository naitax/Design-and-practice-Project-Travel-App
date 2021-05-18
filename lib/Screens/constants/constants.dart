import 'package:travel_app/Models/daily_deals_model.dart';
import 'package:travel_app/Models/five_star_hotel.dart';

class Constants {

  static List<DailyDeals>getDailyDealsList(){
    return[
      DailyDeals('assets/images/goaBeach.jpg','London Travel Package','5 Stars','London', '4.9','(569 reviews)','Book & save 20%!'),
      DailyDeals('assets/images/goaBeach.jpg','Bilagio','5 Stars','Las vegas', '4.9','(569 reviews)','Book & save 20%!'),
      DailyDeals('assets/images/goaBeach.jpg','Bilagio','5 Stars','Las vegas', '4.9','(569 reviews)','Book & save 20%!'),
    ];
  }

  static List<FiveStarHotel>getFiveStarHotelList(){
    return[
      FiveStarHotel(1, 'assets/images/hill.jpeg','Skylofts hotel','Las Vegas'),
      FiveStarHotel(2, 'assets/images/bangkok.jpg','Waldrof hotel','Bangkok'),
      FiveStarHotel(3, 'assets/images/london.jpg','The Palazzo hotel','London'),
      FiveStarHotel(4, 'assets/images/istanbul.jpeg','Vdara hotel','Istanbul'),
    ];
  }
}