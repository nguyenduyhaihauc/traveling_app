import 'package:flutter/material.dart';
import 'package:traveling_app/screens/post_screen.dart';
import 'package:traveling_app/widgets/home_app_bar.dart';

import '../widgets/home_bottom_bar.dart';

class HomePage extends StatelessWidget {
  var catagory = [
    'Best Places',
    'Most Visited',
    'Favorites',
    'New, Added',
    'Motels',
    'Restaurants'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize( //Xac dinh kich thuoc ua thich cua widget con
          preferredSize: Size.fromHeight(90.0),
          child: HomeAppBar()
      ),
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Phan tin o dau
                  Row(
                    children: [
                      //Expanded Mo rong Widget con chiem het khong gian trong con lai
                      // theo truc chinh
                      Expanded(
                        child: Container(
                          height: 200,
                          child: ListView.builder(
                              itemCount: 6,
                              //Dinh huong noi dung ben trong co the cuon theo
                              // chieu ngang hoac doc
                              scrollDirection: Axis.horizontal,
                              // shrinkWrap dieu khien Widget cuon chiem khong gian vua
                              // du de hien thi tat ca cac phan tu cua no
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => PostScreen()
                                    ));
                                  },
                                  child: Container(
                                    width: 160,
                                    padding: EdgeInsets.all(20),
                                    margin: EdgeInsets.only(left: 15),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        //Tai anh tu muc Assets
                                          image: AssetImage("images/city${index+1}.jpg"),
                                          fit: BoxFit.cover,
                                          opacity: 0.7
                                      )
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          // Dieu chinh vi tri cua child widget
                                          // ben trong container
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                              Icons.bookmark_border_outlined,
                                              size: 30,
                                              color: Colors.white,
                                          ),
                                        ),
                                        Spacer(), //Tao khoang trong giua cac Widget con
                                        Container(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                              'City name',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600
                                              ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),

                  // Phan chi muc ben duoi

                  // Tao ra 1 vung cuon neu Widget con cua no vuot qua kich thuoc
                  // co san no se tao ra cuon theo huong chi dinh
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < 6; i++)
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4
                              )
                            ]
                          ),
                          child: Text(
                            catagory[i],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),//Khong cho phep cuon
                        itemCount: 6,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => PostScreen()
                                    ));
                                  },
                                  child: Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: AssetImage('images/city${index+1}.jpg'),
                                            fit: BoxFit.cover,
                                            opacity: 0.8
                                        )
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            Text(
                                              'City Name',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500
                                              ),
                                            ) ,
                                          Icon(Icons.more_vert, size: 30,)
                                        ],
                                    ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                    color: Colors.amber,
                                    size: 20,),
                                    Text("4.5",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500
                                    ),)
                                  ],
                                )
                              ],
                            ),
                          );
                        }
                        ),
                ],
              ),
            ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
