import 'package:flutter/material.dart';
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: Text('ADITYA BHATTACHARYA'), 
          accountEmail: Text('23cd3002@rgipt.ac.in'),
          currentAccountPicture:CircleAvatar(
            child:ClipOval( 
             child: 
             Image.network('data:image/jpeg;base64,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'

             ,width: 90,
             height: 90,
             fit: BoxFit.cover,),
          ),
          ),
          
          decoration: BoxDecoration(
            color:Colors.blue,
            image: DecorationImage(image: NetworkImage('https://www.myglobalviewpoint.com/wp-content/uploads/2020/01/Thun-Beautiful-Places-in-Switzerland.jpg'
            ),
            fit: BoxFit.cover,
            ),
          ),
        ),  
       ListTile(
        leading:
         Icon(Icons.favorite),
         title:Text( 'Favorites'),
         onTap: () => null,
       ),
      SizedBox(height: 15,),
        ListTile(
        leading:
         Icon(Icons.people),
         title:Text( 'Friends'),
         onTap: () => null,
       ),
      SizedBox(height: 15,),
        ListTile(
        leading:
         Icon(Icons.share),
         title:Text( 'Share'),
         onTap: () => null,
       ),
      SizedBox(height: 15,),
        ListTile(
        leading:
         Icon(Icons.notifications),
         title:Text( 'Notifications'),
         onTap: () => null,
         trailing: ClipOval(
           child: Container(color:Colors.red,
           width: 20,
           height: 20,
           child: Center(
             child: Text('9',
             style: TextStyle(
              color: Colors.white,
              fontSize: 12,
           
             )
             ,),
           )
           ,),
         ),
       ),
       SizedBox(height: 15,),
        ListTile(
        leading:
         Icon(Icons.settings),
         title:Text( 'Settings'),
         onTap: () => null,
       ),
    SizedBox(height: 15,),
         ListTile(
        leading:
         Icon(Icons.description),
         title:Text( 'Privacy Policy'),
         onTap: () => null,
       ),
       SizedBox(height: 15,),
         ListTile(
        leading:
         Icon(Icons.shop),
         title:Text( 'Market'),
         onTap: () => null,
       ),
       SizedBox(height: 15,),
        ListTile(
        leading:
         Icon(Icons.calendar_month),
         title:Text( 'Calendar'),
         onTap: () => null,
       ),
       SizedBox(height: 15,),
       
       
         ListTile(
        leading:
         Icon(Icons.exit_to_app),
         title:Text( 'Log Out'),
         onTap: () => null,
       ),
       
        
       
       
       
       
        ],
      ),
    );
  }
}
