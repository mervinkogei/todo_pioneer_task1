import 'package:flutter/material.dart';
import 'package:todo_pioneer_task1/Utils/colors.dart';
import 'package:todo_pioneer_task1/Utils/themeStyling.dart';

class TodoItems extends StatelessWidget {
  const TodoItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(      
      child: ListTile(
        onTap: (){
          print("Test");
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        tileColor: Colors.white,
        leading: Icon(Icons.check_box, color: blueColor,),
        title: Text('Check Mail', style: ThemeStyling.todoTitleStyle,),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: redColor,
            borderRadius: BorderRadius.circular(5)
          ),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.white, size: 16,)),
        ),
      )
    );
  }
}