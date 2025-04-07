import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  final List<Category> categories = [
    Category(
      imageUrl:
          'https://cdn2.iconfinder.com/data/icons/coffee-break/64/Coffee_Cup_starbuck_hot_-512.png',
      name: 'Hot Drinks',
      ourMenuItems: [
        MenuItem(
          name: 'Espresso',
          price: '50,000 L.L',
        ),
        MenuItem(name: 'Espresso Macchiato', price: '100,000 L.L'),
        MenuItem(name: 'Americano', price: '150,000 L.L'),
        MenuItem(name: 'Passion Fruit', price: '100,000 L.L'),
        MenuItem(name: 'Berries', price: '100,000 L.L'),
        MenuItem(name: 'Green With Mint', price: '100,000 L.L'),
        MenuItem(name: 'Lemon Ginger', price: '100,000 L.L'),
        MenuItem(name: 'Hot Chocolate', price: '200,000 L.L'),
        MenuItem(name: 'Bubble Gum', price: '200,000 L.L'),
        MenuItem(name: 'Strawberry', price: '200,000 L.L'),
      ],
      addsItems: [
        AddsItem(name: 'Syrup', price: '50,000 L.L'),
        AddsItem(name: 'Whipped Cream', price: '50,000 L.L'),
        AddsItem(name: 'Shot Espresso', price: '50,000 L.L'),
        AddsItem(name: 'Sauce', price: '50,000 L.L'),
      ],
    ),
    Category(
      imageUrl: 'https://cdn-icons-png.freepik.com/512/2935/2935219.png',
      name: 'Latte',
      ourMenuItems: [
        MenuItem(name: 'Tiramisu', price: '200,000 L.L'),
        MenuItem(name: 'Caramel', price: '200,000 L.L'),
        MenuItem(name: 'Chocolate', price: '200,000 L.L'),
        MenuItem(name: 'Cookie', price: '200,000 L.L'),
        MenuItem(name: 'Speculoos', price: '200,000 L.L'),
      ],
      addsItems: [
        AddsItem(name: 'Syrup', price: '50,000 L.L'),
        AddsItem(name: 'Whipped\nCream', price: '50,000 L.L'),
        AddsItem(name: 'Shot\nEspresso', price: '50,000 L.L'),
        AddsItem(name: 'Sauce', price: '50,000 L.L'),
      ],
    ),
    // Add more categories as needed
    Category(
      imageUrl:
          'https://cdn0.iconfinder.com/data/icons/coffee-61/64/hot_coffee_beans_machine-14-512.png',
      name: 'Frappe',
      ourMenuItems: [
        MenuItem(name: 'Caramel', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
        MenuItem(name: 'Mocha', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
        MenuItem(name: 'White Mocha', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
        MenuItem(name: 'Tiramisu', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
        MenuItem(name: 'Irish', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
        MenuItem(name: 'Coffee Lovers', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
      ],
      addsItems: [
        AddsItem(name: 'Syrup', price: '50,000 L.L'),
        AddsItem(name: 'Whipped\n Cream', price: '50,000 L.L'),
        AddsItem(name: 'Shot Espresso', price: '50,000 L.L'),
        AddsItem(name: 'Sauce', price: '50,000 L.L'),
      ],
    ),
    Category(
      imageUrl:
          'https://cdn.iconscout.com/icon/premium/png-512-thumb/crepe-2757573-2292622.png?f=webp&w=256',
      name: 'Crepe',
      ourMenuItems: [
        MenuItem(name: 'Nutella', price: '300,000 L.L'),
        MenuItem(name: 'Kinder', price: '350,000 L.L'),
        MenuItem(name: 'Lotus', price: '350,000 L.L'),
        MenuItem(name: "Hershey's", price: '350,000 L.L'),
        MenuItem(
            name: 'Sushi Crepe\n(Served with cup\nof Chocolate)',
            price: '0.8 \$'),
        MenuItem(name: 'Fettuccine', price: '450,000 L.L'),
        MenuItem(name: 'Pancake', price: '450,000 L.L'),
      ],
      addsItems: [
        
        AddsItem(name: 'Nutella or Lotus', price: '1.13 \$'),
        AddsItem(name: 'Smarties', price: '0.8 \$'),
        AddsItem(name: 'Brownies', price: '0.68 \$'),
        AddsItem(name: 'Kinder Bar', price: '0.3 \$'),
        
        AddsItem(name: 'Fruit', price: '0.57 \$'),
        AddsItem(name: 'Lotus', price: '0.57 \$'),
        AddsItem(name: 'Oreo', price: '0.57 \$'),
      ],
    ),
    Category(
        imageUrl:
            'https://cdn.iconscout.com/icon/premium/png-512-thumb/milkshake-2120893-1788685.png?f=webp&w=256',
        name: 'Milkshakes',
        addsItems: [
          AddsItem(
            name: 'Whipped Cream\n on Top',
            price: '50,000 L.L',
          ),
          AddsItem(
            name: 'Syrup',
            price: '30,000 L.L',
          ),
          AddsItem(
            name: 'Sauce',
            price: '30,000 L.L',
          ),
          AddsItem(
            name: 'Biscuits',
            price: '30,000 L.L',
          ),
          AddsItem(
            name: 'Candies',
            price: '50,000 L.L',
          ),
          AddsItem(
            name: 'Fruits',
            price: '50,000 L.L',
          ),
        ],
        ourMenuItems: [
          MenuItem(
              name: 'Strawberry', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
          MenuItem(name: 'oreo', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
          MenuItem(name: 'Lotus', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
          MenuItem(
              name: 'Chocolate', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
          MenuItem(name: 'Caramel', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
          MenuItem(
              name: 'Bubble Gum', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
          MenuItem(name: 'Protien', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
        ]),
    Category(
      imageUrl:
          'https://cdn.iconscout.com/icon/premium/png-512-thumb/smoothie-136-745926.png?f=webp&w=256',
      name: 'Smoothies',
      ourMenuItems: [
        MenuItem(name: 'Strawberry', price: 'M: 200,000 L.L \n L: 300,000 L.L'),
        MenuItem(name: 'Peach', price: 'M: 200,000 L.L \n L: 300,000 L.L'),
        MenuItem(
            name: 'Dragon Fruit', price: 'M: 200,000 L.L \n L: 300,000 L.L'),
        MenuItem(name: 'Lemonade', price: 'M: 200,000 L.L \n L: 300,000 L.L'),
        MenuItem(
            name: 'Minted\nLemonade',
            price: 'M: 250,000 L.L \n L: 350,000 L.L'),
      ],
      addsItems: [],
    ),
    Category(
      name: 'Fresh Juices',
      ourMenuItems: [
        MenuItem(
            name: 'Avoca',
            price: 'M: 4.4 \$\n L: 5 \$\n1L: 8 \$'),
        MenuItem(
            name: 'Cocktail She2af',
            price: 'M: 4.4 \$\n L: 5 \$\n'),
        MenuItem(
            name: 'Cocktail',
            price: 'M: 2.2 \$\n L: 3.3 \$\n1L: 5 \$'),
        MenuItem(name: 'Strawberry', price: 'M: 1.7 \$\n L: 2.2 \$\n1L: 3.33 \$'),
        MenuItem(name: 'Mango', price: 'M: 1.7 \$\n L: 2.2 \$\n1L: 3.8 \$'),
        MenuItem(
            name: 'Orange',
            price: 'M: 1.1 \$\n L: 1.66 \$\n1L: 3 \$'),
        MenuItem(
            name: 'Carrot',
            price: 'M: 1.1 \$\n L: 1.66 \$\n1L: 3 \$'),
        MenuItem(
            name: 'Achta',
            price: 'sa7en: 5 \$'),
      ],
      
      imageUrl:
          'https://cdn.iconscout.com/icon/premium/png-512-thumb/juice-185-357899.png?f=webp&w=256',
      addsItems: [AddsItem(name: ' ', price: ' ')],
    ),
    
    Category(
        imageUrl:
            'https://cdn.iconscout.com/icon/premium/png-512-thumb/cupcake-150-503568.png?f=webp&w=256',
        name: 'Cup',
        ourMenuItems: [
          MenuItem(name: 'Strawberry', price: 'S: 150,000 L.L\nM: 200,000 L.L\nL: 250,000 L.L'),
          MenuItem(name: 'Cereal', price: 'S: 150,000 L.L\nM: 200,000 L.L\nL: 250,000 L.L'),
          MenuItem(name: 'Browni', price: 'S: 150,000 L.L\nM: 200,000 L.L\nL: 250,000 L.L'),
          MenuItem(
              name: 'Chocolate Mou', price: 'M: 200,000 L.L\nL: 300,000 L.L'),
          MenuItem(name: 'Karimix', price: 'M: 200,000 L.L\n3L: 00,000 L.L'),
        ],
        addsItems: []),
    Category(
        name: 'Ice Cream',
        addsItems: [
          AddsItem(name: 'Add ons', price: '1\$'),
          AddsItem(name: 'Achta', price: '50,000 L.L'),
          AddsItem(name: 'Cones', price: '50,000 L.L'),
        ],
        ourMenuItems: [
          MenuItem(name: 'Small Cone', price: '100,000 L.L'),
          MenuItem(name: 'Mix Cone', price: '250,000 L.L'),
          MenuItem(name: 'Large Cone', price: '250,000 L.L'),
          MenuItem(name: 'One Boule', price: '100,000 L.L'),
          MenuItem(name: 'Achta Cone', price: '300,000 L.L'),
          MenuItem(name: '500 G Mix', price: '450,000 L.L'),
          MenuItem(name: '1kg Mix', price: '12.5 \$'),
          MenuItem(name: '1kg Achta', price: '14 \$'),
        ],
        imageUrl:
            'https://cdn.iconscout.com/icon/premium/png-512-thumb/ice-cream-442-978592.png?f=webp&w=256'),
    Category(
      name: 'Candies',
      ourMenuItems: [
        MenuItem(name: '150g', price: '100,000 L.L'),
        MenuItem(name: 'Gelatine\n Cup', price: '100,000 L.L'),
        MenuItem(name: 'Eyes Cup', price: '130,000 L.L'),
      ],
      imageUrl:
          'https://cdn.iconscout.com/icon/premium/png-512-thumb/candies-2641618-2189665.png?f=webp&w=256',
      addsItems: [],
    ),
    Category(
      name: 'Merry Cream',
      ourMenuItems: [
        MenuItem(name: 'Small Cone', price: '100,000 L.L'),
        MenuItem(name: 'Meduim Cone', price: '200,000 L.L'),
        MenuItem(name: 'Large Cone', price: '300,000 L.L'),
        MenuItem(name: 'Extra Large', price: '350,000 L.L'),
        MenuItem(name: 'Oreo Cup', price: '200,000 L.L'),
        MenuItem(name: 'Lotus Cup', price: '200,000 L.L'),
        MenuItem(name: 'Strawberry Cup', price: '200,000 L.L'),
        MenuItem(name: 'Kinder Cup', price: '250,000 L.L'),
      ],
      imageUrl:
          'https://cdn.iconscout.com/icon/premium/png-512-thumb/ice-cream-2115998-1802281.png?f=webp&w=256',
      addsItems: [
        AddsItem(name: 'Adds', price: '100,000 L.L'),
        AddsItem(name: 'Fruit', price: '50,000 L.L'),
        AddsItem(name: 'Biscuit', price: '50,000 L.L'),
        AddsItem(name: 'Surup', price: '20,000 L.L'),
        AddsItem(name: 'Candies', price: '50,000 L.L'),
        AddsItem(name: 'Whipped\n Cream', price: '50,000 L.L'),
      ],
    ),
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    Widget w = const Image(
      image: AssetImage('imagess/logo.jpg'),
      width: 120,
      height: 120,
    );
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 242, 186),
        body: Column(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Center(child: w)),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: categories
                  .map(
                    (category) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ItemListPage(category: category),
                          ),
                        );
                      },
                      child: Container(
                        //margin: EdgeInsets.all(10),
                        //padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          //border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 253, 242, 186),
                        ),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(
                              category.imageUrl,
                              height: 50,
                              width: 50,
                            ),
                            Text(
                              category.name,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ],
                        )

                            /*Text(
                            category.name,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),*/
                            ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ]));
  }
}

class ItemListPage extends StatelessWidget {
  final Category category;

  ItemListPage({required this.category});

  @override
  Widget build(BuildContext context) {
    Widget w = const Image(
      image: AssetImage('imagess/logo.jpg'),
      width: 150,
      height: 150,
    );
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 242, 186),
        body: Column(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Center(child: w)),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      category.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 1,
                        vertical: 1,
                      ),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 1,
                        vertical: 1,
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 253, 242, 186),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: category.ourMenuItems
                            .map(
                              (item) => ListTile(
                                  title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(item.name,
                                      style: TextStyle(fontSize: 13)),
                                  Text(item.price,
                                      style: TextStyle(fontSize: 13)),
                                ],
                              )),
                            )
                            .toList(),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Add on's ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 4,
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 253, 242, 186),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: category.addsItems
                          .map(
                            (item) => ListTile(
                                title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(item.name, style: TextStyle(fontSize: 13)),
                                Text(item.price,
                                    style: TextStyle(fontSize: 13)),
                              ],
                            )),
                          )
                          .toList(),
                    ),
                  )
                ],
              ),
            ),
          )
        ]));
  }
}

class Category {
  final String imageUrl;
  final String name;
  final List<MenuItem> ourMenuItems;
  final List<AddsItem> addsItems;

  Category(
      {required this.imageUrl,
      required this.name,
      required this.ourMenuItems,
      required this.addsItems});
}

class MenuItem {
  final String name;
  final String price;

  MenuItem({required this.name, required this.price});
}

class AddsItem {
  final String name;
  final String price;

  AddsItem({required this.name, required this.price});
}
