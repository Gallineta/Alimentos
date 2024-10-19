import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ficha.dart';

class Alimentos2 extends StatefulWidget {
  const Alimentos2({super.key});

  @override
  State<Alimentos2> createState() => _Alimentos2State();
}

class _Alimentos2State extends State<Alimentos2> {
  List<dynamic> _foundUsers = [];
  late List data;
  Future<void> readJson() async {
    var response = await rootBundle.loadString('assets/alimentacion3.json');
    setState(() => data = jsonDecode(response));
    _foundUsers = data;
    _foundUsers.sort((a, b) => (a['Alimento']).compareTo(b['Alimento']));
  }

  @override
  initState() {
    super.initState();
    readJson();
  }

  void _runFilter(String enteredKeyword) {
    List<dynamic> results = [];

    if (enteredKeyword.isEmpty) {
      // si el campo de búsqueda está vacío o solo contiene espacios en blanco, mostraremos todos los datos
      results = data;
    } else {
      results = data
          .where((alimento) => alimento['Alimento']
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundUsers = results;
    });

    // usamos el método toLowerCase() para que no distinga entre mayúsculas y minúsculas
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Composicion Alimentos',
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  //showSearch(
                  //context: context, delegate: BuscarAlimentoDelegate(data));
                })
          ],
        ),
        body: GestureDetector(
          onTap: () {
            final FocusScopeNode focus = FocusScope.of(context);
            if (!focus.hasPrimaryFocus && focus.hasFocus) {
              FocusManager.instance.primaryFocus!.unfocus();
            }
          },
          child: Center(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  const Text(
                    'Propiedades alimentos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 250,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        onChanged: (value) => _runFilter(value),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 180, 213, 240),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                            labelStyle: const TextStyle(fontSize: 20),
                            labelText: 'Buscar',
                            suffixIcon: const Icon(Icons.search)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: _foundUsers.isNotEmpty
                        ? ListView.builder(
                            itemCount: _foundUsers.length,
                            itemBuilder: (context, i) {
                              return Card(
                                color: Colors.amberAccent,
                                elevation: 4,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: ListTile(
                                  title: Text(
                                    _foundUsers[i]['Alimento'],
                                    style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Calorias: ${_foundUsers[i]['Energía']} Kcal',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Carbohidratos: ${_foundUsers[i]['Carbohidratos']} g',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Grasa: ${_foundUsers[i]['Grasa total']} g',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                           const SizedBox(
                                        width: 10,
                                      ),
                                          Text(
                                            'Proteinas: ${_foundUsers[i]['Proteína']} g',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 10),
                                      Row(
                                        children: [
                                          Text(
                                            'Azucar: ${_foundUsers[i]['Azúcares total']}',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(width: 10),
                                          Text(
                                            'Fibra: ${_foundUsers[i]['Fibra dietética total']}',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  trailing: const Icon(Icons.bookmarks,
                                  color: Colors.blue,
                                  size: 40,
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Ficha(data: _foundUsers, i: i)),
                                    );
                                  },
                                ),
                              );
                            },
                          )
                        : const Text(
                            'Alimento no Encontrado',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 24),
                          ),
                  )
                ])),
          ),
        ));
  }
}
