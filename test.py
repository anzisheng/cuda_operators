import torch
import cppcuda_tutorial

feats = torch.ones(3).cuda()
points = torch.zeros(3).cuda()

out = cppcuda_tutorial.trilinear_interpolation(feats, points)
print("hello22")
print(out)