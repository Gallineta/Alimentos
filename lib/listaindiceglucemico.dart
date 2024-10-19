import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ListaIndiceGlicemico extends StatefulWidget {
  const ListaIndiceGlicemico({
    super.key,
  });

  @override
  State<ListaIndiceGlicemico> createState() => _ListaIndiceGlicemicoState();
}

class _ListaIndiceGlicemicoState extends State<ListaIndiceGlicemico> {
  List<dynamic> _foundIndiceGlucemico = [];
  late List data;
  // Fetch content from the json file
  Future<void> readJson() async {
    var response = await rootBundle.loadString('data/indiceglicemicos.json');
    setState(() => data = jsonDecode(response));
    _foundIndiceGlucemico = data;
    _foundIndiceGlucemico
        .sort((a, b) => (b['IG']).compareTo(a['IG']));
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
      _foundIndiceGlucemico = results;
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
                    'Carga Glucemica',
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
                    child: _foundIndiceGlucemico.isNotEmpty
                        ? ListView.builder(
                            itemCount: _foundIndiceGlucemico.length,
                            itemBuilder: (context, i) {
                              return Card(
                                color: Colors.yellowAccent,
                                elevation: 4,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: ListTile(
                                  title: Text(
                                    _foundIndiceGlucemico[i]['Alimento'],
                                    style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (_foundIndiceGlucemico[i]['IG'] >=
                                          70) ...[
                                        Text(
                                            'Indice Glucemico ALTO: ${_foundIndiceGlucemico[i]['IG']} ',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.redAccent)),
                                      ] else if (_foundIndiceGlucemico[i]
                                              ['IG'] <=
                                          45) ...[
                                        Text(
                                          'Indice Glucemico BAJO: ${_foundIndiceGlucemico[i]['IG']}',
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green),
                                        ),
                                      ] else if (_foundIndiceGlucemico[i]
                                                  ['IG'] >=
                                              45 &&
                                          _foundIndiceGlucemico[i]['IG'] <=
                                              70) ...[
                                        Text(
                                          'Indice Glucemico MEDIO : ${_foundIndiceGlucemico[i]['IG']} ',
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orange),
                                        ),
                                      ],
                                      const SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                  /* trailing: const Icon(
                                    Icons.,
                                    color: Colors.blue,
                                    size: 40,
                                  ),*/
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
