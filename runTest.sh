#!/bin/bash -ex
#
# Run system test.

coveralls --help

cat > foo.c <<'EOF'
int main() {
    int a = 1;
    if(a == 2) {
        a = 3;
        /* LCOV_EXCL_START */
        a = 4;
        a = 5;
        /* LCOV_EXCL_STOP */
        a = 6;
    }
    if(a == 7) {
        a = 8;
        a = 9; /* LCOV_EXCL_LINE */
    }
    return 0;
}
EOF
gcc -coverage -o foo foo.c
./foo

coveralls
