import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Home', style: TextStyle(fontSize: 17),),

        actions: [
          CircleAvatar(
            // radius: 25,
            backgroundColor: Colors.amber[300],
            child: Icon(Icons.search, size: 20, color: Colors.white,),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Colors.amber[300],
              child: Icon(Icons.shopping_cart, size: 20, color: Colors.white,),
              ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Container(
              height: 150,
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                //  color: Colors.green,
                 image: DecorationImage(image: AssetImage('images/testimonial.jpeg'),
                 fit: BoxFit.cover
                 )
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.only(right: 200, bottom: 10),
                        child: Container(
                          height: 50,
                          width: 60,
                         
                          decoration: BoxDecoration(
                             color: Colors.amber[600],
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))
                            
                          ),
                          child: Center(
                            child: Text('Vegi', style: TextStyle(color: Colors.white, fontSize: 18,
                            shadows: [
                              BoxShadow(
                                color: Colors.green,
                                blurRadius: 10,
                                offset: Offset(3, 3)
                              )
                            ]
                            ),),
                          ),
                        ),
                      ),
                      Padding(
                        
                        padding: const EdgeInsets.only(right: 130),
                        child: Text('30% Off', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
                      ),
                      Text('On all vegitables products', style: TextStyle(color: Colors.white, fontSize: 20),)
                    ],
                  ),
                ],
              ),
            ),
SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text('Herbs sesonings', style: TextStyle(fontSize: 18),),
                Text('view all', style: TextStyle(fontSize: 14, color: Colors.grey),)
              ],
            ),

            Row(
             
              children: [
                Container(
                
                  height: 250,
                  width: 230,
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: 5,),
                        Center(child: Expanded(child: Image.network('data:image/jpeg;base64,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'))),
                        
                        Text('Fresh Basil', style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('50\$/50gram', style: TextStyle(color: Colors.grey),),
                       Expanded(
                         child: Row(
                          children: [
                             Expanded(
                            
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              // color: Colors.black,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('50gram', style: TextStyle(color: Colors.grey),),
                                Icon(Icons.arrow_drop_down, color: Colors.grey,)
                              ],
                            ),
                          )),
                           Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black
                            ),
                          )),
                          ],
                         ),
                       )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}