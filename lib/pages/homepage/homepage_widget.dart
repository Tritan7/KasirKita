import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        //app bar
        TopBar(),
        SizedBox(
          height: 25,
        ),
        //search field
        SearchBox(),
        SizedBox(
          height: 25,
        ),
        //product
        // Center(
        //   child: Text("Tidak ada Data"),
        // ),
        ProductSection(),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 24),
              child: Image.asset(
                'assets/image/kk.png',
                width: size.width * 0.25,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Selamat Datang,",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 7, 11, 129),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Dadan",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 7, 11, 129),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: Color.fromARGB(255, 7, 11, 129),
                  ),
                  border: InputBorder.none,
                  hintText: 'Cari Produk?',
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.person_rounded,
              color: Color.fromARGB(255, 7, 11, 129),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductSection extends StatelessWidget {
  const ProductSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Produk Toko',
                  style: TextStyle(
                    color: Color.fromARGB(255, 7, 11, 129),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Kelola Produk',
                  style: TextStyle(
                    color: Color.fromARGB(255, 7, 11, 129),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pushNamed("add-product");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 50,
                      color: Color.fromARGB(255, 7, 11, 129),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const ProductCard(),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/image/kk.png",
            width: size.width * 0.26,
            height: size.height * 0.1,
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            "Coca Cola",
            style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 7, 11, 129),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "Rp 6000",
            style: TextStyle(
              color: Color.fromARGB(255, 7, 11, 129),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
