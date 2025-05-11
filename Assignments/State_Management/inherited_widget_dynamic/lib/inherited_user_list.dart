import 'package:flutter/material.dart';
import 'package:inherited_widget_dynamic/userinfo.dart';

class InheritedUserList extends StatefulWidget {
  const InheritedUserList({super.key});

  @override
  State<InheritedUserList> createState() => _InheritedUserListState();
}

class _InheritedUserListState extends State<InheritedUserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inherited Users List'
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: (){

            },
            child: const Icon(Icons.logout)
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    "Email : ${Userinfo.of(context).email}"
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    "Email : ${Userinfo.of(context).password}"
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}