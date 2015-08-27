all:
	g++ -Ofast -mavx -o lpblas_avx.out src/main.cpp
	g++ -Ofast -mavx2 -o lpblas_avx2.out src/main.cpp
	g++ -Ofast -mavx -o lpblas_auto_avx.out -D LPBLAS_AUTOVEC src/main.cpp

source:
	g++ -Ofast -mavx -S -o lpblas_avx.s src/test.cpp
	g++ -Ofast -mavx2 -S -o lpblas_avx2.s src/test.cpp
	g++ -Ofast -mavx -S -o lpblas_auto_avx.s -D LPBLAS_AUTOVEC src/test.cpp
