import 'package:flutter/material.dart';
import 'AllProduct.dart';
import 'Product2.dart';


class DetailsP extends StatelessWidget {
  int i=0;
DetailsP(int k){super.key; this.i=k; }

  @override
  Widget build(BuildContext context) {
     var All={
           0: Product2("Dattes Sokari", 50, 10,"0.jpg"),
           1: Product2("Sumsung TV 52 OLED", 10699.99, 23,"1.jpg"),
           2: Product2("IPOD", 200, 15,"2.jpg"),
            3: Product2("Sumsung Camera", 2000, 9,"3.jpg"),
            4: Product2("Canon Imprimante", 1099.99, 4,"4.jpg"),

                  };
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
          appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[300],
          leading: IconButton(
            color: Colors.black,
            iconSize: 30,
            onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return AllProduct();
             }));
            },
            icon:Icon(Icons.arrow_back),
        ),
      ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              CircleAvatar(
                        backgroundImage: AssetImage("assets/images/${All[i]!.getImage()}"),
                        radius: 200,
                        ),
              SizedBox(height: 20,),
              Text("${All[i]!.getNom()}",style: TextStyle(fontSize: 20),),
              SizedBox(height:20 ,),
              Text("${All[i]!.getPrix()} DH",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
               SizedBox(height:20 ,),
               Text("Quantité restante : ${All[i]!.getQuantite()} unités",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
            ],
          ),
        ) ,));
  }
}