class TodoModel{
  String ? id;
  String ? todoTitle;
  bool ? isdone;

  TodoModel({required this.id, this.isdone = false, required todoTitle});

  static List<TodoModel> todoList(){
    return [
      TodoModel(id: '01', todoTitle: 'Morning run', isdone: true),
      TodoModel(id: '02', todoTitle: 'Plan for my weekend', ),
      TodoModel(id: '03', todoTitle: 'Go for shopping', ),
      TodoModel(id: '04', todoTitle: 'Go Swimming', isdone: true),
      TodoModel(id: '05', todoTitle: 'Take my family Out',),
      TodoModel(id: '06', todoTitle: 'Enroll for an evening classes',),
      TodoModel(id: '07', todoTitle: 'Go to gym', isdone: true),
    ];
  }
} 