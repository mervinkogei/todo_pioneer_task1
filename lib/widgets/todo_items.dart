import 'package:flutter/material.dart';
import 'package:todo_pioneer_task1/Utils/colors.dart';
import 'package:todo_pioneer_task1/Utils/themeStyling.dart';
import 'package:todo_pioneer_task1/models/todo_model.dart';

class TodoItems extends StatefulWidget {
  final TodoModel todo;
  final todoFunction;
  final todoDeleteFunction;
  const TodoItems({Key ? key, required this.todo, required this.todoDeleteFunction, required this.todoFunction}) : super(key: key);

  @override
  State<TodoItems> createState() => _TodoItemsState();
}

class _TodoItemsState extends State<TodoItems> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      margin: const EdgeInsets.only(bottom: 5),     
      child: ListTile(        
        onTap: (){
          // widget.todoFunction();
          print("object");
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        tileColor: Colors.white,
        leading: Icon(widget.todo.isdone! ? Icons.check_box : Icons.check_box_outline_blank_outlined, color: blueColor,),
        title: Text('${widget.todo.todoTitle}', style: widget.todo.isdone! ? ThemeStyling.todoTitleStyle : ThemeStyling.todoStyle,),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: redColor,
            borderRadius: BorderRadius.circular(5)
          ),
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.delete, color: Colors.white, size: 16,)),
        ),
      )
    );
  }
}