import 'package:flutter/material.dart';
import 'qouto.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  QuotesList({Key? key}) : super(key: key);

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Qouto> quotes = [
    Qouto(text: 'Garchi shuncha mag`rur tursa ham,', author: "Erkin Vohidov"),
    Qouto(text: 'Piyolaga egilar choynak.', author: "Erkin Vohidov"),
    Qouto(text: 'Shunday ekan, manmanlik nechun,', author: "Erkin Vohidov"),
    Qouto(text: 'Kibru havo nimaga kerak?', author: "Erkin Vohidov")
  ];

  Widget quoteTemp(quote) {
    return quoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Quotes App'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5, 30, 0, 0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: quotes.map((quote) => quoteTemp(quote)).toList(),
          ),
        ),
      ),
    );
  }
}

class quoteCard extends StatelessWidget {
  Qouto quote;
  quoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Column(
        children: [
          Text(
            quote.text,
            style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
          ),
          const SizedBox(height: 6.0),
          Text(
            quote.author,
            style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }
}
