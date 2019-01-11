clear all;
close all;
clc;
SNR=0:30;
a=1;
while a>0
    disp(' ________________________________________________ ')
    disp('|-------------------WELCOME----------------------|')
    disp('|                  1. Data_1                     |')
    disp('|                  2. Data_2                     |')
    disp('|                  3. Data_3                     |')
    disp('|                  4. Data_4                     |')
    disp('|                  5. Data_1&2                   |')
    disp('|                  6. Data_1&3                   |')
    disp('|                  7. Data_1&4                   |')
    disp('|                  8. Data_2&3                   |')
    disp('|                  9. Data_2&4                   |')
    disp('|                 10. Data_3&4                   |')
    disp('|                 11. Data_1&2&3                 |')
    disp('|                 12. Data_1&2&4                 |')
    disp('|                 13. Data_2&3&4                 |')
    disp('|                 14. Data_1&3&4                 |')
    disp('|                 15. Data_1&2&3&4               |')
    disp('|                 16. Performance Comparison     |')
    disp('|                                                |')
    disp('|          Press Any Other Key to Exit           |')
    disp('|________________________________________________|')
    in=input('|-----------PLEASE ENTER THE RESPONSE------------|\n');
    if in==1   
        [b_err16,rec_data16,cap16]=M_16();
        figure
        subplot(3,1,1)
        semilogy(SNR,b_err16);
        grid;
        title('Data_1 Error Rate');
        ylabel('BER');
        xlabel('SNR(dB)');
        subplot(3,1,2)
        stem(rec_data16);
        subplot(3,1,3)
        semilogy(SNR,cap16);
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=1','Location','Southwest')
    elseif in==2
        [b_err64,rec_data64,cap64]=M_64();
        figure
        subplot(3,1,1)
        semilogy(SNR,b_err64);
        grid;
        title('Data_2 Error Rate');
        ylabel('BER');
        xlabel('SNR(dB)') 
        subplot(3,1,2)
        stem(rec_data64);
        subplot(3,1,3)
        semilogy(SNR,cap64);
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=1','Location','Southwest')
    elseif in==3
        [b_err128,rec_data128,cap128]=M_128();
        figure
        subplot(3,1,1)
        semilogy(SNR,b_err128);
        grid;
        title('Data_3 Error Rate');
        ylabel('BER');
        xlabel('SNR(dB)')  
        subplot(3,1,2)
        stem(rec_data128);
        subplot(3,1,3)
        semilogy(SNR,cap128);
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=1','Location','Southwest')
    elseif in==4
        [b_err256,rec_data256,cap256]=M_256();
        figure
        subplot(3,1,1)
        semilogy(SNR,b_err256);
        grid;
        title('Data_4 Error Rate');
        ylabel('BER');
        xlabel('SNR(dB)')
        subplot(3,1,2)
        stem(rec_data256);
        subplot(3,1,3)
        semilogy(SNR,cap256);
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=1','Location','Southwest')
    elseif in==5 
        [b_err16,rec_data16,cap16]=M_16();
        [b_err64,rec_data64,cap64]=M_64();
        figure
        semilogy(SNR,b_err16,'m');
        hold on
        semilogy(SNR,b_err64,'r');
        hold off
        grid;
        title('DCO OFDM (BER.VS.SNR) Plot');
        ylabel('BER');
        xlabel('SNR(dB)');
        legend('16QAM','64QAM','Location','Southwest')
        figure
        subplot(2,1,1)
        stem(rec_data16);
        subplot(2,1,2)
        stem(rec_data64);
        figure
        semilogy(SNR,cap16+cap64,'m');
        grid;
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=2','Location','Southwest')
    elseif in==6
        [b_err16,rec_data16,cap16]=M_16();
        [b_err128,rec_data128,cap128]=M_128();
        figure
        semilogy(SNR,b_err16,'m');
        hold on
        semilogy(SNR,b_err128,'g');
        hold off
        grid;
        title('DCO OFDM (BER.VS.SNR) Plot');
        ylabel('BER');
        xlabel('SNR(dB)');
        legend('16QAM','128QAM','Location','Southwest')
        figure
        subplot(2,1,1)
        stem(rec_data16);
        subplot(2,1,2)
        stem(rec_data128);
        figure
        semilogy(SNR,cap16+cap128,'m');
        grid;
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=2','Location','Southwest')
    elseif in==7
        [b_err16,rec_data16,cap16]=M_16();
        [b_err256,rec_data256,cap256]=M_256();
        figure
        semilogy(SNR,b_err16,'m');
        hold on
        semilogy(SNR,b_err256,'b');
        hold off
        grid;
        title('DCO OFDM (BER.VS.SNR) Plot');
        ylabel('BER');
        xlabel('SNR(dB)');
        legend('16QAM','256QAM','Location','Southwest')
        figure
        subplot(2,1,1)
        stem(rec_data16);
        subplot(2,1,2)
        stem(rec_data256);
        figure
        semilogy(SNR,cap16+cap256,'m');
        grid;
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=2','Location','Southwest')
    elseif in==8
        [b_err64,rec_data64,cap64]=M_64();
        [b_err128,rec_data128,cap128]=M_128();
        figure
        semilogy(SNR,b_err64,'r');
        hold on
        semilogy(SNR,b_err128,'g');
        hold off
        grid;
        title('DCO OFDM (BER.VS.SNR) Plot');
        ylabel('BER');
        xlabel('SNR(dB)');
        legend('64QAM','128QAM','Location','Southwest')
        figure
        subplot(2,1,1)
        stem(rec_data64);
        subplot(2,1,2)
        stem(rec_data128);
        figure
        semilogy(SNR,cap64+cap128,'m');
        grid;
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=2','Location','Southwest')
    elseif in==9
        [b_err64,rec_data64,cap64]=M_64();
        [b_err256,rec_data256,cap256]=M_256();
        figure
        semilogy(SNR,b_err64,'r');
        hold on
        semilogy(SNR,b_err256,'b');
        hold off
        grid;
        title('DCO OFDM (BER.VS.SNR) Plot');
        ylabel('BER');
        xlabel('SNR(dB)');
        legend('64QAM','256QAM','Location','Southwest')
        figure
        subplot(2,1,1)
        stem(rec_data64);
        subplot(2,1,2)
        stem(rec_data256);
        figure
        semilogy(SNR,cap64+cap256,'m');
        grid;
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=2','Location','Southwest')
    elseif in==10
        [b_err128,rec_data128,cap128]=M_128();
        [b_err256,rec_data256,cap256]=M_256();
        figure
        semilogy(SNR,b_err128,'g');
        hold on
        semilogy(SNR,b_err256,'b');
        hold off
        grid;
        title('DCO OFDM (BER.VS.SNR) Plot');
        ylabel('BER');
        xlabel('SNR(dB)');
        legend('128QAM','256QAM','Location','Southwest')
        figure
        subplot(2,1,1)
        stem(rec_data128);
        subplot(2,1,2)
        stem(rec_data256);
        figure
        semilogy(SNR,cap128+cap256,'m');
        grid;
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=2','Location','Southwest')
    elseif in==11
        [b_err16,rec_data16,cap16]=M_16();
        [b_err64,rec_data64,cap64]=M_64();
        [b_err128,rec_data128,cap128]=M_128();
        figure
        semilogy(SNR,b_err16,'m');
        hold on
        semilogy(SNR,b_err64,'r');
        hold on
        semilogy(SNR,b_err128,'g');
        hold off
        grid;
        title('DCO OFDM (BER.VS.SNR) Plot');
        ylabel('BER');
        xlabel('SNR(dB)');
        legend('16QAM','64QAM','128QAM','Location','Southwest')
        figure
        subplot(3,1,1)
        stem(rec_data16);
        subplot(3,1,2)
        stem(rec_data64);
        subplot(3,1,3)
        stem(rec_data128);
        figure
        semilogy(SNR,cap16+cap64+cap128,'m');
        grid;
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=3','Location','Southwest')
    elseif in==12
        [b_err16,rec_data16,cap16]=M_16();
        [b_err64,rec_data64,cap64]=M_64();
        [b_err256,rec_data256,cap256]=M_256();
        figure
        semilogy(SNR,b_err16,'m');
        hold on
        semilogy(SNR,b_err64,'r');
        hold on
        semilogy(SNR,b_err256,'b');
        hold off
        grid;
        title('DCO OFDM (BER.VS.SNR) Plot');
        ylabel('BER');
        xlabel('SNR(dB)');
        legend('16QAM','64QAM','256QAM','Location','Southwest')
        figure
        subplot(3,1,1)
        stem(rec_data16);
        subplot(3,1,2)
        stem(rec_data64);
        subplot(3,1,3)
        stem(rec_data256);
        figure
        semilogy(SNR,cap16+cap64+cap256,'m');
        grid;
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=3','Location','Southwest')
    elseif in==13
        [b_err64,rec_data64,cap64]=M_64();
        [b_err128,rec_data128,cap128]=M_128();
        [b_err256,rec_data256,cap256]=M_256();
        figure
        semilogy(SNR,b_err64,'r');
        hold on
        semilogy(SNR,b_err128,'g');
        hold on
        semilogy(SNR,b_err256,'b');
        grid;
        title('DCO OFDM (BER.VS.SNR) Plot');
        ylabel('BER');
        xlabel('SNR(dB)');
        legend('64QAM','128QAM','256QAM','Location','Southwest')
        figure
        subplot(3,1,1)
        stem(rec_data64);
        subplot(3,1,2)
        stem(rec_data128);
        subplot(3,1,3)
        stem(rec_data256);
        figure
        semilogy(SNR,cap64+cap128+cap256,'m');
        grid;
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=3','Location','Southwest')
    elseif in==14
        [b_err16,rec_data16,cap16]=M_16();
        [b_err128,rec_data128,cap128]=M_128();
        [b_err256,rec_data256,cap256]=M_256();
        figure
        semilogy(SNR,b_err16,'m');
        hold on
        semilogy(SNR,b_err128,'g');
        hold on
        semilogy(SNR,b_err256,'b');
        grid;
        title('DCO OFDM (BER.VS.SNR) Plot');
        ylabel('BER');
        xlabel('SNR(dB)');
        legend('16QAM','128QAM','256QAM','Location','Southwest')
        figure
        subplot(3,1,1)
        stem(rec_data16);
        subplot(3,1,2)
        stem(rec_data128);
        subplot(3,1,3)
        stem(rec_data256);
        figure
        semilogy(SNR,cap16+cap128+cap256,'m');
        grid;
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=3','Location','Southwest')
    elseif in==15
        [b_err16,rec_data16,cap16]=M_16();
        [b_err64,rec_data64,cap64]=M_64();
        [b_err128,rec_data128,cap128]=M_128();
        [b_err256,rec_data256,cap256]=M_256();
        figure
        semilogy(SNR,b_err16,'m');
        hold on
        semilogy(SNR,b_err64,'r');
        hold on
        semilogy(SNR,b_err128,'g');
        hold on
        semilogy(SNR,b_err256,'b');
        grid;
        title('DCO OFDM (BER.VS.SNR) Plot');
        ylabel('BER');
        xlabel('SNR(dB)');
        legend('16QAM','64QAM','128QAM','256QAM','Location','Southwest')
        figure
        subplot(4,1,1)
        stem(rec_data16);
        subplot(4,1,2)
        stem(rec_data64);
        subplot(4,1,3)
        stem(rec_data128);
        subplot(4,1,4)
        stem(rec_data256);
        figure
        semilogy(SNR,cap16+cap64+cap128+cap256,'b');
        grid;
        title('DCO OFDM (CAPACITY.VS.SNR) Plot');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('Users=4','Location','Southwest')
    elseif in==16
        [b_err16,rec_data16,cap16]=M_16();
        [b_err64,rec_data64,cap64]=M_64();
        [b_err128,rec_data128,cap128]=M_128();
        [b_err256,rec_data256,cap256]=M_256();
        figure
        plot(SNR,cap16,'b');
        hold on
        plot(SNR,cap16+cap64,'r');
        hold on
        plot(SNR,cap16+cap64+cap128,'g');
        hold on
        plot(SNR,cap16+cap64+cap128+cap256,'m');
        grid;
        title('(CAPACITY PERFORMANCE.VS.SNR) Plot For M Users');
        ylabel('Capacity');
        xlabel('SNR(dB)');
        legend('M=1','M=2','M=3','M=4')
    else
        a=0;
        disp('Wrong Choice.....Exiting....!!!')
        in1=input('Press Any Key to continue');
    end    
end
function [b16,r16,cap16]=M_16()
L=1024;
h_MIMO1 = (randn(1,1)+1j*randn(1,1))/sqrt(2);
[u1,E1,v1]=svd(h_MIMO1);
e1=diag(E1);
y1=sort(e1.*e1);
yo1=1/(1+(1/y1(1)));
Tx_data16=randi([0 15],1,L);
mod_data16=qammod(Tx_data16,16);
herm_sym16=[0 mod_data16 0 fliplr(conj(mod_data16))].*v1;
am16=ifft(herm_sym16);
cp16=randintrlv([am16(1800:2050) am16],17);
cp_16=cp16.*h_MIMO1;
b_err16=zeros(1,30);
cap16=zeros(1,31);
for snr=1:31
    noisy16=randdeintrlv(awgn(cp_16,snr,'measured'),17);
    cpr16=noisy16(252:2301);
    aaa=(cpr16.*conj(u1))./e1;
    amdemod16=fft(real(aaa));
    rec_data16=qamdemod(amdemod16(2:1025),16);
    c16=0;
    d16=0;
    for i=1:1024
        if rec_data16(i)==Tx_data16(i)
            c16=c16+1;
        else
            d16=d16+1;
        end
    end
    b_err16(snr)=d16/(c16+d16);
    cap16(snr)=cap16(snr)+log2(1+(snr*y1(1))/yo1);
end
b16=b_err16;
r16=rec_data16;
end
function [b64,r64,cap64]=M_64()
L=1024;
h_MIMO2 = (randn(1,1)+1j*randn(1,1))/sqrt(2);
[u2,E2,v2]=svd(h_MIMO2);
e2=diag(E2);
y2=sort(e2.*e2);
yo2=1/(1+(1/y2(1)));
Tx_data64=randi([0 63],1,L);
mod_data64=qammod(Tx_data64,64);
herm_sym64=[0 mod_data64 0 fliplr(conj(mod_data64))].*v2;
am64=ifft(herm_sym64);
cp64=randintrlv([am64(1800:2050) am64],61);
cp_64=cp64.*h_MIMO2;
b_err64=zeros(1,30);
cap64=zeros(1,31);
for snr=1:31
    noisy64=randdeintrlv(awgn(cp_64,snr,'measured'),61);
    cpr64=noisy64(252:2301);
    bbb=(cpr64.*conj(u2))./e2;
    amdemod64=fft(real(bbb));
    rec_data64=qamdemod(amdemod64(2:1025),64);
    c64=0;
    d64=0;
    for i=1:1024
        if rec_data64(i)==Tx_data64(i)
            c64=c64+1;
        else
            d64=d64+1;
        end
    end
    b_err64(snr)=d64/(c64+d64);
    cap64(snr)=cap64(snr)+log2(1+(snr*y2(1))/yo2);
end
b64=b_err64;
r64=rec_data64;
end
function [b128,r128,cap128]=M_128()
L=1024;
h_MIMO3 = (randn(1,1)+1j*randn(1,1))/sqrt(2);
[u3,E3,v3]=svd(h_MIMO3);
e3=diag(E3);
y3=sort(e3.*e3);
yo3=1/(1+(1/y3(1)));
Tx_data128=randi([0 127],1,L);
mod_data128=qammod(Tx_data128,128);
herm_sym128=[0 mod_data128 0 fliplr(conj(mod_data128))].*v3;
am128=ifft(herm_sym128);
cp128=randintrlv([am128(1800:2050) am128],127);
cp_128=cp128.*h_MIMO3;
b_err128=zeros(1,30);
cap128=zeros(1,31);
for snr=1:31
    noisy128=randdeintrlv(awgn(cp_128,snr,'measured'),127);
    cpr128=noisy128(252:2301);
    ccc=(cpr128.*conj(u3))./e3;
    amdemod128=fft(real(ccc));
    rec_data128=qamdemod(amdemod128(2:1025),128);
    c128=0;
    d128=0;
    for i=1:1024
        if rec_data128(i)==Tx_data128(i)
            c128=c128+1;
        else
            d128=d128+1;
        end
    end
    b_err128(snr)=d128/(c128+d128);
    cap128(snr)=cap128(snr)+log2(1+(snr*y3(1))/yo3);
end
b128=b_err128;
r128=rec_data128;
end
function [b256,r256,cap256]=M_256()
L=1024;
h_MIMO4 = (randn(1,1)+1j*randn(1,1))/sqrt(2);
[u4,E4,v4]=svd(h_MIMO4);
e4=diag(E4);
y4=sort(e4.*e4);
yo4=1/(1+(1/y4(1)));
Tx_data256=randi([0 255],1,L);
mod_data256=qammod(Tx_data256,256);
herm_sym256=[0 mod_data256 0 fliplr(conj(mod_data256))].*v4;
am256=ifft(herm_sym256);
cp256=randintrlv([am256(1800:2050) am256],256);
cp_256=cp256.*h_MIMO4;
b_err256=zeros(1,30);
cap256=zeros(1,31);
for snr=1:31
    noisy256=randdeintrlv(awgn(cp_256,snr,'measured'),256);
    cpr256=noisy256(252:2301);
    ddd=(cpr256.*conj(u4))./e4;
    amdemod256=fft(real(ddd));
    rec_data256=qamdemod(amdemod256(2:1025),256);
    c256=0;
    d256=0;
    for i=1:1024
        if rec_data256(i)==Tx_data256(i)
            c256=c256+1;
        else
            d256=d256+1;
        end
    end
    b_err256(snr)=d256/(c256+d256);
    cap256(snr)=cap256(snr)+log2(1+(snr*y4(1))/yo4);
end
b256=b_err256;
r256=rec_data256;
end