import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secion10/Networkes/remode/dio_helper.dart';
import 'package:secion10/New_App/Cubit/Cubit.dart';
import 'package:secion10/New_App/Cubit/State.dart';
import 'package:secion10/New_App/Srceah.dart';
import 'package:secion10/componie/shealt_compnent/Components.dart';



class NewApps extends StatelessWidget{



  @override
  Widget build(BuildContext context) {

    return BlocConsumer<NewAppCubit,NewAppState>(
      listener: (BuildContext context, Object? state) {  },
      builder: (BuildContext context, state) {
        var Cubit =NewAppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "New APP",
            ),
            actions: [
              IconButton(
                  onPressed:(){
                    Navigetorto(context, searcha());
                  } ,
                  icon: Icon(Icons.search),

              ),
              IconButton(
                onPressed:(){
               //   AppCubit.get(context).changeMode();

                } ,
                icon: Icon(Icons.dark_mode),

              ),
            ],

          ),
          body:Cubit.Screen[Cubit.currenIndex],
         floatingActionButton: FloatingActionButton(
            onPressed: (){
             DioHelper.getData(
                  url: 'v2/top-headlines',
                  Qirey:{
                    'country':'eg',
                    'category':'business',
                    'apikey':'e16bf2009cf34182880435a3aff6beee',
                  },
              ).then((value) {
                print(value.data['articles'][0]['title']);
              }).catchError((onError){
                print("Error when $onError");
              });
              },
            child: Icon(Icons.add),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: Cubit.Item ,
            currentIndex: Cubit.currenIndex,
            onTap: (Index){
              Cubit.ChangNavigationBarItems(Index);
            },
          ),


        );

      },
       // state is! NewAppStateLoting ? :Center(child: CircularProgressIndicator())
    );

  }



}

