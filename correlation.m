f = 0.1;
t = 0:0.01:12;
wave1 = sin(2*pi*f*t);
wave2 = sin(2*pi*f*(t+1));
wave3 = sin(2*pi*f*(t-1)) ;

point = 350;

figure
[similarity, lag] = xcorr(wave2,wave1);
plot(lag, similarity);
[~,I12] = max(abs(similarity))
hold on
[similarity, lag] = xcorr(wave3,wave1);
[~,I13] = max(abs(similarity));
plot(lag, similarity);
hold on
[similarity, lag] = xcorr(wave1);
[~,I11] = max(abs(similarity));
plot(lag, similarity);
legend("wave1, wave2", "wave1, wave3", "wave1, wave1")
hold off


figure
plot(t, wave1)
hold on
plot(t, wave3)
hold on
plot(t,wave2)
legend("wave1", "wave2", "wave3")
hold off