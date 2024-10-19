import 'dart:convert';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

 

class AlimentosCompo extends StatefulWidget {
  const AlimentosCompo({Key? key}) : super(key: key);

  @override
  State<AlimentosCompo> createState() => _AlimentosCompoState();
}

class _AlimentosCompoState extends State<AlimentosCompo> {
  List<dynamic> _foundUsers = [];
  late List data;
  // Fetch content from the json file
  Future<void> readJson() async {
    var response = await rootBundle.loadString('assets/alimentacion1.json');
    setState(() => data = jsonDecode(response));
    _foundUsers = data;
    _foundUsers.sort((a, b) => (a['Alimentos']).compareTo(b['Alimentos']));
  }

  @override
  initState() {
    super.initState();
    readJson();
  }

  void _runFilter(String enteredKeyword) {
    List<dynamic> results = [];

    if (enteredKeyword.isEmpty) {
      // si el campo de búsqueda está vacío o solo contiene espacios en blanco, mostraremos todos los usuarios
      results = data;
    } else {
      results = data
          .where((alimento) => alimento['Alimentos']
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
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.orange),
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
                          fontSize: 20,fontWeight: FontWeight.bold
                        ),
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
                                margin: const EdgeInsets.symmetric(vertical: 10),
                                child: ListTile(
                                    title: Text(
                                      
                                      _foundUsers[i]['Alimentos'],
                                      style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Column(
                                     
                                      children: [
                                        Row(children: [
                                          Text(
                                            'Calorias: ${_foundUsers[i]['Calorias']}',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Hidratos: ${_foundUsers[i]['CHO D g']}',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Grasas: ${_foundUsers[i]['Grasas g']}',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ]),
                                        Row(
                                          children: [
                                            Text(
                                              'Potasio: ${_foundUsers[i]['Potasio mg']}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              'Proteinas: ${_foundUsers[i]['Proteína g']}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              'Fibra: ${_foundUsers[i]['Fibra T g']}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Calcio: ${_foundUsers[i]['Calcio mg']}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              'Hierro: ${_foundUsers[i]['Hierro mg']}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              'hidratos T : ${_foundUsers[i]['CHO T g']}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Sodio: ${_foundUsers[i]['Sodio mg']}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              'Cobre: ${_foundUsers[i]['Cobre mg']}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              'Zinc: ${_foundUsers[i]['Zinc mg']}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Vita A:${_foundUsers[i]['Vitamina A ER']}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              'Vitam B6: ${_foundUsers[i]['Vitamina B6 mg']}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              'Caroteno: ${_foundUsers[i]['b Caroteno ET']}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],

                                    ),
                                    
                                    ),
                              );
                            },
                          )
                        : const Text(
                            'Alimento o Encontrado',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 24),
                          ),
                  )
                ])),
          ),
        ));
  }
}
