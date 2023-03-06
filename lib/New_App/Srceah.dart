


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secion10/New_App/Cubit/Cubit.dart';
import 'package:secion10/New_App/Cubit/State.dart';
import 'package:secion10/componie/shealt_compnent/Components.dart';




class searcha extends StatelessWidget{
var controllScreah=TextEditingController();


  Widget build(BuildContext context){
    return BlocConsumer<NewAppCubit,NewAppState>(
      listener:(context,state){} ,
      builder: (context,state){
        var list =NewAppCubit.get(context).Screah;
        return   SafeArea(
        child: Scaffold(
          appBar: AppBar(),
        body: Column(
        children: [
        Padding(
        padding: const EdgeInsets.all(20.0),
        child: defaultTextfromfilt(
        Controller: controllScreah,
        prefix: Icons.search,
        label: "Search",
        type: TextInputType.text,
        cha: (value){
       //   NewAppCubit.get(context).search(value);
        },
        v: (String? value){
        if(value!.isEmpty)
        return ('must search');

        },
            onFieldSubmitted: (value){},
          onTap: (){

          }

        ),
        ),
        SizedBox(height: 10.0,),
        Expanded(child: bluiteriemtdadt(list,isshow: false)),
        ],
        ),
        ),
        );
      },
    );
  }


}