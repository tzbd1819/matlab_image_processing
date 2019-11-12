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