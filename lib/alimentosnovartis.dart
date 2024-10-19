import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ficha2.dart';

class AlimentosNovartis extends StatefulWidget {
  const AlimentosNovartis({
    super.key,
  });

  @override
  State<AlimentosNovartis> createState() => _AlimentosNovartisState();
}

class _AlimentosNovartisState extends State<AlimentosNovartis> {
  List<dynamic> _foundAliment = [];
  late List data;
  // Fetch content from the json file
  Future<void> readJson() async {
    var response = await rootBundle.loadString('assets/alimentacion4.json');
    setState(() => data = jsonDecode(response));
    _foundAliment = data;
    _foundAliment.sort((a, b) => (a['Tipo']).compareTo(b['Tipo']));
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
          .where((alimento) => alimento['ALIMENTOS']
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundAliment = results;
    });

    // usamos el método toLowerCase() para que no distinga entre mayúsculas y minúsculas
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
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
                        color: Color.fromARGB(255, 14, 24, 10)),
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
                    child: _foundAliment.isNotEmpty
                        ? ListView.builder(
                            itemCount: _foundAliment.length,
                            itemBuilder: (context, i) {
                              return Card(
                                color: const Color.fromARGB(255, 64, 255, 83),
                                elevation: 4,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: ListTile(
                                  title: Text(
                                    _foundAliment[i]['ALIMENTOS'],
                                    style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Tipo Alimento: ${_foundAliment[i]['Tipo']}',
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Calorias: ${_foundAliment[i]['Kcal']} (Max 2000 Kcal/d)',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Carbohidratos: ${_foundAliment[i]['H.C']}g (20- 57g)',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Lipidos: ${_foundAliment[i]['Lipido']} g (60-80 g)',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Proteinas: ${_foundAliment[i]['Proteinas']} g (20-30 g/c) ',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        'Grasas saturadas: ${_foundAliment[i]['Saturados']} (22g/d)',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 10),
                                    ],
                                  ),
                                  trailing: const Icon(
                                    Icons.bookmarks,
                                    color: Colors.blue,
                                    size: 40,
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Ficha2(
                                              data: _foundAliment, i: i)),
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
