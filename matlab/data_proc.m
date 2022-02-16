
[data, fs] = audioread('haha.wav');
file = fopen('samp_in.dat','w');
% write data to file for vhdl testbench
fprintf(file, '%d\n', round(data.*127));

f_lp = filter([0.039, 0.2422, 0.4453, 0.2422, 0.039],[1, 0, 0, 0, 0], data);
f_hp = filter([-0.0078, -0.2031, 0.6015, -0.2031, -0.0078],[1, 0, 0, 0, 0], data);

vhdlout_lp=load('samp_out_lp.dat')/127;
vhdlout_hp=load('samp_out_hp.dat')/127;

% comparing and hearing
sound(f_lp);
pause(2);
sound(vhdlout_lp);
pause(2);
sound(f_hp);
pause(2);
sound(vhdlout_hp);

e_lp = f_lp(1:end-1) - vhdlout_lp(2:end); % newline at the end of samp_in.dat
e_hp = f_lp(1:end-1) - vhdlout_hp(2:end); % newline at the end of samp_in.dat
%xe = 1:length(e_lp);
%xo = 1:length(vhdlout_lp);

%% plotting
set(0,'defaultAxesFontName', 'Ubuntu')
set(0,'defaultTextFontName', 'Ubuntu')
set(0,'defaultLineLineWidth',0.5)
set(0,'DefaultFigureColormap',autumn)

newcolors = [1.00 0.54 0.00
             0.47 0.25 0.80
             0.25 0.80 0.54];
         
colororder(newcolors)


subplot(4,2,1);
plot(data);
hold on;
plot(f_lp);
hold off;
title ("Raw WAV vs Matlab LPF");
legend('Raw', "Filtered");

subplot(4,2,2);
plot(data);
hold on;
plot(f_hp);
hold off;
title ("Raw WAV vs Matlab HPF");
legend('Raw', "Filtered");

subplot(4,2,3);
plot(data);
hold on;
plot(vhdlout_lp(2:end-1));
hold off;
title ("Raw WAV vs VHDL LPF");
legend('Raw', "Filtered");

subplot(4,2,4);
plot(data);
hold on;
plot(vhdlout_hp(2:end-1));
hold off;
title ("Raw WAV vs VHDL HPF");
legend('Raw', "Filtered");

subplot(4,2,5);
plot(f_lp);
hold on;
plot(vhdlout_lp(2:end-1));
hold off;
title ("Matlab LPF vs VHDL LPF");
legend('Raw', "Filtered");

subplot(4,2,6);
plot(f_hp);
hold on;
plot(vhdlout_hp(2:end-1));
hold off;
title ("Matlab HPF vs VHDL HPF");
legend('Raw', "Filtered");

subplot(4,2,7);
plot(e_lp);
title ("Matlab LPF vs VHDL LPF Error");
legend("Error");

subplot(4,2,8);
plot(e_hp);
title ("Matlab HPF vs VHDL HPF Error");
legend("Error");

set(gcf, 'Renderer', 'painters');
orient(gcf,'landscape')
print(gcf,'data_proc_fig','-dpdf','-fillpage')