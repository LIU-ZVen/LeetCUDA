#include <stdio.h>
#include <torch/extension.h>



/**
 * SM = streaming multiprocessor
 * L2 chache - 所有的 SM 共享
 * L1 chache - SM 内部的所有 warp 共享
 * shared memory - warp 内部的所有 thread 共享
 * local memory - thread 私有的 mem
 */
/**
 * 1 warp = 32 thread, 这个一般是一个固定值
 * 1 SM = 32~64 warp, 一个 sm 可以并发调度 32～64 个 warp
 */