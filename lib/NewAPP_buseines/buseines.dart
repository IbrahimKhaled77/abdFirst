
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:secion10/New_App/Cubit/Cubit.dart';




import '../New_App/Cubit/State.dart';
import '../componie/shealt_compnent/Components.dart';

class Business extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewAppCubit,NewAppState>(
      listener: (BuildContext context , NewAppState state) {},
       builder:(BuildContext context , NewAppState state) {
         var list = NewAppCubit.get(context).buiees;


         return ScreenTypeLayout(
           mobile:Builder(
             builder: (context) {
              /* list.forEach((element) {
                 NewAppCubit.get(context).buieesSelect.add(false);
               });*/
               NewAppCubit.get(context).ismode=false;
               return bluiteriemtdadt(list);
             }
           ) ,
           desktop: Builder(
             builder: (context) {
               NewAppCubit.get(context).ismode=true;
               return Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Expanded(child: bluiteriemtdadt(list)),
                 //  if(list.length >0)
                     Expanded(
                       child: Text(
                         '${list[NewAppCubit.get(context).isselect!]['title']}',
                         style: TextStyle(
                           fontSize: 22.0,
                           color: Colors.black,
                         ),),
                     ),
                 ],
               );
             }
           ),


           breakpoints: ScreenBreakpoints(
             desktop:600.0 ,
             watch:300.0 ,
             tablet:300.0 ,
           ),
         );
         }

    );


  }



}