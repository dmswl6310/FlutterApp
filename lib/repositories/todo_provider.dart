import '../models/todo.dart';

class TodoDefault{
  List<Todo> dummyTodos = [
    Todo(id:1,title:'플러터 공부 시작하기',description:'투두 리스트를 만듭시다.'),
    Todo(id:2,title:'운동하기',description:'요가를 하러 갈 거예요.'),
    Todo(id:3, title:'퇴근하기',description:'오늘은 불금..!'),
  ];

  List<Todo> getTodos(){
    return dummyTodos;
  }

  Todo getTodo(int id){
    return dummyTodos[id];
  }

  Todo addTodo(Todo todo){
    Todo newTodo = Todo(
      id:dummyTodos.length+1,
      title:todo.title,
      description:todo.description);
      dummyTodos.add(newTodo);
      return newTodo;
  }

  void deleteTodo(int id){
    for(int i=0;i<dummyTodos.length;i++){
      if(dummyTodos[i].id==id){
        dummyTodos.removeAt(i);
      }
    }
  }

  void updateTodo(Todo todo){
    for(int i=0;i<dummyTodos.length;i++){
      if(dummyTodos[i].id==todo.id){
        dummyTodos[i]=todo;
      }
    }
  }
}