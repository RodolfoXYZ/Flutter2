import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NubankHomePage(),
    );
  }
}

class NubankHomePage extends StatelessWidget {
  Widget _buildIconButton(IconData icon, String label, VoidCallback onPressed) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0x20df40fb)),
          ),
          icon: Icon(icon),
          padding: const EdgeInsets.all(20),
        ),
        Text(label),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8A05BE),
        leading: Center(
          child: Ink(
            decoration: const ShapeDecoration(
              color: Color(0xFFBA4DE3),
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(Icons.person_outlined),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.visibility_outlined, color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.question_mark_rounded, color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
          IconButton(
            icon:
                Icon(Icons.mark_email_read_outlined, color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Conta',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text('R\$ 1.000,00',
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildIconButton(Icons.pix, "Área Pix", () {}),
                      _buildIconButton(Icons.money, "Pagamentos", () {}),
                      _buildIconButton(Icons.qr_code, "QR Code", () {}),
                      _buildIconButton(Icons.attach_money, "Transferir", () {}),
                    ],
                  ),
                  SizedBox(height: 30),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Icon(Icons.credit_card),
                          SizedBox(width: 20),
                          Text("Meus Cartões",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Guarde seu dinheiro em caixinhas",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF8A05BE))),
                          Text("Acessando a área de planejamento"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 30),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    // Adiciona Expanded aqui para evitar overflow
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cartão de Crédito',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text('Fatura fechada',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54)),
                        SizedBox(height: 10),
                        Text('R\$ 500,00', style: TextStyle(fontSize: 24)),
                        SizedBox(height: 15),
                        Text('Vencimento: 20/10',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54)),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Renegociar',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),
            Divider(height: 30),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    // Adiciona Expanded para evitar overflow na seção de Empréstimo
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Empréstimo',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text('Tudo certo com seu empréstimo atual.',
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),
            Divider(height: 30),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Descubra agora", style: TextStyle(fontSize: 24)),
                  Card(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0)),
                          child: Image.network(
                            'https://www.septe.com.br/wp-content/uploads/2024/01/planilha-matriz-9-box-jpg.webp',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Seguro de Vida',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 5),
                              Text('Cuide bem do que importa.',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black54)),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Conhecer'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF8A05BE),
                                  foregroundColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
