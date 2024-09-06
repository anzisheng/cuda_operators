#include <torch/extension.h>
#include <iostream>

using namespace std;
torch::Tensor trilinear_interpolation(
    torch::Tensor  feats,
    torch::Tensor point 
)
{
    std::cout << "hello" << std::endl;
    return feats;

}

PYBIND11_MODULE(TORCH_EXTENSION_NAME, m){
    m.def("trilinear_interpolation", &trilinear_interpolation);
    //m.def("trilinear_interpolation_bw", &trilinear_interpolation_bw);
}
// int main()
// {
//     cout << "hello" <<endl;
//     return 0;
// }