import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:favorite_button/favorite_button.dart';
import 'details place holder view model.dart';

class DetailsPlaceholderView extends DetailsViewModel {
  DetailsPlaceholderView({
    required super.id,
    required super.image,
    required super.name,
    required super.brand,
    required super.price,
    required super.description});



  @override
  Widget build(BuildContext context){
     return Scaffold(
         appBar: AppBar(
           elevation: 0,
           leading: IconButton(
             onPressed: (){Navigator.pop(context);},
             icon:  Icon(Icons.arrow_back),
           ),
           actions: [
             IconButton(
               onPressed: (){},
               icon:Icon(Icons.search),),
             SizedBox(width: 10,),
             IconButton(
                 onPressed: (){},
                 icon: Icon(Icons.shopping_cart)),
             SizedBox(width: 10,)
           ],

         ),
         body: Container(
           height: MediaQuery
               .of(context)
               .size
               .height,
           width: MediaQuery
               .of(context)
               .size
               .height,
           child: Stack(
             children: [
               Positioned(
                 bottom: MediaQuery.of(context).size.height/2-100,
                 child: Container(
                   height: MediaQuery.of(context).size.height/2+360,
                   width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.all(
                           Radius.circular(20))


                   ),
                 ),
               ),
               Positioned(
                 top: MediaQuery.of(context).size.height/2-100,
                 child: Container(
                   height: MediaQuery.of(context).size.height/2+360,
                   width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.all(
                           Radius.circular(20))


                   ),
                 ),
               ),
               Positioned(
                 left: 40,
                 top: 60,
                 child: SizedBox(
                     height: 20,
                     width: 170,
                     child: Text("${widget.name}", style: TextStyle(
                         fontWeight: FontWeight.bold,
                         color: Colors.white,

                         fontSize: 16
                     ),)),
               ),
               Positioned(
                 left: 40,
                 top: 80,
                 child: SizedBox(
                     height: 30,
                     width: 150,
                     child: Text("${widget.brand}", style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 22,
                         color: Colors.white
                     ),)),
               ),

               Positioned(
                 top: MediaQuery
                     .of(context)
                     .size
                     .height / 2 - 160,
                 left: MediaQuery
                     .of(context)
                     .size
                     .width / 2 - 160,
                 child: Container(
                   height: 60,
                   width: 120,
                   color: Colors.transparent,
                   child: Center(
                       child: Text("Price \nRs :${widget.price}", style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 22,color: Colors.white
                       ),)),
                 ),
               ),
               Positioned(
                 bottom: MediaQuery
                     .of(context)
                     .size
                     .height / 2 - 45,
                 left: MediaQuery
                     .of(context)
                     .size
                     .width / 2-30,
                 child:
                 Container(
                   height: 250,
                   width: 220,
                   color: Colors.transparent,
                   child: Hero(
                     tag: '${widget.id}',
                     child: Image.network("${widget.image}",
                       fit: BoxFit.fill,
                     ),
                   ),
                 ),

               ),
               Positioned(
                 left: 5,
                 right: 5,
                 top: MediaQuery.of(context).size.height/2+30,
                 child: Container(
                   height: 100,
                   width: MediaQuery.of(context).size.width-10,
                   color: Colors.transparent,
                   child: AutoSizeText("${widget.description}",
                     style:
                     TextStyle(
                         fontStyle: FontStyle.italic,
                         fontSize: 15
                     ),
                     maxLines: 6,

                   ),

                 ),
               ),

               Positioned(
                 top: MediaQuery
                     .of(context)
                     .size
                     .height / 2 + 200,
                 left: MediaQuery
                     .of(context)
                     .size
                     .width / 2 - 80,
                 child: Container(

                   height: 60,
                   width: 250,
                   child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(
                                   30))
                       ),
                       onPressed: () {},
                       child: Text("Buy now",
                         style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                             fontStyle: FontStyle.normal,
                             color: Colors.white
                         ),)),

                 ),
               ),
               Positioned(
                 top: MediaQuery.of(context).size.height/2-30,
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                   height: 60,
                   // color: Colors.black,
                   child: Column(
                     children: [
                       Row(
                         children: [SizedBox(width: 50,),
                           Text("Color"),
                           SizedBox(width: 150,),
                           Text("Size"),

                         ],

                       ),
                       SizedBox(
                         width: MediaQuery.of(context).size.width,
                         height: 10,
                       ),
                       Row(
                         children: [
                           SizedBox(width: 40,),
                           Container(
                             height: 15,
                             width: 15,

                             decoration: BoxDecoration(
                               color: Colors.black,
                               borderRadius: BorderRadius.circular(15),
                             ),
                           ),
                           SizedBox(width: 10),
                           Container(
                             height: 15,
                             width: 15,

                             decoration: BoxDecoration(
                               color: Colors.blue,
                               borderRadius: BorderRadius.circular(15),
                             ),
                           ),
                           SizedBox(width: 10),
                           Container(
                             height: 15,
                             width: 15,

                             decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(15),
                             ),
                           ),
                           SizedBox(width: 130,),
                           Text("12 cm",style: TextStyle(
                               fontSize: 15,
                               fontWeight: FontWeight.bold,
                               fontStyle: FontStyle.italic
                           ),),

                         ],

                       ),
                     ],
                   ),
                 ),
               ),


               Positioned(
                 top: MediaQuery
                     .of(context)
                     .size
                     .height / 2 + 200,
                 left: MediaQuery
                     .of(context)
                     .size
                     .width / 2 - 180,
                 child: Container(
                   decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.all(
                           Radius.circular(60))
                   ),
                   height: 60,
                   width: 60,
                   child: IconButton(
                       onPressed: (){},
                       icon: Icon(
                         Icons.shopping_cart,
                         color: Colors.white,
                       )),

                 ),
               ),
               Positioned(
                 bottom: MediaQuery
                     .of(context)
                     .size
                     .height/2-275,
                 right: MediaQuery
                     .of(context)
                     .size
                     .width/2-150,
                 child: Container(
                   decoration: BoxDecoration(

                       borderRadius: BorderRadius.all(
                           Radius.circular(60))
                   ),
                   height: 50,
                   width: 50,
                   child:  FavoriteButton(
                     iconColor: Colors.red,
                     valueChanged: (_isFavorite) {

                     },
                   ),

                 ),
               ),
               Positioned(
                 top: MediaQuery
                     .of(context)
                     .size
                     .height / 2 + 140,
                 left: MediaQuery
                     .of(context)
                     .size
                     .width / 2 - 190,
                 child: Card(
                   color: Colors.blue,
                   child: SizedBox(
                     height: 35,
                     width: 120,
                     child: quantity == -1
                         ? TextButton(
                       child: const Text(
                         'Add Item',
                         style: TextStyle(
                           color: Colors.white,
                         ),
                       ),
                       onPressed: () {
                         setState(() {
                           quantity++;
                         });
                       },
                     )
                         : Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       mainAxisSize: MainAxisSize.min,
                       children: [
                         IconButton(
                           icon: const Icon(Icons.remove),
                           onPressed: () {
                             Decreasing();
                           },
                         ),
                         Text(quantity.toString()),
                         IconButton(
                           icon: const Icon(Icons.add),
                           onPressed: () {
                             setState(() {
                               quantity++;
                             });
                           },
                         ),
                       ],
                     ),
                   ),
                 ),
               ),

             ],
           ),
         )

     );
   }
}