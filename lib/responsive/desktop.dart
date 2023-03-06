import 'package:flutter/material.dart';

class desktopLogin extends StatelessWidget {
  const desktopLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.teal,
              height: double.infinity,
            ),
          ),
          SizedBox(width: 20.0,),
          Expanded(
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
                ],

          )),
          SizedBox(width: 20.0,),
        ],
      ),
    );
  }
}
