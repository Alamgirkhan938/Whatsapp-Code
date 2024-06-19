import 'package:flutter/material.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text('WhatsApp',style: TextStyle(fontWeight: FontWeight.bold),),
          actions: [
            PopupMenuButton(
              iconColor: Colors.white,
                icon: Icon(Icons.ac_unit),
                color: Colors.blue,
                itemBuilder: (context)=>[
              PopupMenuItem(child: Text('data')),
              PopupMenuItem(child: ListTile(
                onTap: (){
                  print('edit button pressing');
                },
                leading: Text('Edit'),
                trailing: Icon(Icons.edit),
              ))
            ]),
            
            
          //  Icon(Icons.search),
            // PopupMenuButton(
            //     icon: Icon(Icons.more_vert),
            //     itemBuilder: (context) => [
            //           PopupMenuItem(child: Text('New Group')),
            //           PopupMenuItem(child: Text('Setting')),
            //           PopupMenuItem(child: Text('Log out'))
            //         ]),
            SizedBox(
              width: 15,
            ),
          ],
          bottom: TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt_outlined),
            ),
            Tab(
              child: Text('Chats'),
            ),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Calls'),
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Text(
              'Camrea',
            ),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/alam.png')),
                    title: Text('alamgir'),
                    subtitle: Text('how are you'),
                    trailing: Text('6:35 PM'),
                  );
                }),
            ListView.builder(itemCount: 15,
                itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,
                        color: Colors.greenAccent,
                        border: Border.all(color: Colors.greenAccent,width: 3),),
                    child: CircleAvatar(backgroundImage: AssetImage('assets/alam.png'),
                      radius: 25,
                    )),
                title: Text('Masood UR Rehman'),
                subtitle: Text('22 min ago'),
              );
            }),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/alam.png'),
                    ),
                    title: Text('Amjad khan (4)'),
                    subtitle: Text(index == 0
                        ? 'You missed audio call'
                        : 'Call time is 2:30 PM'),
                    trailing: Icon(
                        index == 0 ? Icons.call : Icons.video_call_outlined),
                  );
                })
          ],
        ),
      ),
    );
  }
}
