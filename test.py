import torch
import cppcuda_tutorial

feats = torch.ones(2).cuda()
points = torch.zeros(2).cuda()

out = cppcuda_tutorial.trilinear_interpolation(feats, points)

print(out)