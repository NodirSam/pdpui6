import 'package:flutter/material.dart';
import 'package:pdpui6/animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id="home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isLogin=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/images1.jpeg"),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 20,),
              FadeAnimation(1, Text("Find the best parties near you.", style: TextStyle(color: Colors.yellow, fontSize: 40, fontWeight: FontWeight.bold,height: 1.1),),),
              SizedBox(height: 20,),
              FadeAnimation(2, Text("Let us find you a party for your interst", style: TextStyle(color: Colors.green[300]!, fontSize: 25, fontWeight: FontWeight.bold, height: 1.1),),),
              SizedBox(height: 350,),

              _isLogin ?
                  FadeAnimation(2, Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.yellow[900]!
                      ),
                      child: Center(
                        child: Text("Start", style: TextStyle(color: Colors.white, fontSize: 20),),
                      )
                  ))
                  :
                  FadeAnimation(2, Row(
                    children: [
                      Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red
                            ),
                            child: Center(
                              child: Text("Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                            ),
                          )
                      ),
                      SizedBox(width: 20,),

                      Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue
                            ),
                            child: Center(
                              child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                            ),
                          )
                      )

                    ],
                  )),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
