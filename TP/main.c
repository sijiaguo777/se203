int infini(){
    int i = 1;
    while (1)
    {
    }
    return 0;
}

int fibo(int n){
    if (n == 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else {
        return fibo(n - 1) + fibo(n - 2);
    }
}

int global_var1;
int global_var2;

int main(void) {
    fibo(5);
}