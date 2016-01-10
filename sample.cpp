#include <iostream>

static_assert(std::is_same<decltype( std::cout ), std::ostream >::value, 
	"Come on now?");

int main(int , char **) {
    std::cout << "Hello CI!" << std::endl;
    return 0;
}
