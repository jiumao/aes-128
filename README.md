# aes-128

### 规格
* 根据AES-128算法，使用寄存器可配的128bits密钥，对输入的128bits明文进行加密，得到128bits的输出密文。    
* 通过SPI接口配置密钥、明文后，对start寄存器写1，启动一次AES加密。start寄存器写1后，由硬件清零。   
* 硬件完成一次AES加密之后，valid寄存器置1，软件通过SPI接口将密文读回。软件每次对start寄存器写1的同时，硬件将valid寄存器清零。   
* 硬件根据输入的128bits种子密钥实时扩展得到轮密钥。S盒变换采用查找表实现。   
* 完成一次AES-128加密的时间为11个时钟周期   
   
   
### 总体设计
#### 整体框图
   
AES-128 IP整体设计框图如下。通过外部接口对IP进行配置。密钥扩展、S盒变换均由硬件逻辑完成。每个时钟周期完成1轮计算，完成一次加密需要11个时钟周期。
   
![overview](https://github.com/jiumao/aes-128/raw/master/diagram/overview.jpg)
    
#### 时序图
   
软件先配置conf、key、in寄存器，然后再对start寄存器写1，发起一次AES-128加密。硬件接受到start脉冲之后，轮计数器round_cnt开始计数，密钥扩展模块KeyExpand实时计算当前加密所需要的轮密钥，并将本轮加密结果更新到state寄存器。在完成10轮加密之后，valid信号拉高。
    
![timing](https://github.com/jiumao/aes-128/raw/master/diagram/timing.jpg)
    
#### 寄存器列表
    
![register](https://github.com/jiumao/aes-128/raw/master/diagram/register.jpg)
    
    
### 模块设计
#### 密钥扩展
   
密钥扩展模块设计框图如下，该模块输出本轮加密密钥，并计算得到下一轮加密密钥：
   
![keyexpand](https://github.com/jiumao/aes-128/raw/master/diagram/keyexpand.jpg)

上图中，输出key_out=[k0,k1,k2,k3]是用于本轮加密的密钥，[k0’,k1’,k2’,k3’]是扩展得到的下一轮加密密钥，如下：   
* k0’ = k0 ^ Subword[(Rotword(k3)) ^ Rcon   
* k1’ = k0’ ^ k1   
* k2’ = k1’ ^ k2   
* k3’ = k2’ ^ k3   

#### S盒变换
S盒变换采用查找表实现。

#### 行移位
    
S盒变换的输出经过行移位变换后，作为列混合的输入：

![shiftrow](https://github.com/jiumao/aes-128/raw/master/diagram/shiftrow.jpg)
    
#### 列混合
列混合变换以字节为单位，对状态矩阵的1列（32bits）进行计算，得到该列的更新值。列混合计算如下：   
* s0’ = xtime(s0^s1) ^s1 ^ s2 ^s3   
* s1’ = xtime(s1^s2) ^s0 ^ s2 ^s3   
* s2’ = xtime(s2^s3) ^s0 ^ s1 ^s3   
* s3’ = xtime(s0^s3) ^s0 ^ s1 ^s2   

其中， xtims操作，用移位跟异或运算完成：   

* xtime(x) = x << 1,                     如果bit7 = 0   
* xtime(x) = (x << 1) ^ 0x1b      如果bit7 = 1   





