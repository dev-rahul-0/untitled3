import 'package:flutter/material.dart';
import 'package:untitled3/categories.dart';
class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Add a new item'),
    ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: InputDecoration(
                label: Text('Name'),
                ),
                validator: (value){
                  return 'Demo...';
                },
              ),
              Row(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Quantity'),
                    ),
                    initialValue: '1',
                  ),
                  SizedBox(width: 8,),
                  DropdownButtonFormField(items: [
                    for (final category in categories.entries)
                      DropdownMenuItem(child: Row(
                        children: [

                        ],
                      ))
                  ], onChanged: onChanged)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
