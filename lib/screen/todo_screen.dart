import 'dart:async';
import 'package:flutter/material.dart';
import '../models/todo.dart';
import '../repositories/todo_provider.dart';
import './new_screen.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Todo> todos = [];
  TodoDefault todoDefault = TodoDefault();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      todos = todoDefault.getTodos();
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('할 일 목록 앱'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NewScreen()));
            },
            child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.book),
                    Text('뉴스'),

                  ],
                )),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('+', style: TextStyle(fontSize: 25)),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                String title = '';
                String description = '';
                return AlertDialog(
                  title: Text('할 일 추가하기'),
                  content: Container(
                    height: 200,
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (value) {
                            title = value;
                          },
                          decoration: InputDecoration(labelText: '제목'),
                        ),
                        TextField(
                          onChanged: (value) {
                            description = value;
                          },
                          decoration: InputDecoration(labelText: '설명'),
                        )
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      child: Text('추가'),
                      onPressed: () {
                        setState(() {
                          print("[UI] ADD");
                          todoDefault.addTodo(
                            Todo(title: title, description: description),
                          );
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('취소'))
                  ],
                );
              });
        },
      ),
      body: isLoading
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : ListView.separated(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      title: Text('할 일'),
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text('제목 : ' + todos[index].title),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text('설명 : ' + todos[index].description),
                        ),
                      ],
                    );
                  }
              );
            },
            trailing: SizedBox(
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: InkWell(
                        child: const Icon(Icons.edit),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                String title = todos[index].title;
                                String description = todos[index].description;
                                return AlertDialog(
                                  title: Text('할 일 수정하기'),
                                  content: Container(
                                    height: 200,
                                    child: Column(
                                      children: [
                                        TextField(
                                          onChanged: (value) {
                                            title = value;
                                          },
                                          decoration: InputDecoration(
                                            hintText: todos[index].title,
                                          ),
                                        ),
                                        TextField(
                                          onChanged: (value) {
                                            description = value;
                                          },
                                          decoration: InputDecoration(
                                            hintText:
                                            todos[index].description,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () async {
                                          Todo newTodo = Todo(
                                              id: todos[index].id,
                                              title: title,
                                              description: description
                                          );
                                          setState(() {
                                            todoDefault.updateTodo(newTodo);
                                          });
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('수정')
                                    ),
                                    TextButton(
                                        child: Text('취소'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        }
                                    ),
                                  ],
                                );
                              }
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: InkWell(
                        child: const Icon(Icons.delete),
                        onTap: () {
                          showDialog(
                            context:context,
                            builder:(BuildContext context){
                              return AlertDialog(
                                title:Text('할 일 삭제하기'),
                                content: Container(
                                  child:Text('삭제하시겠습니가?'),
                                ),
                                actions: [
                                  TextButton(
                                    child: Text('삭제'),
                                    onPressed: () async{
                                      setState((){
                                        todoDefault.deleteTodo(
                                          todos[index].id??0
                                        );
                                      });
                                Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            }
                          );
                        },
                      ),
                    )
                  ],
                )),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
