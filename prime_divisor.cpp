#include <iostream>
#include <cstdlib>
using namespace std;

int helper_func(int value, int modulus, int constant) {
    return (value * constant) % modulus;
}

bool checkPrime(int number) {
    if (number == 1) return false;
    for (int j = 2; j < number; j++)
        if (number % j == 0) return false;
    return true;
}

int computeGCD(int first, int second) {
    if (first == 0) return second;
    return computeGCD(second % first, first);
}

int findPrimeDivisor(int target) {
    for (int divisor = 2; divisor < target; divisor++)
        if (target % divisor == 0 && checkPrime(divisor)) return divisor;
    return target;
}

int main(int argc, char* argv[]) {
    int input_num;
    int iterations = 1;
    
    if (argc > 1) {
        input_num = atoi(argv[1]);
    } else {
        cout << "Enter a number for simple factorization\n";
        cin >> input_num;
    }
    
    if (argc > 2) {
        iterations = atoi(argv[2]);
    }
    
    // Виконуємо кілька разів для збору профілю
    int result = 0;
    for (int i = 0; i < iterations; i++) {
        result = findPrimeDivisor(input_num);
    }
    
    cout << "simpleFactorization(" << input_num << ")=" << result << endl;
    return 0;
}

