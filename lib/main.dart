import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Cuenta de Google'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCard(
                icon: Icons.security,
                iconColor: Colors.green,
                title: 'Tu cuenta está protegida',
                description:
                    'La Verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.',
                actionText: 'Ver detalles',
              ),
              const SizedBox(height: 16.0),
              buildCard(
                icon: Icons.privacy_tip,
                iconColor: Colors.blue,
                title: 'Verificación de privacidad',
                description:
                    'Elige la configuración de privacidad indicada para ti con esta guía paso a paso.',
                actionText: 'Realizar la Verificación de privacidad',
              ),
              const SizedBox(height: 16.0),
              buildInfoCard(),
              const SizedBox(height: 16.0),
              const Text(
                'Solo tú puedes ver la configuración. También puedes revisar la configuración de Maps, la Búsqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y la seguridad de tus datos.',
                style: TextStyle(fontSize: 14.0),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Más información',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Icon(
                    Icons.security, // Usar un icono de Google similar
                    size: 24.0,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String description,
    required String actionText,
  }) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 40),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(description),
                const SizedBox(height: 8.0),
                GestureDetector(
                  onTap: () {
                    // Acción al tocar el texto
                  },
                  child: Text(
                    actionText,
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInfoCard() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '¿Buscas otra información?',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Buscar en la Cuenta de Google'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text('Ver las opciones de ayuda'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Enviar comentarios'),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
