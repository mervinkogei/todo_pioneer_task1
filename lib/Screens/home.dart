import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_pioneer_task1/Utils/colors.dart';
import 'package:todo_pioneer_task1/Utils/themeStyling.dart';
import 'package:todo_pioneer_task1/models/todo_model.dart';
import 'package:todo_pioneer_task1/widgets/todo_items.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoList = TodoModel.todoList();  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Container(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40, bottom: 20),
                        child: Text('All To-Do', style: ThemeStyling.titleStyle,),
                      ),
                      for(TodoModel toDo in todoList)
                      TodoItems(todo: toDo,),
                    //   TodoItems(),
                    //   TodoItems(),
                    //   TodoItems(),
                    //   TodoItems(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    margin: EdgeInsets.only(left: 20, bottom: 20, right: 20),                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: greyColor, offset: const Offset(0.0, 0.0), blurRadius: 10, spreadRadius: 0)]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Add a todo Item',
                        border: InputBorder.none
                      ),
                    ),
                    
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

AppBar _appBar(){
  return AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu, color: blackColor,size: 30,),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('images/logo.png'),
              ),
            )
          ],
        ),
      );
}

Widget searchBox(){
  return Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),              
              ),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(Icons.search, size: 20,color: blackColor,),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: greyColor),
                  prefixIconConstraints: BoxConstraints(
                    maxHeight: 20, maxWidth: 25
                  ),
                  border: InputBorder.none
                ),
              ),
            );
}