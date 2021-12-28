import 'package:contacts_app/models/contact.dart';
import 'package:contacts_app/pages/contactDetails.dart';
import 'package:contacts_app/pages/delete.dart';
import 'package:flutter/material.dart';

 class ContactHomeView extends StatefulWidget{
 ContactHomeView({Key? key});

  @override
  _ContactHomeViewState createState() => _ContactHomeViewState();
}

class _ContactHomeViewState extends State<ContactHomeView> {
 final contactApp = [
   Contact(
   number: "+2332455567557",
    id:"0",
    name:"Johnson Kejetia",
    email:"johnsonkejetia75@gmail.com"),
     Contact(
   number: "+233506667557",
    id:"1",
    name:"Emily Jons",
    email:"johnsonkejetia75@gmail.com"),
     Contact(
   number: "+233570467557",
    id:"2",
    name:"John Kavi",
    email:"johnkavi996@gmail.com"),
 ];

  get background => null;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: const Text(
                "My Contacs",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://media.istockphoto.com/photos/attractive-businesswoman-using-a-digital-tablet-while-standing-in-of-picture-id1164863397")),
              ),
            ],
            bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "search by name or contact",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              preferredSize: Size.fromHeight(kToolbarHeight),
            ),
          ),
          body:
          background( Container(color: Colors.red,
          child: Icon(Icons.delete),
          ),
            child: ListView.separated(
                itemBuilder: (context, index) => 
                Dismissible(
                  key: UniqueKey(),
                  //key: ValueKey(contactApp[index].id),
                background: Container(color: Colors.red,
                child: Icon(Icons.delete),),
                direction: DismissDirection.startToEnd,
                confirmDismiss: (direction)async{
                 var results = await showDialog(
                   context: context, builder:
                    (context)=> Delete());
                 return results;
                },onDismissed: (direction){
                  setState(() {
                    contactApp.remove(index);
                  });
                },
                  child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return ContactDetails();
                    }));
                  },
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                              "https://media.istockphoto.com/photos/smiling-indian-business-man-working-on-laptop-at-home-office-young-picture-id1307615661"),
                  ),
                  title: const Text(
                    "Mary Immaculate",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  subtitle: const Text("+233207885790", style: TextStyle(fontSize: 15)),
                  trailing:
                            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                              ),
                ),
                separatorBuilder: (context, index) => const Divider(
                      color: Colors.black,
                      height: 2,
                    ),
                itemCount: 50),
          )),
    );
  }
}



