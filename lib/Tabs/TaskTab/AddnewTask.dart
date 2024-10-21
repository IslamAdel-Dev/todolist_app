import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todolist_app/Tabs/TaskTab/DefaulttextFormField.dart';

class addnewTask extends StatefulWidget {
  @override
  State<addnewTask> createState() => _addnewTaskState();
}

class _addnewTaskState extends State<addnewTask> {
  TextEditingController title = TextEditingController();

  TextEditingController discription = TextEditingController();

  DateTime SelectedDate = DateTime.now();

  DateFormat dateFormat = DateFormat("dd/MM/yyyy");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTextFormField(
            textEditingController: title, hinttext: 'Enter Task title'),
        DefaultTextFormField(
            textEditingController: discription,
            hinttext: 'Enter Task Discription'),
        InkWell(
          child: Text(dateFormat.format(SelectedDate)),
          onTap: () async {
            DateTime? dateTime = await showDatePicker(
                context: context,
                initialDate: SelectedDate,
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(Duration(days: 365)));
            if (dateTime != null && dateTime != SelectedDate) {
              SelectedDate = dateTime;
              setState(() {});
            }
          },),
      ],
    );
  }
}
