import 'package:flutter/material.dart';

import 'listings.dart';
import 'styles.dart';
import 'widgets/expanded_section.dart';


class CalendarPage extends StatefulWidget {
  CalendarPage({Key key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  bool _isExpanded = false;
 // CalendarController _calendarController;
  //CalendarController _calendarController;
  int _sliderValue = 0;

  void _toogleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  void initState() {
    super.initState();
   // _calendarController = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: <Widget>[
                buildMainHeader(),
                buildToggleButton(),
              ],
            ),
            buildExpandableChildren(),
            SizedBox(
              height: 30,
            ),
            buildUpcomingEventsTitle(),
            SizedBox(height: 30,),
          ],
        ));
  }

  Widget buildUpcomingEventsTitle() {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Upcoming Event',
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_)=>Listings(),
              ));
            },
            child: Text(
              'View All',
              style: TextStyle(
                color: Colors.lightBlue[200],
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildExpandableChildren() {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: ExpandedSection(
        expand: _isExpanded,
        child: Container(
          padding: EdgeInsets.only(bottom: 20),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //_buildHorizontalDatesCalender(),
              SizedBox(height: 10),
              _buildDistanceSelectorSlider(),
            ],
          ),
        ),
      ),
    );
  }
/*
  Widget _buildHorizontalDatesCalender() {
    return TableCalendar(
      calendarController: _calendarController,
      initialCalendarFormat: CalendarFormat.week,
      formatAnimation: FormatAnimation.slide,
      startingDayOfWeek: StartingDayOfWeek.monday,
      availableCalendarFormats: {CalendarFormat.week: ''},
      calendarStyle: CalendarStyle(
        selectedColor: searchBarColor,
      ),
    );
  }

 */

  Widget _buildDistanceSelectorSlider() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(32),
      decoration: distanceBoxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Events near me',
            style: TextStyle(
              fontSize: 22,
              color: searchBarColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Use the slider to select the events area',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: searchBarColor,
            ),
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.deepPurple,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$_sliderValue Km',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
                Slider(
                  min: 0.0,
                  max: 50.0,
                  label: '',
                  divisions: 50,
                  activeColor: Colors.orange,
                  inactiveColor: Colors.grey,
                  value: _sliderValue.toDouble(),
                  onChanged: (double _newValue) {
                    setState(() {
                      _sliderValue = _newValue.round();
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Positioned buildToggleButton() {
    return Positioned(
      bottom: -30,
      child: InkResponse(
        onTap: _toogleExpand,
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 10,
            ),
          ),
          child: Center(
            child: Icon(
              _isExpanded ? Icons.arrow_drop_down : Icons.arrow_drop_up,
              size: 42,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Container buildMainHeader() {
    return Container(
      padding: EdgeInsets.fromLTRB(24, 66, 24, 24),
      height: 270,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/header_image.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Find Amazing \nevents happening \nnear you.',
            style: mainTitleStyle,
          ),
          SizedBox(height: 12),
          Text(
            '32 Events in your area',
            style: mainSubtitleStyle,
          ),
          SizedBox(height: 12),
          //buildSearchBar(),
        ],
      ),
    );
  }

  Container buildSearchBar() {
    return Container(
      height: 60,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: searchBarDecoration,
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.search, color: Colors.white, size: 18),
              border: InputBorder.none,
              hintText: 'Search for an event ... ',
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
