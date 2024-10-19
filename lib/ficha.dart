import 'package:flutter/material.dart';

class Ficha extends StatefulWidget {
  final data;
  final i;
  const Ficha({
    super.key,
    this.data,
    this.i,
  });

  @override
  State<Ficha> createState() => _FichaState();
}

class _FichaState extends State<Ficha> {
  @override
  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AppBar(
        title:  Text('Ficha Alimento ${widget.data[widget.i]['Alimento']}'),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, ii) {
            return Card(
                color:Colors.yellow,
                child: ListTile(
                  title: Text(
                    widget.data[widget.i]['Alimento'],
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Energia: ${widget.data[widget.i]['Energía']} Kcal',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Proteinas : ${widget.data[widget.i]['Proteína']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold,),
                      ),
                      Text(
                        'Carbohidratos : ${widget.data[widget.i]['Carbohidratos']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Azucares Totales : ${widget.data[widget.i]['Azúcares total']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Fibra dietética total : ${widget.data[widget.i]['Fibra dietética total']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Grasa Total : ${widget.data[widget.i]['Grasa total']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Grasas saturadas T : ${widget.data[widget.i]['Ácidos grasos saturados totales']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold, color:Colors.red),
                      ),
                      Text(
                        'Monoinsaturadas: ${widget.data[widget.i]['Ácidos grasos monoinsaturados totales']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 243, 33, 233)),
                      ),
                      Text(
                        'Poliinsaturadas: ${widget.data[widget.i]['Ácidos grasos poliinsaturados totales']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 243, 33, 215)),
                      ),
                      Text(
                        'Colesterol : ${widget.data[widget.i]['Colesterol ']} mg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Retinol : ${widget.data[widget.i]['Retinol ']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text('Vitaminas',
                      style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold,color: Colors.cyan),
                      ),
                      Text(
                        'Vitamina A RAE : ${widget.data[widget.i]['Vitamina A RAE']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Caroteno, alfa : ${widget.data[widget.i]['Caroteno, alfa']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Caroteno, beta  : ${widget.data[widget.i]['Carotene, beta ']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Criptoxantina, beta : ${widget.data[widget.i]['Criptoxantina, beta']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Licopeno : ${widget.data[widget.i]['Licopeno']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Luteína + zeaxantina  : ${widget.data[widget.i]['Luteína + zeaxantina ']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Tiamina : ${widget.data[widget.i]['Tiamina']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Riboflavina : ${widget.data[widget.i]['Riboflavina  ']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Niacina : ${widget.data[widget.i]['Niacina  ']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina B-6 : ${widget.data[widget.i]['Vitamina B-6  ']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Ácido fólico : ${widget.data[widget.i]['Ácido fólico ']} g',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Folato, alimentos : ${widget.data[widget.i]['Folato, alimentos ']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Folato, DFE : ${widget.data[widget.i]['Folato, DFE ']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Folato total : ${widget.data[widget.i]['Folato total ']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Colina total : ${widget.data[widget.i]['Colina total ']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina B-12 : ${widget.data[widget.i]['Vitamina B-12   ']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina C : ${widget.data[widget.i]['Vitamin C']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina D2 y D3 : ${widget.data[widget.i]['Vitamina D2 y D3']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina E : ${widget.data[widget.i]['Vitamina E']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina E, añadida : ${widget.data[widget.i]['Vitamina E, añadida ']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Vitamina K  : ${widget.data[widget.i]['Vitamina K ']} mcg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text('Minerales',
                     style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold,color:Colors.cyan),
                      ),
                      Text(
                        'Calcio: ${widget.data[widget.i]['Calcio']} mg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Fósforo : ${widget.data[widget.i]['Fósforo']} mg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Magnesio: ${widget.data[widget.i]['Magnesio']} mg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Hierro : ${widget.data[widget.i]['Hierro']} mg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Zinc : ${widget.data[widget.i]['Zinc']} mg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Cobre : ${widget.data[widget.i]['Cobre']} mg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Selenio : ${widget.data[widget.i]['Selenio']} mg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Potasio : ${widget.data[widget.i]['Potasio']} mg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Sodio : ${widget.data[widget.i]['Sodio']} mg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Cafeína: ${widget.data[widget.i]['Cafeína']} mg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Teobromina : ${widget.data[widget.i]['Teobromina']} mg.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Alcohol : ${widget.data[widget.i]['Alcohol']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Agua : ${widget.data[widget.i]['Agua ']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text('Grasas',
                       style:  TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold,color:Colors.cyan),
                           
                      ),
                      Text(
                        '4:00 Acido butírico: ${widget.data[widget.i]['4:00']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '6:00 Acido caproico: ${widget.data[widget.i]['6:00']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '8:00 Acido caprílico: ${widget.data[widget.i]['8:00']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '10:00 Acido cáprico: ${widget.data[widget.i]['10:00']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '12:00 Acido láurico: ${widget.data[widget.i]['12:00']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '14:00 Acido mirístico: ${widget.data[widget.i]['14:00']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '16:00 Acido palmítico: ${widget.data[widget.i]['16:00']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '18:00 Acido esteárico: ${widget.data[widget.i]['18:00']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '16:01  Acido palmitoleico: ${widget.data[widget.i]['16:01']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '18:01 Acido oleico: ${widget.data[widget.i]['18:01']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '20:01 Acido gadoleico: ${widget.data[widget.i]['20:01']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '22:01 Acido cetoleico:${widget.data[widget.i]['22:01']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '18:02 Azido linoleico : ${widget.data[widget.i]['18:02']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '18:03 Acido linolénico : ${widget.data[widget.i]['18:03']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '18:04:Acido estearidónico ${widget.data[widget.i]['18:04']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '20:04 Acido araquidónico: ${widget.data[widget.i]['20:04']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '20:5 n-3  : ${widget.data[widget.i]['20:5 n-3 ']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '22:5 n-3 Acido clupanodónico : ${widget.data[widget.i]['22:5 n-3 ']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '22:6 n-3 docosahexaenoico: ${widget.data[widget.i]['22:6 n-3 ']} g.',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
