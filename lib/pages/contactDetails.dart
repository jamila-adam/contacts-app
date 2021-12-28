import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:unicons/unicons.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  _ContactDetailsState createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF1F1F1),
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios_new),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Edit",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        AlertDialog(title: Text("delete"),content: Text("Are you sure you want to delete"),
                        actions: [
                          TextButton(onPressed: (){}, child: Text("Yes")),
                          TextButton(onPressed: (){}, child: Text("No")),
                        ],);
                      },
                      icon: Icon(Icons.delete, size: 20),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/white.jpg",
                  ),
                ),
              ),
            ),
            // SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 9,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                   bottomRight: Radius.circular(50)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                    const Text(   
                      "Mary Immaculate",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isliked = true;
                              });
                            },
                            icon: isliked
                                ? Icon(Icons.star_sharp, color: Colors.red)
                                : Icon(Icons.star_border_outlined)),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                       TextButton(onPressed:
                        (){}, child: Text("Voice call")),
                       TextButton(onPressed:
                        (){}, child: Text("+233547390999"),),
                        Spacer(),
                       IconButton(onPressed:
                        (){}, icon: Icon(UniconsLine.whatsapp)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mobile",
                                style: TextStyle(color: Colors.grey),
                            ),
                              Text("+233207885790",
                                  style: TextStyle(fontSize: 20),),
                          ],),Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.message_outlined),),
                          Column(
                            children: [
                              Text("video call", style: TextStyle(color: Colors.grey),),
                              Text("+233587709344",style: TextStyle(fontSize: 20),),
                              Spacer(),
                              IconButton(onPressed: (){}, icon: Icon(UniconsLine.whatsapp))
                            ],),
                          Row(
                            children: [Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("E-mail", style: TextStyle(color: Colors.grey),),
                              TextButton(onPressed: (){}, child: Text("aprosper2580@gmail.com")),
                            ]
                            ),
                            IconButton(onPressed: (){}, icon: Icon(UniconsLine.comment_message))
                            ]
                          )
                        ]
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }}