import 'package:flutter/material.dart';

class StatsScreen extends StatefulWidget {
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  String _place = "country";
  String _option = "total";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Statistics",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0XFF473F97)),
      home: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications_none),
              onPressed: () {},
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Statistics",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold)),
            ),
            _placeNav(),
            _optionNav(),
            _stats(),
            _graph()
          ],
        ),
      ),
    );
  }

  Widget _graph() {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 30.0, bottom: 20.0, left: 20.0, right: 20.0),
            child: Text(
              "Daily New Cases",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Image(
              image: AssetImage("assets/stats.png"),
            ),
          )
        ],
      ),
    );
  }

  Widget _stats() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
                width: MediaQuery.of(context).size.width / 2 - 25,
                height: 100.0,
                decoration: BoxDecoration(
                    color: Color(0XFFFFB259),
                    borderRadius: BorderRadius.circular(7.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Affected",
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                    Text(
                      "336,851",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
                width: MediaQuery.of(context).size.width / 2 - 25,
                height: 100.0,
                decoration: BoxDecoration(
                    color: Color(0XFFFF5959),
                    borderRadius: BorderRadius.circular(7.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Death",
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                    Text(
                      "9,620",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
                width: MediaQuery.of(context).size.width / 3 - 25,
                height: 100.0,
                decoration: BoxDecoration(
                    color: Color(0XFF4CD97B),
                    borderRadius: BorderRadius.circular(7.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Recovered",
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                    Text(
                      "17,977",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
                width: MediaQuery.of(context).size.width / 3 - 25,
                height: 100.0,
                decoration: BoxDecoration(
                    color: Color(0XFF4DB5FF),
                    borderRadius: BorderRadius.circular(7.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Active",
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                    Text(
                      "301,251",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
                width: MediaQuery.of(context).size.width / 3 - 25,
                height: 100.0,
                decoration: BoxDecoration(
                    color: Color(0XFF9059FF),
                    borderRadius: BorderRadius.circular(7.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Serious",
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                    Text(
                      "8,702",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _optionNav() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Total",
                style: TextStyle(
                    color: _option == "total" ? Colors.white : Colors.grey[400],
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              setState(() {
                _option = "total";
              });
            },
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Today",
                style: TextStyle(
                    color: _option == "today" ? Colors.white : Colors.grey[400],
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              setState(() {
                _option = "today";
              });
            },
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Yesterday",
                style: TextStyle(
                    color: _option == "yesterday"
                        ? Colors.white
                        : Colors.grey[400],
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              setState(() {
                _option = "yesterday";
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _placeNav() {
    return Container(
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0XFFAEA1E5).withOpacity(0.3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            child: Container(
              width: 150.0,
              padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 40.0),
              decoration: BoxDecoration(
                  color: _place == "country" ? Colors.white : null,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                "My Country",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: _place != "country" ? Colors.white : null,
                    fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              setState(() {
                _place = "country";
              });
            },
          ),
          GestureDetector(
            child: Container(
              width: 150.0,
              padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 40.0),
              decoration: BoxDecoration(
                  color: _place == "global" ? Colors.white : null,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                "Global",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: _place != "global" ? Colors.white : null,
                    fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              setState(() {
                _place = "global";
              });
            },
          )
        ],
      ),
    );
  }
}
