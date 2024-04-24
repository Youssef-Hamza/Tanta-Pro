import 'package:flutter/material.dart';

class customGrid extends StatelessWidget {
  const customGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width - 15,
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisExtent: 100,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Color.fromARGB(255, 240, 238, 238))),
            child: Center(
              child: InkWell(
                onTap: () {},
                child: Column(children: [
                  Icon(
                    Icons.add,
                    size: 50,
                    color: Color.fromARGB(136, 29, 15, 15),
                  ),
                  Center(
                    child: Text("إضافة صورة "),
                  )
                ]),
              ),
            ),
          );
        },
      ),
    );
  }
}

// ----

class imageGrid extends StatelessWidget {
  const imageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    int no = 0;
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width - 20,
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisExtent: 100,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          no += 1;
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.black26),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/$no.jpg',
                  ),
                  fit: BoxFit.cover,
                )),
          );
        },
      ),
    );
  }
}

// ----

// ------
class imageGrid2 extends StatelessWidget {
  const imageGrid2({super.key});

  @override
  Widget build(BuildContext context) {
    int no = 0;
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width - 20,
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisExtent: 100,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          no += 1;
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.black26),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/p$no.jpg',
                  ),
                  fit: BoxFit.cover,
                )),
          );
        },
      ),
    );
  }
}
