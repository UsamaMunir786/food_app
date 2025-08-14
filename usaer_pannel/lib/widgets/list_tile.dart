import 'package:flutter/material.dart';
import 'package:usaer_pannel/screen/profile_screen.dart';
import 'package:usaer_pannel/widgets/review_cart.dart';

class DrawerTile extends StatelessWidget {

  // final IconData icon;
  // final String title;

   const DrawerTile({super.key}); 

  Widget listTile({required IconData icon, required String title, required  VoidCallback onTap,}){
    return ListTile(
        onTap: onTap,
        leading: Icon(icon, size: 22,),
        title: Text(title, style: TextStyle(fontSize: 18),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        
        child: Container(
          color: Colors.amber,

          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                    radius: 43,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text('welcome Guest', style: TextStyle(fontSize: 20),),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Text('Login', style: TextStyle(fontSize: 18),),
                        )
                    ],
                  ),

                  ],
                )
                ),
                listTile(icon: Icons.home_outlined, title: 'Home', onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                }, ),
                listTile(icon: Icons.shopify_outlined, title: 'Review Cart', onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ReviewCart()));
                },),
                listTile(icon: Icons.person_2_outlined, title: 'Profile', onTap: (){},),
                listTile(icon: Icons.notification_important_outlined, title: 'Notification', onTap: (){},),
                listTile(icon: Icons.star_outline, title: 'Rating & Preview', onTap: (){},),
                listTile(icon: Icons.favorite_outline, title: 'Wishlist', onTap: (){},),
                listTile(icon: Icons.copy_all_outlined, title: 'Raise a Component', onTap: (){},),
                listTile(icon: Icons.format_quote_outlined, title: 'FAQs', onTap: (){},),

               Padding(padding: EdgeInsets.only(left: 5, bottom: 10,),
                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text('Contact Support', style: TextStyle(fontSize: 22),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text('Call us: ', style: TextStyle(color: Colors.grey),),
                    Text('0309349302', style: TextStyle(fontSize: 15),),
                  ],
                ),
                Row(
                  children: [
                    Text('Email us: ', style: TextStyle(color: Colors.grey),),
                    Text('usama@gmail.com', style: TextStyle(fontSize: 15),),
                  ],
                ),
                  ],
                 )
               )

            ],
          ),
        ),
      );
  }
}