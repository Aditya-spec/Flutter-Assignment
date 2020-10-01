void main() {
  //List of Customers name
  var NameOfCustomers = ["Rahul", "Karan", "Ashok", "Piyush"];

// CustAddress is List of Customer's address that contains, List elements of two sets,
  //first set is Customer's Residential Address and second set is Customer's Office Address
  var CustAddress = [
    [
      {"Pitampura", "Palika"},
      {"rohini", "karol bagh"}
    ],
    [
      {"keshav puram"},
      {"welcome"}
    ],
    [
      {"Saket"},
      {"Gurugram"}
    ],
    [
      {"Rk Puram", "NehruPlace"},
      {"Noida", "Banglore"}
    ]
  ];

// Mapping Customer name to Customer's Address
  Map<String, List> Customer = {
    NameOfCustomers[0]: CustAddress[0],
    NameOfCustomers[1]: CustAddress[1],
    NameOfCustomers[2]: CustAddress[2],
    NameOfCustomers[0]: CustAddress[3]
  };

//OrderList is a list of cutomer's orders, Each order have a map of Id and list of products
//products have name and amount
  var OrderList = [
    {
      "101": [
        ["Samsung TV", 30000],
        ["Boat Airdrops", 2250]
      ]
    },
    {
      "102": [
        ["ASUS", 4022],
        ["PUMA", 500]
      ]
    },
    {
      "103": [
        ["HP Laptop", 55500],
        ["shoe", 900]
      ]
    },
    {
      "104": [
        ["Casio", 6000],
        ["Almond Oil", 300]
      ]
    }
  ];

// Mapping Customers name to Customer's Orders
  Map<String, List> CustomerOrders = {
    NameOfCustomers[0]: [OrderList[1], OrderList[0]],
    NameOfCustomers[1]: [OrderList[2]],
    NameOfCustomers[2]: [OrderList[3]]
  };

//sorting OrderList by the amount of Produts
  for (int i = 0; i < OrderList.length; i++) {
    var map = OrderList[i];

    map.forEach((k, v) {
      var temp = [];
      for (int j = 0; j < v.length; j++) {
        temp.add(v[j][1]);
      }
      temp.sort((a, b) => a - b);

      int tem = 0;
      for (int k = 0; k < temp.length; k++) {
        for (int z = 0; z < v.length; z++) {
          if (temp[k] == v[z][1]) {
            var t = v[z];
            v[z] = v[tem];
            v[tem] = t;
            tem++;
          }
        }
      }
    });
  }

  //printitng all the summery
  print(Customer);
  print(CustomerOrders);
}
