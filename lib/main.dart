import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    // scale: boxf,
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.fill),
              ),
              child: Stack(
                children: [
                  Positioned(
                      width: 80,
                      height: 200,
                      left: 30,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/light-1.png"))),
                      ))
                  ,
                  Positioned(
                      width: 80,
                      height: 150,
                      left: 140,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                AssetImage("assets/images/light_2.png"))),
                      )),
                  Positioned(
                      width: 80,
                      height: 150,
                      right: 40,
                      top: 40,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                AssetImage("assets/images/clock.png"))),
                      )),
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Center(

                        child: Text("Login",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(10)
            ,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),

                      boxShadow: [
                        BoxShadow(color: Color.fromRGBO(143, 148, 251, 3)
                        ,
                        blurRadius: 20,
                        offset: Offset(0,10,))
                      ]
                    ),

                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email or phone number",
                              hintStyle: TextStyle(color: Colors.grey)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),

                        boxShadow: [
                          BoxShadow(color: Color.fromRGBO(143, 148, 251, 3)
                              ,
                              blurRadius: 20,
                              offset: Offset(0,10,))
                        ]
                    ),

                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey[100]))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox( height:30),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [
                         Color.fromRGBO(143, 148,251,1),
                          Color.fromRGBO(143, 148,251,6)

                          ]
                      )

                    ),
                    child: Center(
                      child: Text("Login",style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  )
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
