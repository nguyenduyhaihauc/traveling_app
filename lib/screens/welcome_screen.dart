import 'package:flutter/material.dart';

import 'home_page.dart';

class WelcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover, //Bo goc anh
            opacity: 0.7 //Do mo
        )
      ),
      child: Material( //Lop nen tang de xay dung Material Design
        color: Colors.transparent,
        child: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
                child: Column(
                  // Xac dinh cac thuoc tinh con theo truc ngang
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Enjoy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5 //Dieu chinh khoang cach giua cac chu
                        ),
                    ),
                    SizedBox(height: 2,),
                    Text(
                        'the world!',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9), //Dieu chinh muc do trong suot cua 1 mau
                          fontSize: 35,
                          fontWeight: FontWeight.w100,
                          letterSpacing: 1.5
                        ),
                    ),
                    SizedBox(height: 12,),
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and"
                        " typesetting industry. Lorem Ipsum has been the "
                        "industry's standard dummy text ever since the 1500s,"
                        " when an unknown printer took a galley of type and "
                        "scrambled it to make a type specimen book.",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 16,
                          letterSpacing: 1.2
                        ),
                    ),
                    SizedBox(height: 30,),
                    // InkWell la 1 Widget trong Flutter de tao hieu ung song khi cham
                    // hoac tuong tac voi Widget
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => HomePage()
                        ));
                      }, //Xu ly cac hanh dong khi nhan
                      child: Ink( //Dam bao cac hieu ung song khong bi che cat hoac che ben ngoai
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration( //Tang tri cac Widget co dang hop
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black54,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
            )
        ),
      ),
    );
  }
}
