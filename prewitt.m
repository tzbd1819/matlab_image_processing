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