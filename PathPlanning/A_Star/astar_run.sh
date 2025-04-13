#!/bin/bash

# 获取 Python 头文件路径
PYTHON_INCLUDE_DIR="/usr/include/python3.8"
# PYTHON_INCLUDE_DIR=$(python3-config --includes | awk '{print $1}' | sed 's/-I//')
echo "Python 头文件路径: $PYTHON_INCLUDE_DIR"   # 调试输出 Python 头文件路径

# Eigen 库路径
EIGEN_INCLUDE_DIR="/usr/include/eigen3"    # 请确认这个路径是否正确
echo "Eigen 库路径: $EIGEN_INCLUDE_DIR"    # 调试输出 Eigen 路径

# 设置编译器选项，并指定 Python 和 Eigen 的头文件路径
g++ -I$PYTHON_INCLUDE_DIR -I$EIGEN_INCLUDE_DIR -o astar_program main.cpp Astar.cpp -lpython3.8
# 检查编译是否成功
if [ $? -eq 0 ]; then
    echo "编译成功，正在运行程序..."
    ./astar_program   # 运行编译后的程序
else
    echo "编译失败！"  # 如果失败，输出失败信息
    exit 1
fi
