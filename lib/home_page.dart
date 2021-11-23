import 'package:contactapp/contat_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,

      title: const
        Text('My Contact',
       style: TextStyle( color: Colors.black,
        fontSize: 25.0,
        fontWeight: FontWeight.w600),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:15),
            child: CircleAvatar
            (backgroundImage:AssetImage('assets/pic.jpg'),
            radius: 25,
       
            ),
          )

        ],
        bottom:  PreferredSize(preferredSize:Size.fromHeight(90,),child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5,),
          child: TextField(decoration: InputDecoration(
            prefixIcon: Icon (Icons.search),
            hintText: 'search by name or number',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
            ),
          ), ),
        ),
        )
    ),
    
    body: SafeArea(
      child: ListView(
        shrinkWrap: true,
        children: [
        const  Padding(
            padding:  EdgeInsets.only(left:16),
            child: Text(
              'Recent',
             style: TextStyle(fontSize:  15,fontWeight: FontWeight.w600), ),
          // ignore: prefer_const_constructors
          ),ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context,int index){
            return  ListTile(
               onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return Contactview();
                    }));
                   },
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/pic.jpg'),
            ),
            title: Text('Bright software',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
            subtitle:Text('+233 242 362 128'),
            trailing: Icon(Icons.more_horiz, size: 30,),
            );
          },
          separatorBuilder: (context, index){
            return const Divider();
          },
          itemCount: 3,
          ),
         const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16, vertical:8 ),
            child: Text(
              'contacts',
               style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),
               ),
          ), const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16, vertical:8 ),
            child: Text(
              'A',
              textAlign: TextAlign.right,
               style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),
               ),
              
          ),
           ListView.separated(
             shrinkWrap: true,
             itemBuilder:(context,index){
                 return  ListTile(
                   onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return Contactview();
                    }));
                   },
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/pic.jpg'),
            ),
            title: Text('Bright software',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
            subtitle:Text('+233 242 362 128'),
            trailing: Icon(Icons.more_horiz, size: 30,),
            );
                 },
                separatorBuilder: (context,index){
                  return SizedBox(height: 8,);
                  },
                itemCount: 2),
                
         const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16, vertical:8 ),
            child: Text(
              'contacts',
               style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),
               ),
          ), const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16, vertical:8 ),
            child: Text(
              'B',
              textAlign: TextAlign.right,
               style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),
               ),
              
          ),
           ListView.separated(
             shrinkWrap: true,
             itemBuilder:(context,index){
                 return  ListTile(
                onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return Contactview();
                    }));
                   },   
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/pic.jpg'),
            ),
            title: Text('Bright software',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
            subtitle:Text('+233 242 362 128'),
            trailing: Icon(Icons.more_horiz, size: 30,),
            );
                 },
                separatorBuilder: (context,index){
                  return SizedBox(height: 8,);
                  },
                itemCount: 2)
        ],
      ),
    ), 
  floatingActionButton: FloatingActionButton(child: Icon(Icons.add,size: 30,),onPressed: (){},
  backgroundColor: Colors.black,
  ),
 );

  }
  }