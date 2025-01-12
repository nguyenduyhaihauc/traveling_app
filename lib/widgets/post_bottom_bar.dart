import 'package:flutter/material.dart';

class PostBottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // MediaQuery lay kich man hinh cua thiet bi va khi chia
      // cho 2 thi no se lay 1 nua man hinh
      height: MediaQuery.of(context).size.height/2,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Color(0xFFEDF2F6),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40)
        )
      ),
      child: ListView(
        children: [
          Padding(
              padding: EdgeInsets.only(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "City Name, Country",
                         style: TextStyle(
                           fontSize: 23,
                           fontWeight: FontWeight.w600
                         ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 25,
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(
                            fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 25,),
                  // Content 
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and"
                      " typesetting industry. Lorem Ipsum has been the "
                      "industry's standard dummy text ever since the 1500s,"
                      " when an unknown printer took a galley of type and "
                      "scrambled it to make a type specimen book.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                    textAlign: TextAlign.justify, //Can deu chu ra hai ben le
                  ),
                  SizedBox(height: 20,),
                  // Phan hien thi anh duoi text
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 5),
                        //Expanded Chiem toan bo khong khong gian co san
                        // giup phan chia bo cuc cach hop ly
                          child: Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                    'images/city5.jpg',
                                    fit: BoxFit.cover,
                                    width: 120,
                                    height: 90,
                                ),
                              )
                          ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        //Expanded Chiem toan bo khong khong gian co san
                        // giup phan chia bo cuc cach hop ly
                        child: Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'images/city4.jpg',
                                fit: BoxFit.cover,
                                width: 120,
                                height: 90,
                              ),
                            )
                        ),
                      ),
                      Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 90,
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage("images/city6.jpg",),
                                  fit: BoxFit.cover,
                                  opacity: 0.4
                              )
                            ),
                            child: Text(
                                '10+',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4
                              )
                            ]
                          ),
                          child: Icon(Icons.bookmark_outline, size: 40,),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.redAccent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4
                              )
                            ]
                          ),
                          child: Text(
                              "Book Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
          )
        ],
      ),
    );
  }
}
