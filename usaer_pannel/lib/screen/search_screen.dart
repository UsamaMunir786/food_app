import 'package:flutter/material.dart';
import 'package:usaer_pannel/widgets/search_item.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Search item'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            
            Text('items', style: TextStyle(fontSize: 20),),
          SizedBox(height: 12,),
          Container(
            
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                fillColor: Color(0xffc2c2c2),
                filled: true,
                contentPadding: EdgeInsets.only(left: 20),
                hintText: 'search the item..',
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.search,),
                ),
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                  
                )
              ),
              
            ),
           
          ),

          SizedBox(
            height: 10,
          ),
            SingleItem(),
            SingleItem(),
            SingleItem(),
          ],
        ),
      ),
    );
  }
}