#include <thrust/device_vector.h>
#include <thrust/generate.h>
#include <thrust/host_vector.h>
#include <thrust/sort.h>

void sortThrust(uint32_t *in, int n, uint32_t *out) {
  thrust::device_vector<uint32_t> dv_out(in, in + n);
  thrust::sort(dv_out.begin(), dv_out.end());
  thrust::copy(dv_out.begin(), dv_out.end(), out);
}