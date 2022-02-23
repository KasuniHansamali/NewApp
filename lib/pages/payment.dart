

import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return new Scaffold(



        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [

                Color.fromRGBO(0,0, 0, 1),
                Color.fromRGBO(0,0, 0, 1),






              ],
            ),
          ),
          child: ListView(children: <Widget>[

            Container(
              child: Text(
                "Select Payment Method",
                style: TextStyle(
                  fontSize: (25),
                  fontWeight: FontWeight.bold,
                  color: Colors.orange[800],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 45.0),



            SizedBox(height: 30.0),
            GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 2,
                    mainAxisExtent: 120,
                    childAspectRatio: 1),
                children: [
                  Card(
                      color: Colors.blueGrey.shade100,
                      margin: EdgeInsets.only(
                          left: 5.0, right: 0.0, top: 0.0, bottom: 10.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),





                      // elevation: 2.0,
                      child:  GestureDetector(
                        // onTap: () => Navigator.of(context)
                        //     .push(MaterialPageRoute(builder: (context) => DetailScreen ())),
                        child: Container(
                          height: 120,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Colors.white,
                                Colors.black54,
                              ],
                            ),
                            border: Border.all(
                              color: Colors.white10,
                              width: 5,
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'MASTER',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ]),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 310,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: ExactAssetImage(
                                                "assets/images/Mastercard.png"),
                                          ))),
                                ],
                              ),




                              // ElevatedButton(onPressed: null, child: Text('Add to cart'))
                            ],
                          ),
                        ),
                      )
                    //),
                  ),
                  Card(
                    color: Colors.blueGrey.shade100,
                    margin: EdgeInsets.only(
                        left: 5.0, right: 5.0, top: 0.0, bottom: 10.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),


                    child:  GestureDetector(
                      // onTap: () => Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => DetailScreen ())),
                        child: Container(
                          height: 120,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Colors.white,
                                Colors.black54,
                              ],
                            ),
                            border: Border.all(
                              color: Colors.white10,
                              width: 5,
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'PayPal',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ]),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 310,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: ExactAssetImage(
                                                "assets/images/paypal.png"),
                                          ))),
                                ],
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[

                                  ],
                                ),
                              ),
                            ],
                          ),
                        )

                    ),
                  ),
                  Card(
                    color: Colors.blueGrey.shade100,
                    margin: EdgeInsets.only(
                        left: 5.0, right: 5.0, top: 0.0, bottom: 10.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),

                    // child: GestureDetector(
                    // onTap: () => Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => BookingDate()
                    // )
                    // ),
                    // elevation: 2.0,
                    child:  GestureDetector(
                      // onTap: () => Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => DetailScreen ())),
                        child: Container(
                          height: 120,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Colors.white,
                                Colors.black54,
                              ],
                            ),
                            border: Border.all(
                              color: Colors.white10,
                              width: 5,
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'VISA',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ]
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 310,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: ExactAssetImage(
                                                "assets/images/viisa.png"),
                                          ))),
                                ],
                              ),

                            ],
                          ),
                        )
                    ),
                  ),
                  Card(
                    color: Colors.blueGrey.shade100,
                    margin: EdgeInsets.only(
                        left: 5.0, right: 5.0, top: 0.0, bottom: 10.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),

                    child: GestureDetector(
                      // onTap: () => Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => DetailScreen()
                      // )
                      // ),

                      // elevation: 2.0,
                        child: Container(
                          height: 120,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Colors.white,
                                Colors.black54,
                              ],
                            ),
                            border: Border.all(
                              color: Colors.white10,
                              width: 5,
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      'ApplePay',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ]),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 310,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: ExactAssetImage(
                                                "assets/images/apple.png"),
                                          ))),
                                ],
                              ),

                            ],
                          ),
                        )
                    ),
                  ),

                ],
                padding: EdgeInsets.all(10),
                shrinkWrap: true),



            SizedBox(height: 40.0),
            ElevatedButton(
              child: Text("Proceed To Pay",
                style: TextStyle(

                    color: Colors.black
                ),
              ),
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => Addnew()));
              }
              ,
              style: ElevatedButton.styleFrom(
                primary: Colors.orange[800],
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
            ),





          ]),
        )
    );
  }
}
