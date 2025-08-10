import 'package:flutter/material.dart';
import 'package:usaer_pannel/widgets/list_tile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  Widget listTile({required IconData icon, required String title}){
    return Column(
      children: [
        Divider(
          height: 4,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        // iconTheme: ,
        title: Text('Profile Screen'),
      ), 
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 110,
                color: Colors.amber,
              ),
              Container(
                height: 420,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                ),
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 280,
                          height: 80,
                          // color: Colors.red,
// padding: EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 Text('Hello'),
                                //  SizedBox(height: 10,),
                                 Text('hello@gmail.com')
                                ],
                              ),
                              SizedBox(width: 20,),
                              CircleAvatar(
                                 radius: 15,
                                 child: CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Colors.amber,
                                  child: Icon(Icons.edit, size: 14,),
                                 ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    
                    listTile(icon: Icons.shopify_outlined, title: 'My Orders'),
                    listTile(icon: Icons.location_on_outlined, title: 'My Delivery Address'),
                    listTile(icon: Icons.person_2_outlined, title: 'Refer a friend'),
                    listTile(icon: Icons.settings, title: 'Privacy Policy'),
                    listTile(icon: Icons.exit_to_app, title: 'Log Out'),

                  ],
                ),
              ),
            ],
          ),
           Padding(
             padding: const EdgeInsets.only(top: 70, left: 40),
             child: CircleAvatar(
                    radius: 42,
                    backgroundColor: Colors.yellow,
                    child: CircleAvatar(
                      radius: 40,
                      // backgroundColor: Colors.yellow,
                      backgroundImage: AssetImage('images/testimonial.jpeg'),
                    ),
                  ),
           ),
                
        ],
      ),
    );
  }
}