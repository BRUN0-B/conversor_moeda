import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final items = ['Real', 'Dolar'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 20),
            child: SizedBox(
              child: Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/imagem.png', width: 150, height: 150),
                    SizedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 57,
                              child: DropdownButton<String>(
                                  isExpanded: true,
                                  underline: Container(
                                    height: 1,
                                    color: Colors.amber,
                                  ),
                                  items: [
                                    DropdownMenuItem(
                                      child: Text('Real'),
                                    ),
                                    DropdownMenuItem(
                                      child: Text('Dolar'),
                                    ),
                                  ],
                                  onChanged: (value) {}),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    RaisedButton(
                      onPressed: () {},
                      child: Text('Converter'),
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
