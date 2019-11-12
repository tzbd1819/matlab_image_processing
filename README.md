# matlab_image_processing

## 1 灰度线性变换就是将图像中所有点的灰度按照线性灰度变换函数进行变换。
![image](img/img_1.png)
## 2 直方图均衡化通过点运算将输入图像转换为在每一级上都有相等像素点数的输出图像。按照图像概率密度函数PDF的定义：
![image](img/img_2.png)
### 通过转换公式获得：
![image](img/img_3.png)

## 多种灰度变换方法分别各选取一个合适的图像进行处理，记录灰度变换前后的图像、直方图以及相关参数。
### （1）灰度反转
### （2）对数变换
### （3）伽马校正
### （4）分段线性变换
### （5）直方图均衡化

## 3 图像的锐化与边缘提取
### 1 频率提升——将原图像与边缘信息加权；
### 2 高频增强——改变滤波模板直接实现边缘增强；
### 3 一阶算子具备梯度方向信息，但是对丰富的高频纹理信息不敏感，适合于需要对边缘后续处理的应用；
### 4 二阶算子对高频纹理信息敏感，但是无法获得边缘的梯度信息，适合于仅需要边缘位置信息的应用

### Sobel算子，Roberts算子，Laplace算子和Canny算子运算提取边缘
```
img=imread('test.bmp');% 提取图像 
figure;imshow(img);
img_0=rgb2gray(img);%  彩色图像灰度化
img_1=edge(img_0,'sobel'); %用SOBEL算子进行边缘检测 
img_2=edge(img_0,'roberts');%用Roberts算子进行边缘检测 
img_3=edge(img_0,'log'); %用log算子进行边缘检测 
img_4=edge(img_0,'canny'); %用canny算子进行边缘检测 
figure;
subplot(221);imshow(img_1);title('SOBEL算子进行边缘检测');
subplot(222);imshow(img_2);title('用Roberts算子进行边缘检测');
subplot(223);imshow(img_3);title('用log算子进行边缘检测');
subplot(224);imshow(img_4);title('用canny算子进行边缘检测');
```

### sobel算子
```
img=imread('test.bmp');
img_1=fspecial('sobel');
img_d=im2double(img);%将f转换为归一化的double类图像
img_r_1=imfilter(img_d,img_1,'replicate');%图像大小通过复制外边界的值来扩展
img_jia_1=img_d-img_r_1;img_jian_1=img_d+img_r_1;%sobel算子模板
figure;
imshow(img);title('原始图像');
figure;
subplot(121);imshow(img_jia_1);title('sobel算子边缘相加');
subplot(122);imshow(img_jian_1);title('sobel算子边缘相减');
```

### prewitt算子
```
img=imread('test.bmp');
img_2=fspecial('prewitt' );
img_d=im2double(img);%将f转换为归一化的double类图像
img_r_2=imfilter(img_d,img_2,'replicate');%图像大小通过复制外边界的值来扩展
img_jia_2=img_d-img_r_2;img_jian_2=img_d+img_r_2;%prewitt算子模板
figure;
imshow(img);title('原始图像');
figure;
subplot(121);imshow(img_jia_2);title('prewitt算子边缘相加');
subplot(122);imshow(img_jian_2);title('prewitt算子边缘相减');
```

### laplacian算子
```
img=imread('test.bmp');
img_3=fspecial('laplacian',0);
img_d=im2double(img);%将f转换为归一化的double类图像
img_r_3=imfilter(img_d,img_3,'replicate');%图像大小通过复制外边界的值来扩展
img_jia_3=img_d-img_r_3;img_jian_3=img_d+img_r_3;%laplacian算子模板
figure;
imshow(img);title('原始图像');
figure;
subplot(121);imshow(img_jia_3);title('laplacian算子边缘相加');
subplot(122);imshow(img_jian_3);title('laplacian算子边缘相减');
```




