I = imread('https://i.ibb.co/JnRMNhR/test.png');
I = rgb2gray(I);
 
[m,n] = size(I)

treshhold_1 = 190
treshhold_2 = 225;

for i=1:m
    for j=1:n
        if I(i,j)<treshhold_1
            I2(i,j)=0;
        end
        if I(i,j)>treshhold_2
            I2(i,j)=255;
        end
    end
end

figure;
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(I2);

figure;
subplot(2,1,1);
imhist(I);
subplot(2,1,2);
imhist(I2);