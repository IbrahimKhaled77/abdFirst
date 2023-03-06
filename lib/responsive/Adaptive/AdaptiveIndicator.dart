
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveIndicatoe extends StatelessWidget {

  String os;
  AdaptiveIndicatoe({
    required this.os,
});



  @override
  Widget build(BuildContext context) {
    if(this.os == 'android'){
      return CircularProgressIndicator();
    }
    else{
      return CupertinoActivityIndicator();
    }


    return const Placeholder();
  }
}
