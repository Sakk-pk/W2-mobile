void main() {
  // Map of pizza prices
  const pizzaPrices = {'margherita': 5.5, 'pepperoni': 7.5, 'vegetarian': 6.5};

  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple'];

  // Your code
  double total = 0;
  for (var food in order) {
    bool found = false;
    for (var entry in pizzaPrices.entries) {
      if (food == entry.key) {
        total += entry.value;
        found = true;
        break;
      }
    }
    {
      if (!found) {
        print("$food is not on menu");
      }
    }
    print('Total: $total');
  }
}
