import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Expanded(
        child: Container(
          height: 100,
          child: Center(
            // child: Image.network('src'),
          ),
        ),
      ),


      Expanded(
        child: Container(
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
        )
        ),

        Expanded(
          child: Row(
            children: [
              Container(
                height: 40,
                child: Row(
                  children: [
                    Icon(Icons.add, size: 17, color: Colors.amber,),
                    Text('add', style: TextStyle(color: Colors.amber, fontSize: 20),)
                    
                  ],
                ),
              )
            ],
          )),


      ],
    );
  }
}