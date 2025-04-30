%%% fix the interpstack by shifting maps from 12 onwards

%%%% load stack
load INTERPSTACK_2021_improved

for times = 12:22
    for co2s = 1:24
    
        %%% rotate the maps
        INTERPSTACK.Tair(:,:,co2s,times) = circshift(INTERPSTACK.Tair(:,:,co2s,times),[0 24]) ;
        INTERPSTACK.runoff(:,:,co2s,times) = circshift(INTERPSTACK.runoff(:,:,co2s,times),[0 24]) ;

        
    
    end
    
        INTERPSTACK.land(:,:,times) = circshift(INTERPSTACK.land(:,:,times),[0 24]) ;
        INTERPSTACK.topo(:,:,times) = circshift(INTERPSTACK.topo(:,:,times),[0 24]) ;
        INTERPSTACK.aire(:,:,times) = circshift(INTERPSTACK.aire(:,:,times),[0 24]) ;
    
end




