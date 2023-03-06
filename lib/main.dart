


import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:secion10/Bloc_observer.dart';
import 'package:secion10/Natvie/flutter_Nativecode.dart';
import 'package:secion10/Networkes/remode/dio_helper.dart';
import 'package:secion10/New_App/Cubit/Cubit.dart';
import 'package:secion10/New_App/NewApp.dart';
import 'package:secion10/responsive/mobile.dart';

import 'responsive/desktop.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   // if(Platform.isWindows)
  //  await DesktopWindow.setWindowSize( Size(350.0,650.0));
  //if(Platform.isWindows)
   // await DesktopWindow.setMinWindowSize(Size(100.0,100.0 ));

  //  await DesktopWindow.setWindowSize(Size(1000.0, 1000.0));
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Widget? widgetl;
  // final bool?isDark;
  // late final Widget firstWidget;
  // {this.isDark,required this.firstWidget}
  MyApp({this.widgetl});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(




        providers: [
          BlocProvider(create: (context)=>  NewAppCubit()..getgata()..getSport()..getScine(),)
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          // themeMode: AppCubit.get(context).IsDark? ThemeMode.dark: ThemeMode.light ,
          home: Directionality(
            textDirection: TextDirection.ltr,
            // ignore: deprecated_member_use
            child: Builder(
              builder: (context) {

                print(  Platform.operatingSystem);
                if(MediaQuery.of(context).size.width <=516) {
                  return MediaQuery(
                    data:MediaQuery.of(context).copyWith(
                      textScaleFactor: 0.7,
                    ),
                 child: MobileLogin(),

                );
                }
                else {
                  return MediaQuery(
                      data: MediaQueryData(textScaleFactor: 2.2),
                      child: desktopLogin(),
                  );

                }
              }
            ),
          ),
        )
    );
  }
}


