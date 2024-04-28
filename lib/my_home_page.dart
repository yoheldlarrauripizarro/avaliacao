import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício Montagem GUI'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LabelTextField(label: 'Nome', placeholder: 'Digite o nome'),
            SizedBox(height: 20),
            LabelTextField(label: 'Endereço', placeholder: 'Digite o endereço'),
            SizedBox(height: 20),
            LabelTextField(label: 'Email', placeholder: 'Digite o email'),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Alerta'),
                        content: Text('Você clicou em Cancelar.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text('Cancelar'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Alerta'),
                        content: Text('Você clicou em Salvar.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text('Salvar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LabelTextField extends StatelessWidget {
  final String label;
  final String placeholder;

  const LabelTextField({
    required this.label,
    required this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: placeholder,
          ),
        ),
      ],
    );
  }
}
