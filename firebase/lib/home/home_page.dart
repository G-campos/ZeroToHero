import 'package:firebase/home/repositories/home_repository_impl.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final repository = HomeRepositoryImpl();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("HomePage"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Future",
                ),
                Tab(
                  text: "Stream",
                )
              ],
            ),
          ),
          body: TabBarView(children: [
            FutureBuilder<List<Map>>(
                future: repository.getTarefas(),
                builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text("Erro aconteceu");
              } else if (snapshot.hasData) {
                final list = snapshot.data;
                return ListView.builder(
                  itemCount: list?.length,
                  itemBuilder: (context, index) =>
                        ListTile(title: Text(list![index]['name'])));
              } else {
                return const Center(
                    child: CircularProgressIndicator()
                );
              }
            }),

            StreamBuilder<List<Map>>(
                stream: repository.streamTarefas(),
                builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text("Erro aconteceu");
              } else if (snapshot.hasData) {
                final list = snapshot.data;
                return ListView.builder(
                    itemCount: list?.length,
                    itemBuilder: (context, index) =>
                        ListTile(title: Text(list![index]['name'])));
              } else {
                return const Center(
                    child: CircularProgressIndicator()
                );
              }
            })
          ]),
        ));
  }
}
