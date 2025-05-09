import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getStream() {
    final messages = <String>[
      'Espere un momento',
      'Cargando peliculas',
      'Cargando todo el contenido',
      'Ya casi terminamos',
      'Esto esta siendo lento',
      'No te vayas, por favor',
    ];
    return Stream.periodic(const Duration(seconds: 2), (value) {
      return messages[value];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 10),
          StreamBuilder(
            stream: getStream(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Text('Cargando peliculas...');
              }
              return Text(snapshot.data!);
            },
          ),
        ],
      ),
    );
  }
}
