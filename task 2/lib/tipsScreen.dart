import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tipsScreen extends StatefulWidget {

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return tipsScreenState();
  }
}
class tipsScreenState extends State<tipsScreen>{
  List<IconData> IconsData =[
    Icons.add_link,
    Icons.add_box_outlined,
    Icons.account_balance_sharp,
  ];
  Color highlighted = Color(0xff2799FA);
  int selected_index = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: 1,
          onTap: (index){
            if (index ==1){
              Navigator.push(context, MaterialPageRoute(builder: (co){
                return tipsScreen();
              }));

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
                  height:MediaQuery.of(context).size.height *.15,
                  color: Colors.transparent,
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
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Image.asset("assets/1.png"),
                            ),
                            Spacer(),
                            Icon(Icons.search, color: Colors.white,),
                            Icon(Icons.notifications, color: Colors.white,),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 10
                        ,
                        child: Container(
                          width: 60,
                          height: 60,
                          child: Image.asset("assets/profile.png",fit: BoxFit.fill,),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                              shape: BoxShape.circle
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  height: 53,
                  width: MediaQuery.of(context).size.width ,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context , index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              selected_index =index;
                            });
                          },
                          child: Container(
                            height: 10,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color:index != selected_index ? Colors.grey : highlighted,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: index != 3 ? Icon(IconsData[index],color: Colors.white,): Text("All",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      );
                    },



                  ),
                ),
                Text(selected_index == 0 ?"Pharmacies":selected_index == 1 ? "doctor 's clinic": selected_index == 2 ? "Ray Centers" :"" ),
               selected_index == 0 ?
               Container(
                 height: MediaQuery.of(context).size.height * .5,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Image.asset("assets/map1.png", height: MediaQuery.of(context).size.height * .8, width: MediaQuery.of(context).size.width*.8,fit: BoxFit.cover,),
                 ),
               ):
               selected_index == 1 ?
               Container(                 height: MediaQuery.of(context).size.height * .5,

                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Image.asset("assets/doctors_clinic.png", height: MediaQuery.of(context).size.height * .8, width: MediaQuery.of(context).size.width*.8,fit: BoxFit.cover),
                 ),
               ):
               selected_index == 2 ?
               Container(                 height: MediaQuery.of(context).size.height * .5,

                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Image.asset("assets/doctors_clinic.png", height: MediaQuery.of(context).size.height * .8, width: MediaQuery.of(context).size.width*.8,fit: BoxFit.cover),
                 ),
               ):
               Container(                 height: MediaQuery.of(context).size.height * .5,

                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Image.asset("assets/all.png", height: MediaQuery.of(context).size.height * .8, width: MediaQuery.of(context).size.width*.8,fit: BoxFit.cover),
                 ),
               ),

                Center(child: Text("Search another area")),
                Container(
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.width *.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            hintText: "  type area ",hintStyle: TextStyle(fontSize: 12)
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xff2799FA),
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Text("Search" , style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                )

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