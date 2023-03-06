


import 'package:flutter/material.dart';
import 'package:secion10/Networkes/Logical/webview.dart';
import 'package:secion10/New_App/Cubit/Cubit.dart';




Widget defauitButton({
  double Width=double.infinity,
  Color  color=Colors.blue,
  bool isUpperCase=true,
  double radius=20.0,
  required String text,
  required Function f,

})=> Container(
      width: Width,

     decoration: BoxDecoration(
       color: color,
       borderRadius: BorderRadius.circular(
         10.0,

       ),
     ),
     child: MaterialButton(

      onPressed:(){
        f();
      },

     child: Text(isUpperCase?text.toUpperCase():text,style: TextStyle(fontSize: 30.0,color: Colors.white),),
  ),
);



Widget defaultTextfromfilt({
  required TextEditingController Controller,
  required IconData prefix,
  required String label,
  required TextInputType type,
    Function? cha,
   Function? onFieldSubmitted,
  required Function v ,
  bool ispaswwor =false,
   IconData?  suffix,
   Function? sufiee,
  Function? onTap,
  bool isen=true,
} )=> TextFormField(
  enabled:isen,
  onTap:(){onTap!();} ,
  controller: Controller,
  keyboardType: type,
  obscureText: ispaswwor?true:false,
  decoration: InputDecoration(
    labelText: label,
   // hintText: label,
    border: OutlineInputBorder(),
    prefixIcon: Icon(prefix),
    suffixIcon:suffix!= null?IconButton(icon:Icon(suffix),onPressed:(){ sufiee!();},):null,
  ),
  onFieldSubmitted:(S){
    onFieldSubmitted!(S);
    },

  onChanged: (s){
    cha!(s);
  },
  validator:(String? s){
    return (v(s));
  },

);

Widget Buileditemtaks(Map Modle,context)=>Dismissible(
  child:   Padding(
  
    padding: const EdgeInsets.all(20.0),
  
    child: Row(
  
      children: [
  
        CircleAvatar(
  
          radius: 45.0,
  
          child: Text(
  
            "${Modle["time"]}",
  
          ),
  
        ),
  
        SizedBox(width: 10.0,),
  
        Expanded(
  
          child: Column(
  
            mainAxisSize: MainAxisSize.min,
  
            crossAxisAlignment: CrossAxisAlignment.start,
  
            children: [
  
              Text(
  
                "${Modle["title"]}",
  
                style:TextStyle(
  
                    fontWeight: FontWeight.bold,
  
                    fontSize: 25.0,
  
                    color: Colors.black
  
                ) ,
  
              ),
  
              SizedBox(height: 10.0,),
  
              Text("${Modle["data"]}",
  
                style: TextStyle(color: Colors.grey[400],
  
                ),
  
  
  
              ),
  
            ],
  
          ),
  
        ),
  
        SizedBox(width: 10.0,),
  
        IconButton(
  
            onPressed: (){
  
             // AppCubit.get(context).UPdataDate(status: "done", id: Modle['id']);
  
            },
  
            icon:Icon(
  
              Icons.check_box,
  
              color: Colors.green,
  
            )),
  
        SizedBox(width: 10.0,),
  
        IconButton(
  
            onPressed: (){
  
              //AppCubit.get(context).UPdataDate(status: "archived", id: Modle['id']);
  
            },
  
            icon:Icon(
  
              Icons.archive,
  
              color: Colors.red,
  
            )),
  
  
  
  
  
      ],
  
    ),
  
  ),
  key: Key(Modle['id'].toString()),
  onDismissed: (dir){
    //AppCubit.get(context).deletDate(id:Modle['id'] );

  },
);

Widget NotItembuilder({
  required List<Map> tasks,
}){

  return tasks.length>0? ListView.separated(
    itemBuilder: (context, index) => Buileditemtaks(tasks[index],context),
    separatorBuilder: (context, index) => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
    ),
    itemCount: tasks.length,
  ):
  Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [
        Icon(Icons.menu,
          color: Colors.grey[300],
          size: 90.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          "No tasks elemt tasks",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
          ),
        ),
      ],
    ),
  );

}


Widget itemsgetdat(Model,context,index)=>Container(

 // color: NewAppCubit.get(context).buieesSelect[index] ? Colors.grey[300] : null,
  color:  NewAppCubit.get(context).isselect ==index && NewAppCubit.get(context).ismode ?Colors.grey[300] :null,

  child:   InkWell(

    onTap: (){

      NewAppCubit.get(context).select(index);
      //NewAppCubit.get(context).s1(index);

      //Navigetorto(context,webview(Model['url']));



    },

    child:   Padding(



      padding: const EdgeInsets.all(20.0),



      child: Row(



        children: [



          Container(



            height: 120.0,



            width: 120.0,



            decoration: BoxDecoration(



              borderRadius: BorderRadius.circular(15.0),



              image: DecorationImage(



                image: NetworkImage('${Model['urlToImage'] ?? 'https://vid.alarabiya.net/images/2018/05/09/affbacd6-5849-4b5a-a364-b64291c26450/affbacd6-5849-4b5a-a364-b64291c26450.JPG'}'),



                fit: BoxFit.cover,



              ),



            ),



          ),



          SizedBox(width: 15.0,),



          Expanded(



            child: Container(



              height: 120.0,



              child: Column(



                mainAxisAlignment: MainAxisAlignment.start,



                mainAxisSize: MainAxisSize.min,



                crossAxisAlignment: CrossAxisAlignment.start,



                children: [



                  Expanded(



                    child: Text(



                      "${Model['title']} ",



                      style: Theme.of(context).textTheme.bodyText1,



                      overflow: TextOverflow.ellipsis,



                      maxLines: 3,







                    ),



                  ),



                  Text(



                    "${Model['publishedAt']} ",



                    style: TextStyle(



                      //  fontSize: 30.0,



                      //    fontWeight: FontWeight.bold,



                        color: Colors.grey



                    ),







                  ),







                ],



              ),



            ),



          ),



        ],



      ),



    ),

  ),
);

Widget contauneline()=>Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 20.0,
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);


 Widget bluiteriemtdadt(list,{ isshow=true})=>list.length>0? ListView.separated(
  physics: BouncingScrollPhysics(),
  itemBuilder: (context, index) => itemsgetdat(list[index],context,index),
  separatorBuilder: (context, index) => contauneline(),
  itemCount: list.length,

):
isshow?Center(child: CircularProgressIndicator()):Container();



void Navigetorto(context,Widget){

  Navigator.push(context,  MaterialPageRoute(builder: (context)=> Widget ));

}