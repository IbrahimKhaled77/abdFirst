
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../New_App/Cubit/Cubit.dart';
import '../New_App/Cubit/State.dart';
import '../componie/shealt_compnent/Components.dart';

class Sport extends StatelessWidget{



 @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewAppCubit,NewAppState>(
       listener: (BuildContext context , NewAppState state) {},
        builder:(BuildContext context , NewAppState state) {
         var list = NewAppCubit.get(context).Sports;

         return  bluiteriemtdadt(list);
        }

   );


  }



}