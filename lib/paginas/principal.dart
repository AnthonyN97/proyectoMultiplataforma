import 'package:flutter/material.dart';

class pagPrincipal extends StatelessWidget {
  const pagPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    const String url1 =
        "https://asset.vg247.com/genshin-impact-ayaka-build.jpg/BROK/thumbnail/1200x1200/quality/100/genshin-impact-ayaka-build.jpg";
    const String url2 =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDtJ8wr1N0eQZDoAq9AUqRF190opqnq8vDfA&usqp=CAU";
    const String url3 =
        "https://i0.wp.com/lamazmorradelfriki.com/wp-content/uploads/2022/10/portada_genshin-impact-202.jpg";
    const String url4 =
        "https://external-preview.redd.it/pWHlVS2UeJyOeusT6gi2VhwkhImLZx42_Tqq0Movmts.jpg?auto=webp&s=fd20048db423cd51deb269f03e06164e7d4d943b";
    const String url5 =
        "https://cdn.donmai.us/sample/e2/c2/sample-e2c297bd490b4ab91a517a048339c738.jpg";
    const String url6 = "https://i.redd.it/qyrp3wga1vw61.jpg";
    const String fondo =
        "https://www.okchicas.com/wp-content/uploads/2019/03/Fondos-para-celular-1.jpg";

    return Scaffold(
        appBar: AppBar(
          title: const Text("Página Principal"),
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(fondo), fit: BoxFit.cover),
            ),
            child: ListView(
              children: <Widget>[
                Fila(context, url1, url2, url3),
                Fila(context, url4, url5, url6)
              ],
            )));
  }
}

Widget Fila(context, urlA, urlB, urlC) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Objeto(context, urlA),
        Objeto(context, urlB),
        Objeto(context, urlC)
      ]);
}

Widget Objeto(context, url) {
  return Container(
    width: MediaQuery.of(context).size.width / 3,
    height: MediaQuery.of(context).size.width / 4,
    padding: const EdgeInsets.all(2.0),
    child: Image.network(
      url,
      width: 100,
      height: 100,
    ),
  );
}
