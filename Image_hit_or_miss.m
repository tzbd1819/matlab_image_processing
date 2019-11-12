img=imread('cameraman.jpg');%读取原始图像
[a,b]=imread('cameraman.jpg');%读取原始图像转换为二值图像
img_double=im2bw(a,b,0.5);
se_1= [0 1 0
      1 1 1
      0 1 0]; 
se_2= [0  1  1 0 0
       0  1  1 0 0
       0  1  1 0 0
       0  1  1 0 0
       0  1  1 0 0];

img_1=bwhitmiss(img_double,se_1);%se_1击中/击不中变换
img_2=bwhitmiss(img_double,se_2);%se_2击中/击不中变换
subplot(221);imshow(img);title('原始图像');
subplot(222);imshow(img_double);title('二值图像');
subplot(223);imshow(img_1);title('se_1击中/击不中变换');
subplot(224);imshow(img_2);title('se_2击中/击不中变换');
