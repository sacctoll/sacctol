import '../models/models.dart';

class AppData {
  static final List<Category> categories = [
    // 1. Ice Cream (existing, keeping all data)
    Category(
      name: 'Ice Cream',
      description: 'Ice Cream made with your favorite flavors',
      addsItems: [
        AddsItem(name: 'Toppings', price: '50,000 L.L'),
      ],
      ourMenuItems: [
        MenuItem(name: 'Small Cone', price: '100,000 L.L'),
        MenuItem(name: 'Mix Cone', price: '250,000 L.L'),
        MenuItem(name: 'One Boule', price: '100,000 L.L'),
        MenuItem(name: 'Achta Cone', price: '300,000 L.L'),
        MenuItem(name: '500 G Mix', price: '450,000 L.L'),
        MenuItem(name: '1kg Mix', price: '12.5 \$'),
        MenuItem(name: '1kg Achta', price: '14 \$'),
      ],
      imageUrl: 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=400&h=400&fit=crop&crop=center&auto=format&q=80',
    ),

    // 2. Crepe (existing, keeping all data)
    Category(
      imageUrl: 'https://images.unsplash.com/photo-1506459225024-1428097a7e18?w=400&h=400&fit=crop&crop=center&auto=format&q=80',
      name: 'Crepe',
      description: 'Crepe filled with your favorite flavors and topped with your choice of spread and toppings',
      ourMenuItems: [
        MenuItem(name: 'Nutella', price: '300,000 L.L'),
        MenuItem(name: 'Kinder', price: '350,000 L.L'),
        MenuItem(name: 'Lotus', price: '350,000 L.L'),
        MenuItem(name: "Hershey's", price: '350,000 L.L'),
        MenuItem(name: 'Dubai', price: '450,000 L.L'),
        // MenuItem(
        //     name: 'Sushi Crepe\n(Served with cup\nof Chocolate)',
        //     price: '0.8 \$'),
        MenuItem(name: 'Fettuccine', price: '450,000 L.L'),
        MenuItem(name: 'Roll Crepe', price: '500,000 L.L'),
      ],
      addsItems: [
        AddsItem(name: 'Toppings', price: '50,000 L.L'),
        AddsItem(name: 'Brownies', price: '50,000 L.L'),
        AddsItem(name: 'Fruit', price: '50,000 L.L'),
        AddsItem(name: 'Lotus Biscuit', price: '50,000 L.L'),
        AddsItem(name: 'Oreo Biscuit', price: '50,000 L.L'),
        AddsItem(name: 'Whipped Cream', price: '50,000 L.L'),
        AddsItem(name: 'Kinder Bar', price: '50,000 L.L'),
        AddsItem(name: 'Extra Chocolate on Top', price: '50,000 L.L'),
      ],
    ),

    // 3. Frappe (existing, keeping all data)
    Category(
      imageUrl: 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400&h=400&fit=crop&crop=center&auto=format&q=80',
      name: 'Frappe',
      description: 'A smooth blend of coffee, milk and your chosen flavor',
      ourMenuItems: [
        MenuItem(name: 'Caramel', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
        MenuItem(name: 'Mocha', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
        MenuItem(name: 'White Mocha', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
        MenuItem(name: 'Tiramisu', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
        MenuItem(name: 'Vanilla', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
      ],
      addsItems: [
        AddsItem(name: 'Extra Pump', price: '50,000 L.L'),
        AddsItem(name: 'Whipped\n Cream', price: '50,000 L.L'),
        AddsItem(name: 'Extra Shot Coffee', price: '50,000 L.L'),
        AddsItem(name: 'Oat Milk', price: '50,000 L.L'),
        AddsItem(name: 'Coconut Milk', price: '50,000 L.L'),
        AddsItem(name: 'Lactose Free Milk', price: '50,000 L.L'),
        AddsItem(name: 'Almond Milk', price: '50,000 L.L'),


      ],
    ),

    // 4. Milkshakes (existing, keeping all data)
    Category(
        imageUrl: 'https://images.unsplash.com/photo-1541658016709-82535e94bc69?w=400&h=400&fit=crop&crop=center&auto=format&q=80',
        name: 'Milkshakes',
        description: 'A creamy blend of milk, vanilla, flavored with your favorite choice',
        addsItems: [
          AddsItem(
            name: 'Extra Pump',
            price: '30,000 L.L',
          ),
          AddsItem(
            name: 'Whipped Cream\n on Top',
            price: '50,000 L.L',
          ),
          AddsItem(name: 'Oat Milk', price: '50,000 L.L'),
        AddsItem(name: 'Coconut Milk', price: '50,000 L.L'),
        AddsItem(name: 'Lactose Free Milk', price: '50,000 L.L'),
        AddsItem(name: 'Almond Milk', price: '50,000 L.L'),
          
        ],
        ourMenuItems: [
          MenuItem(
              name: 'Strawberry', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
          MenuItem(name: 'oreo', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
          MenuItem(name: 'Lotus', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
          MenuItem(
              name: 'Chocolate', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
          MenuItem(name: 'Caramel', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
          MenuItem(name: 'BlueBerry', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
          MenuItem(name: 'Passion Fruit', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
          MenuItem(name: 'Pistachio', price: 'M: 250,000 L.L \n L: 350,000 L.L'),

          ]),

    // 5. Juice (existing Fresh Juices, keeping all data)
    Category(
      name: 'Juice',
      description: 'Fresh juice made from your favorite fruits',
      ourMenuItems: [
        MenuItem(
            name: 'Cocktail',
            price: 'M: 200,000 L.L\n L: 300,000 L.L\n1L: 450,000 L.L'),
        MenuItem(name: 'Strawberry', price: 'M: 150,000 L.L\n L: 200,000 L.L\n1L: 350,000 L.L'),
        MenuItem(name: 'Mango', price: 'M: 200,000 L.L\n L: 300,000 L.L\n1L: 450,000 L.L'),
        MenuItem(
            name: 'Orange',
            price: 'M: 150,000 L.L\n L: 200,000 L.L\n1L: 350,000 L.L'),
        MenuItem(
            name: 'Carrot',
            price: 'M: 150,000 L.L\n L: 200,000 L.L\n1L: 350,000 L.L'),
        MenuItem(
            name: 'AMG (Carrots, Ginger, Apple)',
            price: 'M: 250,000 L.L\n L: 300,000 L.L\n'),
        MenuItem(
            name: 'Stress Down (Strawberry, Ginger, Apple)',
            price: 'M: 250,000 L.L\n L: 300,000 L.L\n'),
        MenuItem(
            name: 'Iron Man (Kiwi, Strawberry, Apple)',
            price: 'M: 250,000 L.L\n L: 300,000 L.L\n'),
        MenuItem(
            name: 'Tropi Cool (Passion Fruit, PineApple, Apple)',
            price: 'M: 250,000 L.L\n L: 300,000 L.L\n'),
        MenuItem(
            name: 'Pure Boost (Strawberry, Banana, Apple)',
            price: 'M: 250,000 L.L\n L: 300,000 L.L\n'),
        
      ],
      imageUrl: 'https://images.unsplash.com/photo-1600271886742-f049cd451bba?w=400&h=400&fit=crop&crop=center&auto=format&q=80',
      addsItems: [AddsItem(name: ' ', price: ' ')],
    ),

    // 6. Cup's (existing Cup, keeping all data)
    Category(
        imageUrl: 'https://images.unsplash.com/photo-1587668178277-295251f900ce?w=400&h=400&fit=crop&crop=center&auto=format&q=80',
        name: 'Cup\'s',
        description: 'Sweet cups based on your favorite flavor',
        ourMenuItems: [
          MenuItem(name: 'Browni', price: 'S: 200,000 L.L\nM: 250,000 L.L\nL: 300,000 L.L'),
          MenuItem(name: 'Chocolate Mou', price: 'M: 250,000 L.L\nL: 350,000 L.L'),
          MenuItem(name: 'Cereal', price: 'S: 200,000 L.L\nM: 250,000 L.L\nL: 300,000 L.L'),
          MenuItem(name: 'Strawberry', price: 'S: 200,000 L.L\nM: 250,000 L.L\nL: 300,000 L.L'),
          MenuItem(name: 'Oreo', price: 'M: 250,000 L.L\nL: 350,000 L.L'),
          MenuItem(name: 'Kinder', price: 'M: 250,000 L.L\nL: 350,000 L.L'),
        ],
        addsItems: [
          AddsItem(
            name: 'Whipped Cream',
            price: '50,000 L.L',
          ),
          AddsItem(
            name: 'Oreo/Lotus Biscuit',
            price: '50,000 L.L',
          ),
          AddsItem(
            name: 'Extra Pump',
            price: '50,000 L.L',
          ),
        ]),

    // 7. Mini Pancake
    Category(
      imageUrl: 'https://images.unsplash.com/photo-1528207776546-365bb710ee93?w=400&h=400&fit=crop&crop=center&auto=format&q=80',
      name: 'Mini Pancake',
      description: 'Mini pancakes served with your favorite toppings',
      ourMenuItems: [
      MenuItem(name: 'Served with 2 Spereads From Your Choice', price: ''),
      MenuItem(name: '8 pieces', price: '250,000 L.L'),
      MenuItem(name: '12 pieces', price: '350,000 L.L'),
      MenuItem(name: '16 pieces', price: '450,000 L.L'),
      MenuItem(name: '24 pieces', price: '650,000 L.L'),

      ],
      addsItems: [
        AddsItem(
            name: 'Fruits',
            price: '50,000 L.L',
          ),
        AddsItem(
            name: 'Oreo/Lotus Biscuit',
            price: '50,000 L.L',
          ),
        AddsItem(
            name: '4 Kinder Bars',
            price: '100,000 L.L',
          ),
        AddsItem(
            name: 'Add Spread',
            price: '50,000 L.L',
          ),
          ],
    ),

    // 8. Smoothies (with provided items)
    Category(
      imageUrl: 'https://images.unsplash.com/photo-1610970881699-44a5587cabec?w=400&h=400&fit=crop&crop=center&auto=format&q=80',
      name: 'Smoothies',
      description: 'Smoothies made with your favorite flavor & Ice',
      ourMenuItems: [
        MenuItem(name: 'Strawberry', price: 'M: 200,000 L.L \n L: 300,000 L.L'),
        MenuItem(name: 'Blueberry', price: 'M: 200,000 L.L \n L: 300,000 L.L'),

        MenuItem(name: 'Peach', price: 'M: 200,000 L.L \n L: 300,000 L.L'),
        MenuItem(
            name: 'Passion Fruit', price: 'M: 200,000 L.L \n L: 300,000 L.L'),
        MenuItem(name: 'Lemonade', price: 'M: 200,000 L.L \n L: 300,000 L.L'),
        MenuItem(
            name: 'Minted\nLemonade',
            price: 'M: 200,000 L.L \n L: 300,000 L.L'),
      ],
      addsItems: [
      ],
    ),

    // 9. Iced Coffee
    Category(
      imageUrl: 'https://images.unsplash.com/photo-1517701604599-bb29b565090c?w=400&h=400&fit=crop&crop=center&auto=format&q=80',
      name: 'Iced Coffee',
      description: 'Iced Coffee made with Coffee, milk and your favorite flavor',
      ourMenuItems: [
      MenuItem(name: 'Vanilla', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
      MenuItem(name: 'Mocha', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
      MenuItem(name: 'Spanish', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
      MenuItem(name: 'White Mocha', price: 'M: 250,000 L.L \n L: 350,000 L.L'),
      MenuItem(name: 'Caramel', price: 'M: 250,000 L.L \n L: 350,000 L.L'),

      ],
      addsItems: [
        AddsItem(
            name: 'Extra Shot Coffee',
            price: '50,000 L.L',
          ),
        AddsItem(
            name: 'Extra Pump',
            price: '50,000 L.L',
          ),
        AddsItem(
            name: 'Whipped Cream',
            price: '50,000 L.L',
          ),
        AddsItem(
            name: 'Oat Milk',
            price: '50,000 L.L',
          ),
        AddsItem(
            name: 'Coconut Milk',
            price: '50,000 L.L',
          ),
        AddsItem(
            name: 'Lactose Free Milk',
            price: '50,000 L.L',
          ),
        AddsItem(
            name: 'Almond Milk',
            price: '50,000 L.L',
          ),
      ],
    ),

    // 10. Matcha
    Category(
      imageUrl: 'https://images.unsplash.com/photo-1515823662972-da6a2e4d3002?w=400&h=400&fit=crop&crop=center&auto=format&q=80',
      name: 'Matcha',
      description: 'Matcha made with milk and your favorite flavor',
      ourMenuItems: [
        MenuItem(name: 'Ice Matcha', price: 'M: 300,000 L.L \n L: 400,000 L.L'),
        MenuItem(name: 'Matcha Frappe', price: 'M: 350,000 L.L \n L: 450,000 L.L'),
        MenuItem(name: 'Strawberry Ice Matcha', price: 'M: 350,000 L.L \n L: 450,000 L.L'),
        MenuItem(name: 'Blueberry Ice Matcha', price: 'M: 350,000 L.L \n L: 450,000 L.L'),
        MenuItem(name: 'Hot Matcha', price: 'M: 300,000 L.L \n L: 400,000 L.L'),


      ],
      addsItems: [
        AddsItem(
            name: 'Whipped Cream',
            price: '50,000 L.L',
          ),
        AddsItem(
            name: 'Oat Milk',
            price: '50,000 L.L',
          ),
        AddsItem(
            name: 'Coconut Milk',
            price: '50,000 L.L',
          ),
        AddsItem(
            name: 'Lactose Free Milk',
            price: '50,000 L.L',
          ),
        AddsItem(
            name: 'Almond Milk',
            price: '50,000 L.L',
          ),
      ],
    ),

    // 11. Hot drinks (existing, keeping all data)
    Category(
      imageUrl: 'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=400&h=400&fit=crop&crop=center&auto=format&q=80',
      name: 'Hot drinks',
      description: 'A warm drink made to enjoy any way you like',
      ourMenuItems: [
        MenuItem(
          name: 'Espresso',
          price: '50,000 L.L',
        ),
        MenuItem(name: 'Nescaffe', price: '100,000 L.L'),
        MenuItem(name: 'Hot Chocolate', price: '100,000 L.L'),
        MenuItem(name: 'Latte', price: '200,000 L.L'),
        MenuItem(name: 'Spanish Latte', price: '200,000 L.L'),
        MenuItem(name: 'Tea', price: '50,000 L.L'),
      ],
      addsItems: [
        AddsItem(name: 'Extra Pump', price: '50,000 L.L'),
        AddsItem(name: 'Shot Espresso', price: '50,000 L.L'),
      ],
    ),

    // 12. Boxes
    Category(
      imageUrl: 'https://images.unsplash.com/photo-1549465220-1a8b9238cd48?w=400&h=400&fit=crop&crop=center&auto=format&q=80',
      name: 'Boxes',
      description: 'Sweet Boxes made with your favorite treats',
      ourMenuItems: [
        MenuItem(name: 'Brownie Box', price: '450,000 L.L'),
        MenuItem(name: 'Happiness Box', price: '600,000 L.L'),

      ],
      addsItems: [],
    ),

    // 13. Protein Shakes
    Category(
      imageUrl: 'https://images.unsplash.com/photo-1622597467836-f3285f2131b8?w=400&h=400&fit=crop&crop=center&auto=format&q=80',
      name: 'Protein Shakes',
      description: 'Protein Shake made with your favorite flavors',
      ourMenuItems: [
        MenuItem(name: 'Gym Shake', price: '200,000 L.L'),
        MenuItem(name: 'Max Gain Shake\n Strawberry, Banana, Milk, Protein', price: '300,000 L.L'),
        MenuItem(name: 'Beast Mode Shake\n Peanut Butter, Tamr, Nuts,\nProtein, Honey, Milk, Shofen', price: '350,000 L.L'),


      ],
      addsItems: [],
    ),

    // 14. Sandwiches
    Category(
      imageUrl: 'https://images.unsplash.com/photo-1539252554453-80ab65ce3586?w=400&h=400&fit=crop&crop=center&auto=format&q=80',
      name: 'Sandwiches',
      description: 'Stay Tuned... Coming Soon',
      ourMenuItems: [],
      addsItems: [],
    ),
  ];
}