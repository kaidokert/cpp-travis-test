int main(int , char **) {
    static volatile int dummy = 1;
    (void)dummy;
}

// Missing Linker script
extern "C" {
    int _start = 0;
}
