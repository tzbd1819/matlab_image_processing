img=imread('noisy_rectangle.tif');%原始图像
img_1=im2bw(img);%二值化
img_2=imfill(img_1,'holes');%填充图像
img_3=bwareaopen(img_2,5000);%从图像中移除小目标
subplot(221);imshow(img);title('原始图像');
subplot(222);imshow(img_1);title('二值化图像');
subplot(223);imshow(img_2);title('填充图像');
subplot(224);imshow(img_3);title('从图像中移除小目标');
