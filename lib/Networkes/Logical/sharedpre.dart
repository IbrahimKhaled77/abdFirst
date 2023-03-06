



import 'package:shared_preferences/shared_preferences.dart';

class pre {

 static SharedPreferences?  SharedPreferencesa;

 static init() async {

SharedPreferencesa=  await SharedPreferences.getInstance();


}

 static Future<bool> PutDate(
 {
   required String key,
   required bool value,
})
async
{

   return await SharedPreferencesa!.setBool(key, value);

}

 static bool? GetData(
     {
       required String key,
     })

 {

   return  SharedPreferencesa!.getBool(key);

 }






}