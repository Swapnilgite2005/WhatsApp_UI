import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
            collapsedHeight: 120,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            backgroundColor: Colors.blue,
            title: Text('WhatsApp'),
            flexibleSpace: FlexibleSpaceBar(
                title: Row(children: [
              Icon(
                Icons.person,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 13,
              ),
              Text('Chat'),
              SizedBox(
                width: 13,
              ),
              Text('Group'),
              SizedBox(
                width: 13,
              ),
              Text('Status'),
              SizedBox(
                width: 13,
              ),
              Text('Calls'),
            ])),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Icon(
                  Icons.camera,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Icon(
                  Icons.wifi,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Icon(
                  Icons.more_vert,
                ),
              ),
            ]),


        SliverList(delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ListTile(
              title: Text('Ashish Shinde'),
              subtitle: Text('Tejas : Hii'),
              leading: Image.asset('asset/img/f1.png'),
              trailing: Text("10:10"),
              iconColor: Colors.white,
            );
          },
        ))
      ]),
    );
  }
}
