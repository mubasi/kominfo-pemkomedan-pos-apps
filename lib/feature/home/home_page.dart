import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kasir_app_mobile/utils/Constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<String> listCategory = ["Makanan", "Minuman", "Promo"];
    List<String> listProduct = ["Sanger Ice", "Sanger Hot", "Burger Jumbo", "Jus Jeruk", "Rice Bowl", "Sanger Ice", "Sanger Hot", "Burger Jumbo", "Jus Jeruk", "Rice Bowl", "Sanger Ice", "Sanger Hot", "Burger Jumbo", "Jus Jeruk", "Rice Bowl", "Sanger Ice", "Sanger Hot", "Burger Jumbo", "Jus Jeruk", "Rice Bowl"];

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderSearch(
            sized: size,
          ),
          CategoryProduct(
            items: listCategory,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListProduct(
                sized: size,
                items : listProduct
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderSearch extends StatelessWidget {
  const HeaderSearch({Key? key, required this.sized}) : super(key: key);

  final Size sized;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Constants.padding * 0.8),
      height: sized.height * 0.3,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Constants.padding,
              right: Constants.padding,
              bottom: 36 + Constants.padding,
            ),
            height: sized.height * 0.3 - 20,
            decoration: BoxDecoration(
              color: Constants.primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: sized.width * 0.7,
                  child: AutoSizeText(
                    Constants.appName,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    minFontSize: 12,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Badge(
                    label: const Text(
                      '0',
                      style: TextStyle(color: Colors.white),
                    ),
                    child: IconButton(
                      color: Constants.primaryColor,
                      icon: const Icon(Icons.shopping_bag),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: Constants.padding),
              padding: EdgeInsets.symmetric(horizontal: Constants.padding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: Constants.primaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Nama produk",
                        hintStyle: TextStyle(
                          color: Constants.primaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.search,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({super.key, required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Constants.padding - 20),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            String nameCat = items[index];
            return GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Constants.padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nameCat,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Constants.primaryColor.withOpacity(0.8),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: Constants.padding / 4), //top padding 5
                      height: 2,
                      width: 30,
                      color: Colors.transparent,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ListProduct extends StatelessWidget {
  const ListProduct({super.key, required this.sized, required this.items});

  final Size sized;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        int gridRow = 4;
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: gridRow,
          ),
          itemCount: items.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (context, index) {
            String productName = items[index];
            var image = const AssetImage("assets/images/no-image.png");
            return Container(
              margin: EdgeInsets.all(Constants.padding * 0.3),
              width: sized.width * 0.4,
              child: Column(
                children: <Widget>[
                  Container(
                    width: sized.width,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: image,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(Constants.padding / 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50,
                          color: Constants.primaryColor.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      width: sized.width,
                      child: Text(
                        productName.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 10.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

