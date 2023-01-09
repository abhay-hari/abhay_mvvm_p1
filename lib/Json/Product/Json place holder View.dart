import 'package:flutter/material.dart';
import '../Details/details place holder view model.dart';
import '../Details/detailsPalceholder.dart';
import 'Json Placeholder Viewmodel.dart';
import 'Json Placeholder Viewmodel.dart';

import '../Data.dart';

class JsonPlaceholderView extends JsonplaceholderViewModel {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: isLoading ? ,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
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
      body : ListView(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 15,top: 10,),
            child: Text("Women",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),),
          ),
          FutureBuilder<List<Data>>(
              future:getProduct() ,
              builder: (context , snapshot){
                if(snapshot.hasData){
                  return GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.2,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                    ),
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      Data d=snapshot.data![index];

                      return InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Detailsplaceholder(
                              id: '${d.id}',
                              image: '${d.image}',
                              name: '${d.name}',
                              brand: '${d.brand}',
                              price: '${d.price}',
                              description: '${d.description}',
                            ),
                            ),
                          );
                        },
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            // color:Colors.blue ,
                            color:Color(0xFFfafafa),
                          ),
                          child: Hero(
                            tag: '${d.id}',
                            child: Image.network("${d.image}",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }else  if(snapshot.hasError){
                  return Center (
                      child: Text("${snapshot.error}")
                  );
                }
                else return Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.cyanAccent,
                    ),

                  );
              }
          ),

        ],
      ),
    );
  }
}
