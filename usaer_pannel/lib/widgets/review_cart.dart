import 'package:flutter/material.dart';
import 'package:usaer_pannel/widgets/search_item.dart';

class ReviewCart extends StatelessWidget {
  const ReviewCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text('Total:'),
        subtitle: Text('\$177.00', style: TextStyle(color: Colors.green),),
        trailing: SizedBox(
          height: 50,
          width: 150,
          child: ElevatedButton(
            
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              
              // shape: CircleBorder(),
            ),
            onPressed: (){}, 
            child: Text('submit', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ),
        ),
      ),
       appBar: AppBar(
        title: Text('Review Cart', style: TextStyle(fontSize: 20, ),),
       ),
       body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),

         SingleItem(),
         SizedBox(height: 10,),
         SingleItem(),

          SizedBox(height: 10,)
        ],
       ),
    );
  }
}