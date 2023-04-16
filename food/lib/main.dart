import 'package:flutter/material.dart';
import './listfile.dart';


 Widget card (BuildContext context,  int index) {
  return ListTile(
    leading: Image.asset(img[index], height: 80, width: 80, fit: BoxFit.fill),
    trailing: const Icon(Icons.navigate_next, size: 30),
    title: Text(food[index],style: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold)),
    subtitle: Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(Icons.schedule, size: 15),
          Text(minut[index]),
          const Text('min'),
          const Text('o', style: TextStyle(fontSize: 18)),
          const Icon(Icons.water_drop, size: 15),
          Text(number[index]),
          Text(kkal[index]),
          Text('Kcal'),
        ],
      ),
    ),
  );
 }

 Widget seperator (BuildContext context, int index) {
  return Container(
    margin: const EdgeInsets.only(top: 30, bottom: 30),
    child: Column(
      children: [

      ],
    ),
  );
 }

void main () {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold( 
      backgroundColor: Colors.white, 
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        elevation: 0,
        flexibleSpace: 
        Container(
        margin: const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 10.0),
        height: 56,
        decoration: const BoxDecoration(
          color: Colors.white,
           borderRadius: BorderRadius.all(Radius.circular(20)),
           boxShadow: [
            BoxShadow(
              offset: Offset(0, 10.0),
              blurRadius: 10,
              color: Colors.black45,
            ),
           ],
           ),
           child: Padding(
             padding: const EdgeInsets.only(left: 10, right: 10.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: const [
                     Icon(Icons.search, size: 30),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text('Search', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.tune),
              ],
             ),
           ),
          ),
      ),
      body:
          ListView.separated(
            padding: const EdgeInsets.only(top: 20),
             itemBuilder: card,
             separatorBuilder: seperator, 
             itemCount: 9),
      
    ),
  ));
}