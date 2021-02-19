import 'package:flutter/material.dart';

class tipsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height  ,
        child: ListView(
          children: [

            Container(
              width: MediaQuery.of(context).size.width,
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
                        GestureDetector(
                            onTap:(){
                          Navigator.pop(context);
                          },child: Icon(Icons.arrow_back,color: Colors.white,)),
                        Text(" Tips",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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
                      ,child: Container(
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
                  )
                ],
              ),

            ),
            Container (
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height *.25,
              color: Colors.grey,
            ),Container (
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height *.05,
              color: Colors.grey,),
            Container (
              color: Colors.white,
              alignment: Alignment.center,
              child: Text("       About Covid-19 \n"
                  ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),textAlign: TextAlign.center),
            ),Container (
              color: Colors.white,
              alignment: Alignment.center,
              child: Text("Drink water\n"
              "Lore ipsum dolor sit amet, consectetur\n"
              "adipisicing elit, sed do eiusmod tempor\n"
              "incididunt ut labore et dolore magna aliqua.\n"
              "Ut enim ad minim veniam, quis nostrud\n"
              "exercitation ullamco laboris nisi ut aliquip ex\n"
              "ea commodo consequat. Duis aute irure dolor\n"
                  "in reprehenderit in voluptate velit esse cillum\n"
                  "dolore eu fugiat nulla pariatur. Excepteur sint\n"
                  "occaecat cupidatat non proident, sunt in culpa\n"
                  "qui officia deserunt mollit anim id est\n"
                  "Calories\n"
                  "Lorem ipsum dolor sit amet, conse ctetur \n"
                  "adipiscing elit, sed do eiusmod tempor\n"
                  "incididunt ut labore",style: TextStyle(fontSize: 20),textAlign: TextAlign.left,
                  ),
            ),
          ]),

    ));
  }
  Widget ButtonAdd(context, title){
    return Container (
      decoration: BoxDecoration(
          color: Color(0xff6707ed),borderRadius: BorderRadius.circular(32 )
      ),
      padding: EdgeInsets.only(left: 32, right: 32),
      height:MediaQuery.of(context).size.height *.06 ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
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