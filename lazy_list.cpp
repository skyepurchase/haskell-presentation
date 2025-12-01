#include <iostream>
#include <memory>

// Create a simple linked-list
struct Node {
  int value;                  // Value on this node
  std::shared_ptr<Node> next; // Pointer to next value
  explicit Node(int v) : value(v), next(nullptr) {}
};

int main() {
  // The two lists with relevent heads
  auto xs = std::make_shared<Node>(0);
  auto ys = std::make_shared<Node>(1);

  // Make mutually dependent
  xs->next = ys;
  ys->next = xs;

  // take 10 from 'xs'
  auto cur = xs;
  for (int i = 0; i < 10; ++i) {
    std::cout << cur->value << ' ';
    cur = cur->next;
  }
  std::cout << '\n';
}
