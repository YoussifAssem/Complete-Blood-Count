import 'package:completebloodcount/Screens/menu_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatefulWidget {
  static const String screenRoute = 'chat_screen';

  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  late User signedInUser; //the email
  String? messageText; //the message

  @override
  void initState() {
    super.initState();
    getCurrentUser();
    //messagesstreams();
    //getmessages();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signedInUser = user;
        //print(signedInUser.email); to test  that the method is working correctly
      }
    } catch (e) {
      print(e);
    }
  }

  // void getmessages () async
  // {
  //   final messages =  await _firestore.collection('message').get();
  //   for(var message in messages.docs)
  //   {
  //     print (message.data());
  //   }
  // }


  void messagesstreams () async {
    await for(var snapshot in _firestore.collection('message').snapshots())
    {
      for(var message in snapshot.docs)
    {
      // ignore: avoid_print
      print (message.data());
    }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Menu(
      'Chat',
      SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StreamBuilder<QuerySnapshot>(
              stream : _firestore.collection('message').snapshots(),
              builder: (context, snapshot){
                List<Text> messagewidgets =[];

              if (!snapshot.hasData)
              {
                //add here a spinner
              }

              final messages = snapshot.data!.docs;
              for(var message in messages){
                final messageText = message.get('text');
                final messagesender = message.get('sender');
                final messagewidget  = Text('$messageText - $messagesender');
                messagewidgets.add(messagewidget);
              }

                return Column(
                  children : messagewidgets,
                );
              },
              ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        messageText = value;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        hintText: 'Write your message here...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _firestore.collection('message').add({
                        'text': messageText,
                        //'sender': 'the sender',
                        'sender':signedInUser.email,
                      });
                    },
                    child: Text(
                      'send',
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
