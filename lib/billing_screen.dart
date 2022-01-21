import 'package:flutter/material.dart';
import 'package:sdev_app/service_money.dart';

class Merchants extends StatefulWidget {
  final int service;
  const Merchants(this.service, {Key? key}) : super(key: key);

  @override
  _MerchantsState createState() => _MerchantsState();
}

class _MerchantsState extends State<Merchants> {
  List<List> services = [
    [
      'Ateneo De Davao University',
      'Davao Medical School Foundation',
      'Malayan Colleges Mindanao',
      'Mapua University',
      'Notre Dame of Marbel University',
      'University of Mindanao Matina',
      'University of the Immaculate Concepcion',
      'San Pedro College'
    ],
    [
      "Adventist Medical Center Manila",
      "Davao Doctors Hospital",
      "Fortune Medicare",
      "iConex",
      "Kaiser International",
      "KonsultaMD",
      "Maxicare",
      "San Pedro Hospital",
      "St. Dominic Medical Center",
      "Sun Life"
    ],
    [
      "Adendimun",
      "APEC",
      "ANECO",
      "ANTECO",
      "BENECO",
      "CELCO",
      "DANECO",
      "Davao Light",
      "MERALCO",
      "SOCOTECO"
    ],
    [
      "Abreeza Cinema",
      "Ayala Malls Cinema",
      "Gaisano Mall Davao Cinema",
      "KCC Marbel Cinema",
      "NCCC Mall Cinema",
      "Robinsons Movieworld",
      "SM Cinema Megamall",
      "SM City Davao Cinema",
      "SM Lanang Premier"
    ],
    [
      "AirAsia",
      "AP CARGO",
      "BIYAHEKO",
      "Cebu Pacific",
      "Easytrip RFID",
      "Philippine Airlines",
      "STARLITE FERRIES",
      "SUPERCAT",
      "TRANS-ASIA SHIPPING LINES",
      "Viacom"
    ],
    [
      "Angeles Water",
      "Aqua Centro",
      "Baguio Water District",
      "Boracay Water",
      "BP Water",
      "Calasiao Water",
      "CDO Water",
      "Davao City Water District",
      "Gensan City Water District",
      "Koronadal City Water District"
    ],
    [
      "Bayantel",
      "Bedoo",
      "Eastern Telecoms",
      "Globe at Home",
      "Globe Postpaid",
      "PLDT",
      "RACITELCOM",
      "SITELCO",
      "Smart Communications",
      "Wire Free Inc"
    ],
    [
      "BIR",
      "BSP",
      "DFA",
      "LTFRB",
      "Marina",
      "MMDA",
      "NBI",
      "NHMFC",
      "POEA",
      "TIEZA"
    ],
    [
      "Cablelink",
      "Cignal",
      "Comclark",
      "Gnet",
      "GSAT",
      "KCAT",
      "Now Corp",
      "Skycable",
      "Sky Broadband",
      "TETCO"
    ],
    [
      "GrabTaxi",
      "Angkas",
      "Grab",
      "Hirna",
      "GO LAG",
      "OWTO",
      "Uber",
      "Hype",
      "MiCab",
      "GoMoto"
    ],
    [
      "AUB Credit Cards",
      "BDO AMEX",
      "BDO MC OR VISA",
      "BPI Credit Card",
      "EastWest Bank",
      "HSBC",
      "LCC EXPRESSLINK",
      "PNB Credit Card",
      "RCBC",
      "Unionbank Visa or MC"
    ],
    [
      "Allianz PNB Life",
      "CCLPI",
      "Cocolife",
      "DIALEX",
      "Fortune Life",
      "Generali PH",
      "Insular Life",
      "MAPFRE",
      "Pioneer Life",
      "Pru Life UK"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        appBar: AppBar(
          backgroundColor: const Color(0xfff5f5f5),
          title: const Text(
            'Select Service',
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: Container(
            child: ListView(children: [
          Card(
            child: ListTile(
              onTap: () {
                payService(services[widget.service][0], context);
              },
              title: Text(services[widget.service][0]),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                payService(services[widget.service][1], context);
              },
              title: Text(services[widget.service][1]),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                payService(services[widget.service][2], context);
              },
              title: Text(services[widget.service][2]),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                payService(services[widget.service][3], context);
              },
              title: Text(services[widget.service][3]),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                payService(services[widget.service][4], context);
              },
              title: Text(services[widget.service][4]),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                payService(services[widget.service][5], context);
              },
              title: Text(services[widget.service][5]),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                payService(services[widget.service][6], context);
              },
              title: Text(services[widget.service][6]),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                payService(services[widget.service][7], context);
              },
              title: Text(services[widget.service][7]),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                payService(services[widget.service][8], context);
              },
              title: Text(services[widget.service][8]),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                payService(services[widget.service][9], context);
              },
              title: Text(services[widget.service][9]),
            ),
          ),
        ])));
  }
}

void payService(String serviceName, BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => ServiceMoney(serviceName)));
}
