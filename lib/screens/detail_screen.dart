import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Details extends StatelessWidget {
  final String image;
  final String name;
  final String details;
   Details({Key? key, required this.image, required this.name,required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Container(
        
        child: Column(
          children: [
              Container(
                width: double.infinity,
                height: 200,
                child: Row(
                   
                  children: [
                    Container(
                     margin: EdgeInsets.all(12.0),  
                      padding: EdgeInsets.all(8.0),  
                    child: Image(image: AssetImage(image),fit: BoxFit.cover,),

                    ),
                    Container(
                     margin: EdgeInsets.all(8.0),  
                     padding: EdgeInsets.all(8.0), 
                     
                    child: Text(name,style: TextStyle(color:Colors.white,fontSize:20),),

                    ),
                 
                  
                 
                ],)
              ) ,
              Align(alignment: Alignment.centerLeft,
              child: Container(
               margin: EdgeInsets.all(12.0),  
                     padding: EdgeInsets.all(8.0), 
                     width: double.infinity,
                     
              decoration:BoxDecoration(  
                  borderRadius:BorderRadius.circular(8),  
                  color:Colors.grey  
              ),  
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                FaIcon(
	  FontAwesomeIcons.facebook,
	  color: Colors.white,
	),
  FaIcon(
	  FontAwesomeIcons.instagram,
	  color: Colors.white,
	),
  FaIcon(
	  FontAwesomeIcons.twitter,
	  color: Colors.white,
	),
  FaIcon(
	  FontAwesomeIcons.shareAlt,
	  color: Colors.white,
	),
  ],
  
  )
              ),),
              
              Align(alignment: Alignment.centerLeft,
              child: Container(
               margin: EdgeInsets.all(12.0),  
                     padding: EdgeInsets.all(8.0), 
                     width: double.infinity,
                     
              
              child: Text(details,style: TextStyle(color:Colors.white,fontSize:15),),  
              ),
              ),


          ],
        ),
      )
    );
  }
}