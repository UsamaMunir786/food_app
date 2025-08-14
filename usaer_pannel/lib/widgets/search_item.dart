import 'package:flutter/material.dart';

class SingleItem extends StatelessWidget {
  const SingleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Container(
        height: 100,
           
        child: Center(
          child: Image.asset('images/testimonial.jpeg', fit: BoxFit.cover,)
        ),
      ),


      Container(
        height: 100,
        child: Column(
          children: [
            Text('ProductName'),
            Text('50\$/50gram'),
      
            SizedBox(height: 20,),
      
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all()
              ),
              
              child: Center(
                child: Row(
                  children: [
                    Text('50grm'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

        Row(
          children: [
            Container(
              height: 40,
              width: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12)
                
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add, size: 17, color: Colors.amber,),
                  Text('add', style: TextStyle(color: Colors.amber, fontSize: 20),)
                  
                ],
              ),
            )
          ],
        ),


      ],
    );
  }
}