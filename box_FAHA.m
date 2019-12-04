function [strvmat_out] = box_FAHA(strvmat,r,c,l,comp)
    % mette un box per il full adder o per l'helf adder
    % r c e l partono da 1
    if comp=="HA"
        strvmat_out=box_vect_of_str(strvmat, r+(l-1)*(r*2+1), c,1,2);
    else
        strvmat_out=box_vect_of_str(strvmat, r+(l-1)*(r*2+1), c,1,3);
    end

end

