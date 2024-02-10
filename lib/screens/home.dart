import 'package:flutter/material.dart';
import 'package:flutter_application_5/models/account_info.dart';
import 'package:flutter_application_5/screens/realhome.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:photo_browser/photo_browser.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int _selectedIndex = 0;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          flexibleSpace: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                'assets/images/appbar.jpg',
                fit: BoxFit.cover,
                height: 150,
                width: double.infinity,
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Row(
                  children: [
                    SizedBox(
                      width: 130,
                      height: 200,
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage:
                              AssetImage("assets/images/gallery_1.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(width: 140),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.share_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.settings_outlined,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        /* padding: const EdgeInsets.all(20.0), */
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 60,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fahime Rafiee"),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined,
                                  color: Colors.grey),
                              SizedBox(width: 2),
                              Text("Rasht, Iran")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    child: Text(
                      "Edit profile",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(22),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey, width: 1.0),
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: myaccountDetails.map((detail) {
                    return Container(
                      margin: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            detail.number,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            detail.title,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList()),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 1.0, color: Colors.grey),
                      bottom: BorderSide(width: 1.0, color: Colors.grey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.auto_awesome_mosaic_outlined, color: Colors.grey),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(Icons.view_day_outlined, color: Colors.grey),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(Icons.auto_awesome_motion_outlined, color: Colors.grey),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(4),
              child: Row(
                children: [
                  // Partie Gauche
                  Flexible(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
                          height: size.height / 2,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/gallery_1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: size.height / 5,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/product_7.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  // Partie Droite
                  Flexible(
                    flex: 3,
                    child: Column(
                      children: [
                        Container(
                          height: size.height / 5,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/product_8.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: size.height / 2,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/product_3.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        animationCurve: Curves.easeIn,
        animationDuration: Duration(milliseconds: 0),
        index: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => RealHome()),
            );
          } else if (index == 3) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          }
        },
        items: [
          Icon(
            Icons.home,
            color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
          ),
          Icon(
            Icons.search,
            color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: LinearGradient(colors: colors)
            ),
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.cloud_download_rounded,
              color: _selectedIndex == 2 ? Colors.white : Colors.blue,
            ),
          ),
          Icon(
            Icons.person,
            color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
          ),
          Icon(
            Icons.favorite_border_outlined,
            color: _selectedIndex == 4 ? Colors.blue : Colors.grey,
          ),
        ],
      ),
    );
    
  }
}


/* class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    int _selectedIndex = 0;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Container(
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/gallery_1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Taylor Swift",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "5 Minutes ago",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.auto_awesome_motion_outlined,
                    color: Colors.grey,
                  ),
                  color: Color.fromARGB(255, 234, 231, 231),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        animationCurve: Curves.easeIn,
        animationDuration: Duration(milliseconds: 0),
        index: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => RealHome()),
            );
          } else if (index == 3) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          }
        },
        items: [
          Icon(
            Icons.home,
            color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
          ),
          Icon(
            Icons.search,
            color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _selectedIndex == 2 ? Colors.blue : Colors.white,
            ),
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.cloud_download_rounded,
              color: _selectedIndex == 2 ? Colors.white : Colors.blue,
            ),
          ),
          Icon(
            Icons.person,
            color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
          ),
          Icon(
            Icons.favorite_border_outlined,
            color: _selectedIndex == 4 ? Colors.blue : Colors.grey,
          ),
        ],
      ),
    );
  }
}
 */