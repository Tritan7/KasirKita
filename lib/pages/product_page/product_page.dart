import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tugas_besar/utils/app_routes.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Kelola Produk",
            style: TextStyle(
              color: Color.fromARGB(255, 7, 11, 129),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            labelColor: Color.fromARGB(255, 7, 11, 129),
            indicatorColor: Color.fromARGB(255, 7, 11, 129),
            tabs: [
              Tab(
                text: "Produk",
              ),
              Tab(
                text: "Kategori",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Container(
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          hintText: 'Cari',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Produk",
                            style: TextStyle(
                              color: Color.fromARGB(255, 7, 11, 129),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              GoRouter.of(context)
                                  .pushNamed(AppRoutes.addProduct);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 55, 89, 240),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                "Tambah",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      child: const SafeArea(
                        child: Card(
                          child: ListTile(
                            textColor: Color.fromARGB(255, 7, 11, 129),
                            title: Text("Coca Cola"),
                            subtitle: Text("Minuman"),
                            trailing: Text("Rp 6000"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      hintText: 'Cari',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Kategori",
                        style: TextStyle(
                          color: Color.fromARGB(255, 7, 11, 129),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          GoRouter.of(context).pushNamed(AppRoutes.addProduct);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 55, 89, 240),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            "Tambah",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: const SafeArea(
                    child: Card(
                      child: ListTile(
                        textColor: Color.fromARGB(255, 7, 11, 129),
                        title: Text(
                          "Minuman",
                        ),
                      ),
                    ),
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
