import 'package:flutter/material.dart';
import 'package:todo_pioneer_task1/Utils/colors.dart';
import 'package:todo_pioneer_task1/Utils/themeStyling.dart';
import 'package:todo_pioneer_task1/models/todo_model.dart';

class TodoItems extends StatelessWidget {
  final TodoModel todo;
  const TodoItems({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container( 
      margin: EdgeInsets.only(bottom: 5),     
      child: ListTile(        
        onTap: (){
          print("Test");
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        tileColor: Colors.white,
        leading: Icon(todo.isdone! ? Icons.check_box : Icons.check_box_outline_blank_outlined, color: blueColor,),
        title: Text('${todo.todoTitle}', style: todo.isdone! ? ThemeStyling.todoTitleStyle : ThemeStyling.todoStyle,),
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