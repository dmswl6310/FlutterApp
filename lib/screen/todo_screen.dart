import 'package:flutter/material.dart';
import '../models/todo.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Todo> todos = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    print("initState");
    setState((){
      isLoading=false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('할 일 목록 앱'),
        actions: [
          InkWell(
            onTap: () {},
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
        onPressed: () {},
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
                  onTap: () {},
                  trailing: SizedBox(
                      width: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            child: InkWell(
                              child: const Icon(Icons.edit),
                              onTap: () {},
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            child: InkWell(
                              child: const Icon(Icons.delete),
                              onTap: () {},
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
