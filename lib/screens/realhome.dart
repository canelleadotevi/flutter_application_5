import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_application_5/screens/home.dart';

class RealHome extends StatefulWidget {
  const RealHome({super.key});

  @override
  State<RealHome> createState() => _RealHomeState();
}

class _RealHomeState extends State<RealHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int _selectedIndex = 0;
    return Scaffold(
      body: ListView(scrollDirection: Axis.vertical, children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/gallery_1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: SizedBox(
                  width: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Taylor Swift",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
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
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.auto_awesome_motion_outlined,
                    color: Colors.grey,
                  ),
                  color: Color.fromARGB(255, 234, 231, 231),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                width: double.infinity,
                height: size.height / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/product_8.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Text(
                  "Hourse runing",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                trailing: Row(
                  
                  mainAxisSize:
                      MainAxisSize.min, 
                  children: [
                    Text(
                      "1,445 likes",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.all(12),
                padding: EdgeInsets.only(
                  top: 10,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                              image: AssetImage("assets/images/gallery_1.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Beautiful at work !!!",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                              image: AssetImage("assets/images/gallery_1.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          " I think this photo is low quality ...",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                              image: AssetImage("assets/images/gallery_1.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Add a comment",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 4),
                            ),
                          ),
                        ),
                        TextButton(
                          child: Text(
                            "POST",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "View all 13 comments",
                            style: TextStyle(color: Colors.grey),
                          ),
                          style: ButtonStyle(
                              padding:
                                  MaterialStatePropertyAll(EdgeInsets.all(0))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/review_2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: SizedBox(
                        
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Tal",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
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
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.auto_awesome_motion_outlined,
                          color: Colors.grey,
                        ),
                        color: Color.fromARGB(255, 234, 231, 231),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      width: double.infinity,
                      height: size.height / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/product_3.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
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
              Icons.file_download_outlined,
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
