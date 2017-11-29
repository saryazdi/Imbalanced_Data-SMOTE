clear all
close all
clc
% ~~~~~~ CODE START ~~~~~~~~
Sample = importdata('Example_Imbalanced_Dataset.mat'); % Load samples that need to be oversampled
[size1 size2] = size(Sample);
% %%% DATA PREPROCESSING BEGIN ---------------------
T = sum(Sample(:,size2)); % Number of data in positive (majority) class
N = 200; % SMOTE N%
k = 5; % k for SMOTE nearest neighbor
% Oversampling using SMOTE
Synthesis = SMOTE(Sample,T,N,k); % Newly generated samples
Oversampled=[Sample;Synthesis];
% %%% DATA PREPROCESSING END -----------------------