%% Test Application on Brain-heart Interactions
% Computation of TV-AR on one illustrative subject on one single EEG
% channel (Fp1) as described in the Section IV of the main document.
% EEG data are provided after the pre-processing procedure as described in
% Section IV of the main documenta
clc; clear all; close all;
load('Phys_Signals.mat')

data_EEG(1,:,:)=data_eeg;% single realization for EEG
% Plot ECG signal
figure;
subplot(2,1,1)
plot(t, data_ECG,'-b','LineWidth',2);
ymin = min(data_ECG)-0.1;
ymax = max(data_ECG)+0.1;
xlabel('Time [s]');
set(gca,'Fontsize',14);
ylabel('ECG [mV]');
xlim([201 204])

% Time-varying identification with RLS
[A_e,Su_e]=RLS_ID_AR1(data_EEG,5,0.99);
% comptation of IS
ret_e=tv_IS(A_e,Su_e);
subplot(2,1,2)
plot(t,ret_e.IS,'-b','LineWidth',2);
xlabel('Time [s]');
set(gca,'Fontsize',14);
ylabel('TV_IS [nats]');
ylim([1 3])
xlim([201 204])