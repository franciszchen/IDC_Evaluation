function avg_diff = rd(Rate,Decay,range,mode)

%   References:
%
%   [1] G. Bjontegaard, Calculation of average PSNR differences between
%       RD-curves (VCEG-M33)
%   [2] S. Pateux, J. Jung, An excel add-in for computing Bjontegaard metric and
%       its evolution
%   [3] VCEG-M34. http://wftp3.itu.int/av-arch/video-site/0104_Aus/VCEG-M34.xls
%
switch lower(mode)
    case 'dr'
        % PSNR method
        p = polyfit(Rate,Decay,3);

        % integration interval (fixed 20130515)
        if length(range) == 2
            min_int = max([range(1); min(Rate)]);
            max_int = min([range(2); max(Rate)]);
        else
            min_int = min(Rate);
            max_int = max(Rate);
        end
%         min_int = max([ min(lR1); min(lR2) ]);
%         max_int = min([ max(lR1); max(lR2) ]);
        

        % find integral
        p_int = polyint(p);
        int_calculation = polyval(p_int, max_int) - polyval(p_int, min_int);
        % find avg diff
        avg_diff = int_calculation/(max_int-min_int);

    case 'rd'
        % rate method
        p = polyfit(Decay,Rate,3);

        % integration interval (fixed 20130515)
        if length(range) == 2
            min_int = max([ range(1); min(Decay) ]);
            max_int = min([ range(2); max(Decay) ]);
        else
            min_int =  min(Decay);
            max_int =  max(Decay);
        end

        % find integral
        p_int = polyint(p);
        int_calculation = polyval(p_int, max_int) - polyval(p_int, min_int);
        
        p_int_base = polyint(1);
        int_calculation_base = polyval(p_int_base, max_int) - polyval(p_int_base, min_int);
        % find avg diff
%         avg_exp_diff = int_calculation/(max_int-min_int);
%         avg_diff = (exp(avg_exp_diff)-1)*100;
        avg_diff = (int_calculation - int_calculation_base)/(max_int-min_int);
        
end