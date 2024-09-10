#include <torch/extension.h>
#include <iostream>
using namespace std;
torch::Tensor trilinear_fw_cu(
    torch::Tensor feats,
    torch::Tensor points
){
    //N = feats.shape[0]
    const int N = 3;//feats.size(0); feats.size(0)报错，可能是 api 不这么用。
    const int F = 10;//feats.size(2);
    //const int N = feats.size(0), F = feats.size(2);
    cout << N <<" " <<F <<endl;

     //generate output tensor
    //feat_interp = torch.zeros(N, F, dtype=torch.float32, device="cuda:0")
    torch::Tensor feat_interp =  torch::zeros({N, F}, feats.options());
    //示例：都是0的output的写法
    //torch::zeros({N,F}, torch::dtype(torch::kInt32).device(feats.device));
    return feats;
}