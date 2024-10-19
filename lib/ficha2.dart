import 'package:flutter/material.dart';

class Ficha2 extends StatefulWidget {
  final data;
  final i;
  const Ficha2({
    super.key,
    this.data,
    this.i,
  });

  @override
  State<Ficha2> createState() => _Ficha2State();
}

class _Ficha2State extends State<Ficha2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ficha Alimento ${widget.data[widget.i]['ALIMENTOS']}'),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, ii) {
            return Card(
                color: const Color.fromARGB(255, 59, 209, 255),
                child: ListTile(
                  title: Text(
                    widget.data[widget.i]['ALIMENTOS'],
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tipo Alimento: ${widget.data[widget.i]['Tipo']}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Energia: ${widget.data[widget.i]['Kcal']} Kcal',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Proteinas : ${widget.data[widget.i]['Proteinas']} g.',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Carbohidratos : ${widget.data[widget.i]['H.C']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Grasa : ${widget.data[widget.i]['Lipido']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Grasas saturadas T : ${widget.data[widget.i]['Saturados']} g.',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      Text(
                        'Monoinsaturadas: ${widget.data[widget.i]['Monoinsaturados']} g.',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 243, 33, 233)),
                      ),
                      Text(
                        'Poliinsaturadas: ${widget.data[widget.i]['Poliinsaturados']} g.',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 243, 33, 215)),
                      ),
                      Text(
                        'Colesterol : ${widget.data[widget.i]['Colesterol']} mg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Fibras : ${widget.data[widget.i]['Fibras']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Fosforo : ${widget.data[widget.i]['Fosforo']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Magnesio : ${widget.data[widget.i]['Magnesio']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Calcio : ${widget.data[widget.i]['Calcio']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Hierro : ${widget.data[widget.i]['Hierro']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Zinc : ${widget.data[widget.i]['Zinc']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Sodio : ${widget.data[widget.i]['Sodio']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Potasio : ${widget.data[widget.i]['Potasio']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Iodo: ${widget.data[widget.i]['Iodo']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina C : ${widget.data[widget.i]['Vita 0C']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina B1 : ${widget.data[widget.i]['Vita 0B1']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina B2 : ${widget.data[widget.i]['Vita 0B2']} g',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Niacina: ${widget.data[widget.i]['Niacina']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina B6 : ${widget.data[widget.i]['Vita 0B6']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina A : ${widget.data[widget.i]['Vita 0A']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina D : ${widget.data[widget.i]['Vita 0D']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina E : ${widget.data[widget.i]['Vita 0E']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina C : ${widget.data[widget.i]['Vitamin C']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Folica : ${widget.data[widget.i]['Folico']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina B12 : ${widget.data[widget.i]['Vita 0B12']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ));
          }),
    );
  }
}
