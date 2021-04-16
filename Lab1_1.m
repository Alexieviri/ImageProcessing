L = imread('https://i.ibb.co/JnRMNhR/test.png');
L = rgb2gray(L);

treshhold = 212;

for i = 1:size(L,1)
    for j = 1:size(L,2)
        if L(i,j)>treshhold
            L2(i,j)=255;
        else
            L2(i,j)=0;
        end
    end
end

figure;
subplot(1,2,1);
imshow(L);
subplot(1,2,2);
imshow(L2);

figure;
subplot(2,1,1);
imhist(L);
subplot(2,1,2);
imhist(L2);