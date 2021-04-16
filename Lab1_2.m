L = imread('https://i.ibb.co/JnRMNhR/test.png');
L = rgb2gray(L);

%// New - get maximum value for image type
max_type = double(intmax(class(L)));

%// Calculate a and b
min_val = double(min(L(:)));
max_val = double(max(L(:)));
a = max_type / (max_val - min_val);
b = -(max_type*min_val) / (max_val - min_val);

%// Compute transformation
image_of_doubles = a*double(L) + b;

%// Plot the histogram - before and after
figure;
subplot(2,1,1);
[n_elements1,centers1] = hist(double(L(:)),20);
bar(centers1,n_elements1);
%// Change
xlim([0 max_type]);

subplot(2,1,2);
[n_elements2,centers2] = hist(image_of_doubles(:),20);
bar(centers2,n_elements2);
%// Change
xlim([0 max_type]);

%// New - show both images
figure; subplot(1,2,1);
imshow(L);
subplot(1,2,2);
imshow(image_of_doubles,[]);