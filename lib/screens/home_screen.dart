import 'package:demo_task/auth/sign_in.dart';
import 'package:demo_task/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Flower encyclopedia"),
        backgroundColor:const Color.fromARGB(255, 244, 54, 149),
      ),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
      crossAxisSpacing: 3,
      mainAxisSpacing: 3),
      itemCount: choices.length,
      itemBuilder: (context, index) {
        return  GestureDetector(
          onTap: (){
                 Navigator.push(  
                         context,  
                         MaterialPageRoute(builder: (context) =>Details(image: choices[index].imagePath, name: choices[index].title, details: choices[index].details,)),  
                        ); 
          },
          child: SelectCard(choice: choices[index],)
        );
        //return SelectCard(choice: choices[index],);
      },),

      );
    
  }
}

class Choice {  
  const Choice({required this.title,required this.imagePath,required this.details});  
  final String title; 
  final String imagePath; 
  final String details;  

}  

const List<Choice> choices = <Choice>[  
   Choice(title: 'Rose', imagePath: 'rose.jpg',details: 'A rose is either a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over three hundred species and tens of thousands of cultivars. They form a group of plants that can be erect shrubs, climbing, or trailing, with stems that are often armed with sharp prickles.'),  
   Choice(title: 'Hibiscus', imagePath: 'joba.jpg',details: 'The Hibiscus flowers are showy and conspicuous. It is usually borne singly but sometimes can be seen in clusters. The flowers are trumpet shaped and range in colours of red, orange, yellow, pink or purple. There are five or more petals in a Hibiscus flower.'),  
   Choice(title: 'Sunflower', imagePath: 'sunflower.jpg',details: 'The common sunflower (H. annuus) is an annual herb with a rough hairy stem 1-4.5 metres (3-15 feet) high and broad, coarsely toothed, rough leaves 7.5-30 cm (3-12 inches) long arranged in spirals. The attractive heads of flowers are 7.5-15 cm wide in wild specimens and often 30 cm or more in cultivated types.'),
   Choice(title: 'Cosmos', imagePath: 'cosmos.jpg',details: 'Cosmos, genus of garden plants of the family Asteraceae, containing about 40 species native to tropical America. They have leaves opposite each other on the stem and heads of flowers that are borne along on long flower stalks or together in an open cluster. The disk flowers are red or yellow.'),
  
];  

class SelectCard extends StatelessWidget {  
  const SelectCard({Key? key, required this.choice}) : super(key: key);  
  final Choice choice;  
  
  @override  
  Widget build(BuildContext context) {  
    //final TextStyle textStyle = Theme.of(context).textTheme.display1;  
    return Card(  
        color: Colors.orange,  
        child: Column(  
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: <Widget>[ 
              Expanded(child: Container(
                width: double.infinity,
                height: 200,
                child: Image(image: AssetImage(choice.imagePath),fit: BoxFit.cover,),
              ) ,
              ),
              
              Align(alignment: Alignment.centerLeft,
               child: Text(choice.title),
              ),
               
            ]  
        ),  
         
    );  
  }  
}  