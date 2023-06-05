import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


import 'DetailsP.dart';
import 'Product2.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  var All={
           0: Product2("Dattes Sokari", 50, 10,"0.jpg"),
           1: Product2("Sumsung TV 52 OLED", 10699.99, 23,"1.jpg"),
           2: Product2("IPOD", 200, 15,"2.jpg"),
            3: Product2("Sumsung Camera", 2000, 9,"3.jpg"),
            4: Product2("Canon Imprimante", 1099.99, 4,"4.jpg"),

                  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
          margin: EdgeInsets.only(top: 15,bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60)
          ),
          child: GridView.builder(
            itemCount:All.length ,
            scrollDirection: Axis.horizontal,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing:20 ) , 
           
            itemBuilder: (context, int i){
              return Container(
                color: Colors.grey[350],
                height: 60,
                //margin: EdgeInsets.all(2),
                
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10)
                //  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/${All[i]!.getImage()}"),
                      radius: 100,
                      )),
                      SizedBox(height: 20,),
                    Container(child: Text("${All[i]!.getNom()}",style: TextStyle(fontSize: 25),)),
                 Container(child: MaterialButton(
                  onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return DetailsP(i);
                   },
                   
                   )
                   );
                 },
                 child: Text("Voir plus",style: TextStyle(fontSize: 20,color: Colors.redAccent),),
                 )
                 ,),
                  ],
                )
              );
            }),
        ) 
        ,)
        );
  }
}