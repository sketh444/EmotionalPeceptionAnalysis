%FaceAttractiveness_PSE 
%estimate PSE for each category across subjects
%Fma = female most attractive
%Fla = female least attractive
%Mma = male most attracive
%Mla = male least attractive

morphsFma = [1 2 3 4 5 6 7 8 9];
responsesFma = [0 0.034883721 0.282352941 0.166666667 0.388235294 0.541176471 0.78313253 0.926829268 0.909090909];
trialsFma = [15	86 85 84 85	85 83 82 11];
dataFma = [morphsFma', responsesFma', trialsFma'];
resultsFma = psignifit(dataFma, options);

figure(1)
clf
hold on
plotPsych(resultsFma)
PSE_Fma = getThreshold(resultsFma,0.5);
PSEt_Fma = (PSE_Fma-5)*10;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
morphsFla = [1 2 3 4 5 6 7 8 9];
responsesFla = [0 0.035714286 0.081395349 0.045454545 0.218390805 0.084337349 0.392857143 0.930232558 0.9375];
trialsFla = [16	84 86 88 87	83 84 86 16];
dataFla = [morphsFla', responsesFla', trialsFla'];
resultsFla = psignifit(dataFla, options);

figure(2)
clf
hold on
plotPsych(resultsFla)
PSE_Fla = getThreshold(resultsFla,0.5);
PSEt_Fla = (PSE_Fla-5)*10;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
morphsMma = [1 2 3 4 5 6 7 8 9];
responsesMma = [0.055555556	0.416666667	0.310344828	0.258823529	0.235955056	0.443037975	0.747126437	0.976744186	0.954545455];
trialsMma = [72 84 87 85 89	79 87 86 66];
dataMma = [morphsMma', responsesMma', trialsMma'];
resultsMma = psignifit(dataMma, options);

figure(3)
clf
hold on
plotPsych(resultsMma)

PSE_Mma = getThreshold(resultsMma,0.5);
PSEt_Mma = (PSE_Mma-5)*10;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
morphsMla = [1 2 3 4 5 6 7 8 9];
responsesMla = [0.014084507	0.127906977	0.282352941	0.255813953	0.255813953	0.353658537	0.329411765	0.964705882	0.985294118];
trialsMla = [72 84 87 85 89	79 87 86 66];
dataMla = [morphsMla', responsesMla', trialsMla'];
resultsMla = psignifit(dataMla, options);

figure(4)
clf
hold on
plotPsych(resultsMla)

PSE_Mla = getThreshold(resultsMla,0.5);
PSEt_Mla = (PSE_Mla-5)*10;

[PSEt_Fma PSEt_Fla PSEt_Mma PSEt_Mla]