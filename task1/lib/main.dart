import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:task1/tipsScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(body:SplashScreen(
        seconds: 4,
        navigateAfterSeconds: new HomeScreen(),
        image: Image.asset("assets/splash.png",width: 200,height: 200,fit: BoxFit.fitWidth,),
        backgroundColor: Color(0xff6707ed),
        photoSize: 100,
        useLoader: false,
      )),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (index){
          if (index ==2){
            showDialog(context: context , builder: (con){
              return AlertDialog(
               backgroundColor: Colors.grey,
                content: Container(

                  width: MediaQuery.of(context).size.width *.6,
                  height:MediaQuery.of(context).size.height *.4 ,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonAdd(context, "SCAN RAY",true),
                      ButtonAdd(context, "SCAN REPORT",true),
                      ButtonAdd(context, "DEFINE TYPE",true),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 100,
                            color: Color(0xff6707ed),
                            child: Text("CANCEL", style: TextStyle(color: Colors.white),),
                        )
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
          }
        },
        selectedItemColor:Color(0xff6707ed) ,
        items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, size: 30,color: Colors.grey,),label: "",activeIcon: Icon(Icons.home, size: 30,color: Color(0xff6707ed),)),
            BottomNavigationBarItem(icon: Icon(Icons.location_on, size: 30,color: Colors.grey,),label: "",activeIcon: Icon(Icons.location_on, size: 30,color: Color(0xff6707ed),)),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit, size: 30,color: Colors.grey,),label: "",activeIcon: Icon(Icons.ac_unit, size: 30,color: Color(0xff6707ed),)),
            BottomNavigationBarItem(icon: Icon(Icons.star, size: 30,color: Colors.grey,),label: "",activeIcon: Icon(Icons.star, size: 30,color: Color(0xff6707ed),)),
            BottomNavigationBarItem(icon: Icon(Icons.menu, size: 30,color: Colors.grey,),label: "",activeIcon: Icon(Icons.menu, size: 30,color:Color(0xff6707ed),))
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height  ,
        child: ListView(
          children: [

            Container(
              width: MediaQuery.of(context).size.width ,
              height:MediaQuery.of(context).size.height *.1,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width ,
                    height:MediaQuery.of(context).size.height *.1 ,
                    decoration: BoxDecoration(
                      color: Color(0xff6707ed),
                    ),),
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    height:MediaQuery.of(context).size.height *.1 ,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/1.png"),
                        Spacer(),
                        Icon(Icons.search, color: Colors.white,),
                        Icon(Icons.notifications, color: Colors.white,),
                      ],
                    ),
                  ),
                  Container(
                    child: Positioned(
                    right: 0,
                      bottom: 0
                      ,child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (co){
                          return tipsScreen();
                        }));
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        child: Icon(Icons.person_add, color: Colors.black,size: 40,),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                    ),
                      ),
                    ),
                  )


                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height *.55 ,
              child: Stack(
                  children:[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height:MediaQuery.of(context).size.height *.55 ,
                      decoration: BoxDecoration(
                        color: Color(0xffE4E4E4),

                      ),
                    ),
                    ListView(
                      children: [
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left:16.0, right: 16),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text("Information about rays types", style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.bold),),
                            width: MediaQuery.of(context).size.width,
                            height:MediaQuery.of(context).size.height *.08 ,
                            decoration: BoxDecoration(
                                color: Colors.white, borderRadius: BorderRadius.circular(16)
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left:16.0, right: 16),
                          child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)  ),
                              width: MediaQuery.of(context).size.width,
                              height:MediaQuery.of(context).size.height *.2 ,
                              child: Image.asset("assets/2.png",fit: BoxFit.fitWidth,)),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left:16.0, right: 16),
                          child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)  , color: Colors.white),
                              width: MediaQuery.of(context).size.width,
                              height:MediaQuery.of(context).size.height *.18 ,
                              child: Text("\n -------------------------------------------------------------------------------- "
                                  "\n --------------------------------------------------------------------------------   \n "
                                  "-------------------------------------------------------------------------------- \n "
                                  "--------------------------------------------------------------------------------   \n"
                                  "---------------------------------------- ----------------------------------------"
                                  " \n -------------------------------------------------------------------------------- ")),
                        ),

                      ],
                    )
                  ]
              ),
            ),
          SizedBox(height: 30,),
          Container(
              width: MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height *.2 ,
              child: Column(
                children: [
                  Wrap(children: [Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Row(mainAxisAlignment:MainAxisAlignment.spaceAround,children: [ButtonAdd(context, "SCAN RAY",false), ButtonAdd(context, "SCAN REPORT",false), ],),
                  )]),
                  SizedBox(height: 30,),

                  Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [ButtonAdd(context, "Places",false), ButtonAdd(context, "AIDS ",false), ButtonAdd(context, "INFO",false), ],),
                      ),
                    ],
                  )

                ],
              )),
          ],
        ),
      ),
    );
  }
  Widget ButtonAdd(context, title, bool isDialog){
    return Container (
      decoration: BoxDecoration(
        color: Color(0xff6707ed),borderRadius: BorderRadius.circular(32 )
      ),
      padding: !isDialog ? EdgeInsets.only(left: 32, right: 32) : EdgeInsets.only(left: 16, right: 16),
      height:MediaQuery.of(context).size.height *.06 ,
      //width: isDialog ? 30 : MediaQuery.of(context).size.width * .3057 ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.add, color: Colors.white,),
          Text(title, style: TextStyle(
            color: Colors.white
          ),)
        ],
      ),

    );
  }
}

