img=imread('outline.tif');%读取原始图像
se_1= strel('square',3);
se_2= [0 1 0
      1 1 1
      0 1 0]; 
se_3= [0  1  1 0 0
       0  1  1 0 0
       0  1  1 0 0
       0  1  1 0 0
       0  1  1 0 0];
%如果图像为彩色图像可先转换为灰度图像img_r=rgb2gray(img);%转换为灰度图像
img_1=imdilate(img,se_1);%膨胀处理
img_2=imerode(img,se_1);%腐蚀处理
subplot(331);imshow(img);title('原始图像');
subplot(332);imshow(img_1);title('se_1膨胀处理图像');
subplot(333);imshow(img_2);title('se_1腐蚀处理图像');
img_3=imdilate(img,se_2);%膨胀处理
img_4=imerode(img,se_2);%腐蚀处理
subplot(334);imshow(img);title('原始图像');
subplot(335);imshow(img_3);title('se_2膨胀处理图像');
subplot(336);imshow(img_4);title('se_2腐蚀处理图像');
img_5=imdilate(img,se_3);%se_3膨胀处理
img_6=imerode(img,se_3);%se_3腐蚀处理
subplot(337);imshow(img);title('原始图像');
subplot(338);imshow(img_5);title('se_3膨胀处理图像');
subplot(339);imshow(img_6);title('se_3腐蚀处理图像');