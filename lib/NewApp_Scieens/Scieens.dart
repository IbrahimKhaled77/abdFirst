
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secion10/New_App/Cubit/Cubit.dart';
import 'package:secion10/componie/shealt_compnent/Components.dart';


import '../New_App/Cubit/State.dart';


class Science extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewAppCubit,NewAppState>(
        listener: (BuildContext context , NewAppState state) {},
        builder:(BuildContext context , NewAppState state) {
          var list = NewAppCubit.get(context).Sciences;

          return  bluiteriemtdadt(list);
        }

    );


  }



}