import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  // final Future<List<Provincias>> post;

  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _PueblosState();
}

class _PueblosState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Datos composicion de los Alimentos  '),
        ),
        body: SizedBox(
          width: 500,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
                // width: 100,
              ),
              const Text(
                'Opciones',
                style: TextStyle(fontSize: 35),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(247, 11, 30, 239),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/alimentos1',
                    );
                  },
                  child: const Text(
                    'Alimentos1',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(247, 45, 11, 239),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/listafiltro');
                  },
                  child: const Text(
                    'lista filtro',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: 300 ,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(247, 11, 26, 239),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))) ,
                  onPressed: () {
                    Navigator.pushNamed(context, '/alimentos2');
                  },
                  child: const Text(
                    'Alimentos2',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
             
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(247, 34, 11, 239),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    var pais = 'cuba';
                    Navigator.pushNamed(context,'/novartis',//porpais',
                        arguments: {'pais': pais});
                  },
                  child: const Text(
                    'Alimentos Novartis',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(247, 19, 11, 239),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    var provi = '07';
                    Navigator.pushNamed(context, '/indiceglucemico',
                        arguments: {'provi': provi});
                  },
                  child: const Text(
                    'Indice Glucemico',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
             const SizedBox(
                height: 30,
              ),
               SizedBox(
                height: 50,
                width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(247, 19, 11, 239),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    var provi = '07';
                    Navigator.pushNamed(context, '/tiemponet',
                        arguments: {'provi': provi});
                  },
                  child: const Text(
                    ' Tutiempo.net',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
             
            ],
          ),
        ));
  }
}
