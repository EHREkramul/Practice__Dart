void main() {
  var productList = <Map<String, Object>>[
    {'name': 'Laptop', 'price': 76000},
    {'name': 'Wallet', 'price': 1200},
    {'name': 'Mouse', 'price': 4800},
  ];

  for (var item in productList) {
    print(item['name']);
  }

  Map<String, List<dynamic>> numbers = {
    'one': [1],
    'two': [2],
    'three': ['3'],
    'nums': [1,2,3,4,5],
  };

  var castedList = numbers['three'] as List;
  castedList.addAll([6,7,8]);

  print(castedList);
}
