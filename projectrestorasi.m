% Program for inverse filtering in Image Restoration

close all
clear
clc

%Input image
A = imread('ganesha.jpg');
imageA = rgb2gray(A)
subplot(2,2,1), imshow(imageA);
title('Gambar Asli');

Noise_A = imnoise(imageA,"salt & pepper",0.1);
subplot(2,2,2), imshow(Noise_A), title('Hasil setelah direstorasi noise');

%%average restorasi
Output_avg = filter2(fspecial('average',3), Noise_A)/255;
subplot(2,2,3), imshow(Output_avg), title('Gambar setelah filter average');

%median restorisasi
Output_med = medfilt2(Noise_A, [3 3]);
subplot(2,2,4), imshow(Output_med), title('Hasil Restorisasi median')