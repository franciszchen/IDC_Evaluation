#  Integral of Decay Curve (IDC) Evaluation
Integral of Decay Curve (IDC) is an evaluation indicator to judge the efficiency of various neural network acceleration and compression algorithms, as proposed in the paper **"Deep Neural Network Acceleration Based on Low-Rank Approximated Channel Pruning"** [[paper](https://www.researchgate.net/publication/338332234_Deep_Neural_Network_Acceleration_Based_on_Low-Rank_Approximated_Channel_Pruning)] from **TCAS-I 2020**.

* Illustration  on  IDC  calculation.  The  orange  area  under the curve indicates  the  accumulation  of  relative  performance  decay  over  the  specified interval: 
<div align=center><img width="350" src=/fig/fig4.png></div>

* The examples  reveal  the rationality  and  necessity  of IDC. The dotsare samples by different  quantization  methods, and the curves are fitted with third-order  polynomials: 
<div align=center><img width="300" src=/fig/fig6_a.png>  <img width="300" src=/fig/fig6_b.png></div>

* The cubic interpolation  curves of compression samples on various networks and datasets confirm the conjecture of smooth convex functions:
<div align=center><img width="700" src=/fig/fig5.png></div>

## Citation
If you find our work useful in your research or publication, please cite our work:
```
@article{chen2020deep,
  title={Deep neural network acceleration based on low-rank approximated channel pruning},
  author={Chen, Zhen and Chen, Zhibo and Lin, Jianxin and Liu, Sen and Li, Weiping},
  journal={IEEE Transactions on Circuits and Systems I: Regular Papers},
  volume={67},
  number={4},
  pages={1232--1244},
  year={2020},
  publisher={IEEE}
}
```
## Acknowledgements
* The code template derives from BD-PSNR.
