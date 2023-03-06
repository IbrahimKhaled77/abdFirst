import 'package:flutter/material.dart';
import 'package:secion10/responsive/Adaptive/AdaptiveIndicator.dart';
import 'package:secion10/responsive/contexts/conaisten.dart';

class MobileLogin extends StatelessWidget {
  const MobileLogin({Key? key}) : super(key: key);
//login
  //ggog
//f2
//f1
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.teal,
              width: double.infinity,
            ),
          ),
          SizedBox(height: 20.0,),
          Expanded(
            flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Login welcom'),
                    SizedBox(height: 20.0,),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text('Login'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text('Password'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.teal,
                            height:45.0 ,
                            child: MaterialButton(
                              onPressed:(){},
                              child:Text('LOGIN',
                                style: TextStyle(color: Colors.white),) ,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Container(
                            color: Colors.teal,
                            height:45.0 ,
                            child: MaterialButton(
                              onPressed:(){},
                              child:Text('Reister',
                                style: TextStyle(color: Colors.white),) ,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Center(child: AdaptiveIndicatoe( os:getos()),),
                  ],

                ),
              )),

          SizedBox(height: 20.0,),
        ],
      ),
    );
  }
}
