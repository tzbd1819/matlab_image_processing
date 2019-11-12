
function out = nonliner_log(Img, pra)
% 图像非线性变换
% 输入参数Img——原图像
% 输入参数pra——尺度比例系数
% 输出参数out——对数拉伸后的图像
% 参数设定
if nargin == 1
    c = 1;
else
    c = pra(1);
end
% 读入图像
I = Img;
if ndims(I) == 3
    % 转换成灰度图像
    I = rgb2gray(I);
end
figure;
subplot(2, 2, 1); imshow(Img); title('原图')
subplot(2, 2, 2); imhist(I); title('原图像直方图')
% 对数拉伸处理
out = im2uint8(mat2gray(c*log(1+double(I))));
subplot(2, 2, 3); imshow(out, []); title('对数拉伸变换图像')
subplot(2, 2, 4); imhist(out); title('对数拉伸变换图像直方图')   
[rows, cols] = size(I); % 图像维数
x = linspace(0, max(rows, cols))+1;
figure;
plot(x, log(x), 'r-')
title('对数变换曲线');
set(gca, 'xticklabel', [], 'yticklabel', []);
xlabel('f(x, y)');
ylabel('g(x, y)');
