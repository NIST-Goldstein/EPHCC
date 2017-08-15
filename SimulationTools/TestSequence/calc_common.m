function [out] = calc_common(res, seq)
    %% time vectors - based on PC time during test equecution
    t     = res.t;
    t_sek = res.t/1000;
    t_min = t_sek./60;
    
    dt_ms = diff(res.t);
    dt_sek = dt_ms/1000;
    
    t_ms_end = res.t(end);
    t_sek_end = t_ms_end/1000;
    t_min_end = t_sek_end/60;

    M = length(t);
out=wsp2struct(who);