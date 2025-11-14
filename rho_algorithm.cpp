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

int pollardRhoAlgorithm(int target_num) {
    int x_val = 2, y_val = 2, gcd_result = 1, constant = 1;
    while (gcd_result == 1 || gcd_result == target_num) {
        x_val = helper_func(x_val, target_num, constant);
        y_val = helper_func(helper_func(y_val, target_num, constant), target_num, constant);
        gcd_result = computeGCD(abs(x_val - y_val), target_num);
        if (gcd_result == target_num) constant++;
    }
    return gcd_result;
}

int main(int argc, char* argv[]) {
    int input_num;
    int iterations = 1;
    
    if (argc > 1) {
        input_num = atoi(argv[1]);
    } else {
        cout << "Enter a number for Pollard rho factorization\n";
        cin >> input_num;
    }
    
    if (argc > 2) {
        iterations = atoi(argv[2]);
    }
    
    // Виконуємо кілька разів для збору профілю
    int result = 0;
    for (int i = 0; i < iterations; i++) {
        result = pollardRhoAlgorithm(input_num);
    }
    
    cout << "pollardRhoFactorization(" << input_num << ")=" << result << endl;
    return 0;
}

