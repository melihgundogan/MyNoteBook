import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:my_note_book/views/add_notes/add_notes_controller.dart';

class AddNotesPage extends GetWidget<AddNotesController> {
  static const String routeName = '/views/add_notes/add_notes_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Add Notes Page'),
          ),
        ),
    );
  }
}