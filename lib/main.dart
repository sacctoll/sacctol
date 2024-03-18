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
        MenuItem(name: 'Caramel', price: '200,000 l.l'),
        MenuItem(name: 'Chocolate', price: '200,000 l.l'),
        MenuItem(name: 'Cookie', price: '200,000 l.l'),
        MenuItem(name: 'Speculoos', price: '200,000 l.l'),
      ],
      addsItems: [
        AddsItem(name: 'Syrup', price: '50,000 L.L'),
        AddsItem(name: 'Whipped Cream', price: '50,000 L.L'),
        AddsItem(name: 'Shot Espresso', price: '50,000 L.L'),
        AddsItem(name: 'Sauce', price: '50,000 L.L'),
      ],
    ),
    // Add more categories as needed
    Category(
      imageUrl:
          'https://cdn0.iconfinder.com/data/icons/coffee-61/64/hot_coffee_beans_machine-14-512.png',
      name: 'Frappe',
      ourMenuItems: [
        MenuItem(name: 'Caramel', price: '250,000 L.L'),
        MenuItem(name: 'Mocha', price: '250,000 L.L'),
        MenuItem(name: 'White Mocha', price: '250,000 L.L'),
        MenuItem(name: 'Tiramisu', price: '200,000 L.L'),
        MenuItem(name: 'Irish', price: '200,000 L.L'),
        MenuItem(name: 'Coffee Lovers', price: '200,000 L.L'),
      ],
      addsItems: [
        AddsItem(name: 'Syrup', price: '50,000 L.L'),
        AddsItem(name: 'Whipped Cream', price: '50,000 L.L'),
        AddsItem(name: 'Shot Espresso', price: '50,000 L.L'),
        AddsItem(name: 'Sauce', price: '50,000 L.L'),
      ],
    ),
    Category(
      imageUrl:
          'https://cdn.iconscout.com/icon/premium/png-512-thumb/crepe-2757573-2292622.png?f=webp&w=256',
      name: 'Crepe',
      ourMenuItems: [
        MenuItem(name: 'Nutella', price: '250,000 L.L'),
        MenuItem(name: 'Kinder', price: '270,000 L.L'),
        MenuItem(name: 'Lotus', price: '270,000 L.L'),
        MenuItem(name: "Hershey's", price: '280,000 L.L'),
        MenuItem(name: 'Dr. Food Flio', price: '200,000 L.L'),
        MenuItem(name: 'Sushi Crepe', price: '500,000 L.L'),
        MenuItem(name: 'Fettuccine', price: '350,000 L.L'),
      ],
      addsItems: [
        AddsItem(
          name: 'Snickers, Mars,\nTwix or Kitkat',
          price: '100,000 L.L',
        ),
        AddsItem(name: 'Flake', price: '50,000 L.L'),
        AddsItem(name: "M&M's", price: '70,000 L.L'),
        AddsItem(name: 'Galaxy', price: '100,000 L.L'),
        AddsItem(name: 'Brownies', price: '60,000 L.L'),
        AddsItem(name: 'Milka Oreo', price: '100,000 L.L'),
        AddsItem(name: 'Nutella or Lotus', price: '100,000 L.L'),
        AddsItem(name: 'Kinder Bar', price: '30,000 L.L'),
        AddsItem(
          name: "Peanut Butter\nor Hershey's",
          price: '100,000 L.L',
        ),
        AddsItem(name: 'Banana', price: '50,000 L.L'),
        AddsItem(name: 'Strawberry', price: '100,000 L.L'),
        AddsItem(name: 'Nuts', price: '50,000 L.L'),
        AddsItem(name: 'Oreo', price: '50,000 L.L'),
        AddsItem(name: 'Lotus', price: '50,000 L.L'),
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
          MenuItem(name: 'Strawberry', price: '250,000 L.L \n350,000 L.L'),
          MenuItem(name: 'oreo', price: '250,000 L.L \n350,000 L.L'),
          MenuItem(name: 'Lotus', price: '250,000 L.L \n350,000 L.L'),
          MenuItem(name: 'Chocolate', price: '250,000 L.L \n350,000 L.L'),
          MenuItem(name: 'Caramel', price: '250,000 L.L \n350,000 L.L'),
          MenuItem(name: 'Bubble Gum', price: '250,000 L.L \n350,000 L.L'),
          MenuItem(name: 'Protien Shake', price: '250,000 L.L \n350,000 L.L'),
        ]),
    Category(
      imageUrl:
          'https://cdn.iconscout.com/icon/premium/png-512-thumb/smoothie-136-745926.png?f=webp&w=256',
      name: 'Smoothies',
      ourMenuItems: [
        MenuItem(name: 'Strawberry', price: '200,000 L.L \n300,000 L.L'),
        MenuItem(name: 'Peach', price: '200,000 L.L \n300,000 L.L'),
        MenuItem(name: 'Dragon Fruit', price: '200,000 L.L \n300,000 L.L'),
        MenuItem(name: 'Lemonade', price: '200,000 L.L \n300,000 L.L'),
        MenuItem(name: 'Minted Lemonade', price: '200,000 L.L \n300,000 L.L'),
      ],
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
    ),
    Category(
        imageUrl:
            'https://www.pinclipart.com/picdir/big/335-3355980_tiramisu-b-chocolate-cake-clipart.png',
        name: 'Tiramissu Cakes',
        ourMenuItems: [
          MenuItem(name: 'Classic', price: '150,000 L.L'),
          MenuItem(name: 'Oreo', price: '180,000 L.L'),
          MenuItem(name: 'Kinder & Lotus', price: '200,000 L.L'),
        ],
        addsItems: []),
    Category(
        imageUrl:
            'https://cdn.iconscout.com/icon/premium/png-512-thumb/cheesecake-1616885-1372392.png?f=webp&w=256',
        name: 'Cheese Cakes',
        ourMenuItems: [
          MenuItem(name: 'Lotus', price: '200,000 L.L'),
          MenuItem(name: 'Snickers', price: '200,000 L.L'),
          MenuItem(name: 'Strawberry', price: '200,000 L.L'),
          MenuItem(name: 'Oreo', price: '200,000 L.L'),
          MenuItem(name: 'Kinder', price: '200,000 L.L'),
          MenuItem(name: 'Galaxy', price: '200,000 L.L'),
        ],
        addsItems: []),
    Category(
        imageUrl:
            'https://cdn.iconscout.com/icon/premium/png-512-thumb/cupcake-150-503568.png?f=webp&w=256',
        name: 'Cup',
        ourMenuItems: [
          MenuItem(name: 'Strawberry', price: '150,000 L.L\n200,000 L.L'),
          MenuItem(name: 'Cereal', price: '150,000 L.L\n200,000 L.L'),
          MenuItem(name: 'Browni', price: '150,000 L.L\n200,000 L.L'),
          MenuItem(name: 'Chocolate Mou', price: '150,000 L.L\n200,000 L.L'),
          MenuItem(name: 'Karamix', price: '150,000 L.L\n200,000 L.L'),
        ],
        addsItems: []),

    // Add more categories as needed
  ];

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
            child: GridView.count(
              crossAxisCount: 2,
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
                          children: [
                            Image.network(
                              category.imageUrl,
                              height: 70,
                              width: 70,
                            ),
                            Text(
                              category.name,
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
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
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      category.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
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
                                  Text(item.name),
                                  Text(item.price),
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
                      horizontal: 10,
                      vertical: 5,
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
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
                                Text(item.name),
                                Text(item.price),
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
