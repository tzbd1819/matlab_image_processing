BW=imread('text.tif');
level=graythresh(BW);
img=im2bw(BW,level);
BW1 = bwmorph(BW,'thin',Inf);
BW2 = bwmorph(BW,'skel',Inf);
subplot(221);imshow(BW);title('原始图像');
subplot(222);imshow(img);title('二值图像');
subplot(223);imshow(BW1);title('骨架提取');
subplot(224);imshow(BW2);title('减薄图像');
