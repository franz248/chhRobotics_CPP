以A_Star为例，单独编译库
方式一：通过cmake编译+运行
编写CMakeList.txt文件，
mkdir build
cd build
cmake ..
make
编译完成后通过./astar_demo运行
方式二：通过命令行编译+运行
g++ -I/usr/include/python3.8 -I/usr/include/eigen3 -o astar_program main.cpp Astar.cpp -lpython3.8
注：-lpython3.8一定要放最后
方式三：写.sh文件运行
cd A_Star
sh astar.sh