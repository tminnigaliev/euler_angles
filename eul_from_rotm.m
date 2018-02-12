function [alpha_rad, beta_rad, gamma_rad] = eul_from_rotm(M, order)
    FLT_EPSILON = 0.000002;
    if (strcmp(order,"ZYXr") == 1)
	cy = sqrt(M(1,1)*M(1,1) + M(2,1)*M(2,1));
	if (cy > 16*FLT_EPSILON)
	    gamma_rad = atan2(M(3,2), M(3,3)); % ea.x
            beta_rad = atan2(-M(3,1), cy);      % ea.y
	    alpha_rad = atan2(M(2,1), M(1,1)); % ea.z
        else
	    gamma_rad = atan2(-M(2,3), M(2,2));% ea.x
            beta_rad  = atan2(-M(3,1), cy);     % ea.y
            alpha_rad = 0;                        % ea.z
        end
    elseif (strcmp(order,"XYXr") == 1)
        sy = sqrt(M(1,2)*M(1,2) + M(1,3)*M(1,3));
        if (sy > 16*FLT_EPSILON)
            gamma_rad = atan2(M(1,2), M(1,3));
            beta_rad  = atan2(sy, M(1,1));
            alpha_rad = atan2(M(2,1), -M(3,1));
        else
            gamma_rad = atan2(-M(2,3), M(2,2));
            beta_rad  = atan2(sy, M(1,1));
            alpha_rad = 0;
        end
    elseif (strcmp(order, "YZXr") == 1)
 	cy = sqrt(M(1,1)*M(1,1) + M(3,1)*M(3,1));
	if (cy > 16*FLT_EPSILON)
	    gamma_rad = -atan2(M(2,3), M(2,2));
	    beta_rad  = -atan2(-M(2,1), cy);
	    alpha_rad = -atan2(M(3,1), M(1,1));
	else
	    gamma_rad = -atan2(-M(3,2), M(3,3));
	    beta_rad  = -atan2(-M(2,1), cy);
	    alpha_rad = 0;
	end
    elseif (strcmp(order,"XZXr") == 1)
	sy = sqrt(M(1,3)*M(1,3) + M(1,2)*M(1,2));
	if (sy > 16*FLT_EPSILON)
	    gamma_rad = -atan2(M(1,3), M(1,2));
	    beta_rad  = -atan2(sy, M(1,1));
	    alpha_rad = -atan2(M(3,1), -M(2,1));
	else
	    gamma_rad = -atan2(-M(3,2), M(3,3));
	    beta_rad  = -atan2(sy, M(1,1));
	    alpha_rad = 0;
	end
    elseif (strcmp(order,"XZYr") == 1)
        cy = sqrt(M(2,2)*M(2,2) + M(3,2)*M(3,2));
	if (cy > 16*FLT_EPSILON)
	    gamma_rad = atan2(M(1,3), M(1,1));
	    beta_rad  = atan2(-M(1,2), cy);
	    alpha_rad = atan2(M(3,2), M(2,2));
	else
	    gamma_rad = atan2(-M(3,1), M(3,3));
	    beta_rad  = atan2(-M(1,2), cy);
	    alpha_rad = 0;
	end
    elseif (strcmp(order,"YZYr") == 1)
        sy = sqrt(M(2,3)*M(2,3) + M(2,1)*M(2,1));
        if (sy > 16*FLT_EPSILON)
            gamma_rad = atan2(M(2,3), M(2,1));
            beta_rad  = atan2(sy, M(2,2));
            alpha_rad = atan2(M(3,2), -M(1,2));
        else
            gamma_rad = atan2(-M(3,1), M(3,3));
            beta_rad  = atan2(sy, M(2,2));
            alpha_rad = 0;
        end
    elseif (strcmp(order,"ZXYr") == 1)
	cy = sqrt(M(2,2)*M(2,2) + M(1,2)*M(1,2));
        if (cy > 16*FLT_EPSILON)
	    gamma_rad = -atan2(M(3,1), M(3,3));
	    beta_rad = -atan2(-M(3,2), cy);
	    alpha_rad = -atan2(M(1,2), M(2,2));
        else
	    gamma_rad = -atan2(-M(1,3), M(1,1));
	    beta_rad = -atan2(-M(3,2), cy);
	    alpha_rad = 0;
        end
    elseif (strcmp(order,"YXYr") == 1)
        sy = sqrt(M(2,1)*M(2,1) + M(2,3)*M(2,3));
	if (sy > 16*FLT_EPSILON)
	    gamma_rad = -atan2(M(2,1), M(2,3));
	    beta_rad = -atan2(sy, M(2,2));
	    alpha_rad = -atan2(M(1,2), -M(3,2));
	else
	    gamma_rad = -atan2(-M(1,3), M(1,1));
	    beta_rad = -atan2(sy, M(2,2));
	    alpha_rad = 0;
	end
    elseif (strcmp(order,"YXZr") == 1)
        cy = sqrt(M(3,3)*M(3,3) + M(1,3)*M(1,3));
        if (cy > 16*FLT_EPSILON)
            gamma_rad = atan2(M(2,1), M(2,2));
            beta_rad  = atan2(-M(2,3), cy);
            alpha_rad = atan2(M(1,3), M(3,3));
	else
	    gamma_rad = atan2(-M(1,2), M(1,1));
	    beta_rad  = atan2(-M(2,3), cy);
	    alpha_rad = 0;
	end
    elseif (strcmp(order,"ZXZr") == 1)
	sy = sqrt(M(3,1)*M(3,1) + M(3,2)*M(3,2));
	if (sy > 16*FLT_EPSILON) 
	    gamma_rad = atan2(M(3,1), M(3,2));
	    beta_rad  = atan2(sy, M(3,3));
	    alpha_rad = atan2(M(1,3), -M(2,3));
	else
	    gamma_rad = atan2(-M(1,2), M(1,1));
	    beta_rad  = atan2(sy, M(3,3));
	    alpha_rad = 0;
	end
    elseif (strcmp(order,"XYZr") == 1)
	cy = sqrt(M(3,3)*M(3,3) + M(2,3)*M(2,3));
	if (cy > 16*FLT_EPSILON)
	    gamma_rad = -atan2(M(1,2), M(1,1));
	    beta_rad  = -atan2(-M(1,3), cy);
	    alpha_rad = -atan2(M(2,3), M(3,3));
	else
	    gamma_rad = -atan2(-M(2,1), M(2,2));
	    beta_rad  = -atan2(-M(1,3), cy);
	    alpha_rad = 0;
	end
    elseif (strcmp(order,"ZYZr") == 1)
	sy = sqrt(M(3,2)*M(3,2) + M(3,1)*M(3,1));
	if (sy > 16*FLT_EPSILON)
	    gamma_rad = -atan2(M(3,2), M(3,1));
	    beta_rad  = -atan2(sy, M(3,3));
	    alpha_rad = -atan2(M(2,3), -M(1,3));
	else
	    gamma_rad = -atan2(-M(2,1), M(2,2));
	    beta_rad  = -atan2(sy, M(3,3));
	    alpha_rad = 0;
        end
    elseif (strcmp(order,"ZYXs") == 1)
	cy = sqrt(M(3,3)*M(3,3) + M(2,3)*M(2,3));
	if (cy > 16*FLT_EPSILON)
	    alpha_rad = -atan2(M(1,2), M(1,1));
	    beta_rad  = -atan2(-M(1,3), cy);
	    gamma_rad = -atan2(M(2,3), M(3,3));
	else
	    alpha_rad = -atan2(-M(2,1), M(2,2));
	    beta_rad  = -atan2(-M(1,3), cy);
	    gamma_rad = 0;
	end
    elseif (strcmp(order,"XYXs") == 1)
	sy = sqrt(M(1,2)*M(1,2) + M(1,3)*M(1,3));
	if (sy > 16*FLT_EPSILON)
	    alpha_rad = atan2(M(1,2), M(1,3));
	    beta_rad  = atan2(sy, M(1,1));
	    gamma_rad = atan2(M(2,1), -M(3,1));
        else
	    alpha_rad = atan2(-M(2,3), M(2,2));
	    beta_rad  = atan2(sy, M(1,1));
	    gamma_rad = 0;
        end
    elseif (strcmp(order,"YZXs") == 1)
	cy = sqrt(M(2,2)*M(2,2) + M(3,2)*M(3,2));
	if (cy > 16*FLT_EPSILON)
	    alpha_rad = atan2(M(1,3), M(1,1));
	    beta_rad  = atan2(-M(1,2), cy);
	    gamma_rad = atan2(M(3,2), M(2,2));
	else
	    alpha_rad = atan2(-M(3,1), M(3,3));
	    beta_rad  = atan2(-M(1,2), cy);
	    gamma_rad = 0;
	end
    elseif (strcmp(order,"XZXs") == 1)
	sy = sqrt(M(1,3)*M(1,3) + M(1,2)*M(1,2));
	if (sy > 16*FLT_EPSILON)
	    alpha_rad = -atan2(M(1,3), M(1,2));
	    beta_rad  = -atan2(sy, M(1,1));
	    gamma_rad = -atan2(M(3,1), -M(2,1));
	else
	    alpha_rad = -atan2(-M(3,2), M(3,3));
	    beta_rad  = -atan2(sy, M(1,1));
	    gamma_rad = 0;
        end

    elseif (strcmp(order,"XZYs") == 1)
	cy = sqrt(M(1,1)*M(1,1) + M(3,1)*M(3,1));
	if (cy > 16*FLT_EPSILON)
	    alpha_rad = -atan2(M(2,3), M(2,2));
	    beta_rad  = -atan2(-M(2,1), cy);
	    gamma_rad = -atan2(M(3,1), M(1,1));
	else
	    alpha_rad = -atan2(-M(3,2), M(3,3));
	    beta_rad  = -atan2(-M(2,1), cy);
	    gamma_rad = 0;
	end
    elseif (strcmp(order,"YZYs") == 1)
	sy = sqrt(M(2,3)*M(2,3) + M(2,1)*M(2,1));
	if (sy > 16*FLT_EPSILON)
	    alpha_rad = atan2(M(2,3), M(2,1));
	    beta_rad  = atan2(sy, M(2,2));
	    gamma_rad = atan2(M(3,2), -M(1,2));
	else
	    alpha_rad = atan2(-M(3,1), M(3,3));
	    beta_rad  = atan2(sy, M(2,2));
	    gamma_rad = 0;
	end
    elseif (strcmp(order,"ZXYs") == 1)
	cy = sqrt(M(3,3)*M(3,3) + M(1,3)*M(1,3));
	if (cy > 16*FLT_EPSILON)
	    alpha_rad = atan2(M(2,1), M(2,2));
	    beta_rad = atan2(-M(2,3), cy);
	    gamma_rad = atan2(M(1,3), M(3,3));
	else
	    alpha_rad = atan2(-M(1,2), M(1,1));
	    beta_rad = atan2(-M(2,3), cy);
	    gamma_rad = 0;
        end
    elseif (strcmp(order,"YXYs") == 1)
	sy = sqrt(M(2,1)*M(2,1) + M(2,3)*M(2,3));
	if (sy > 16*FLT_EPSILON)
	    alpha_rad = -atan2(M(2,1), M(2,3));
	    beta_rad  = -atan2(sy, M(2,2));
	    gamma_rad = -atan2(M(1,2), -M(3,2));
	else
	    alpha_rad = -atan2(-M(1,3), M(1,1));
	    beta_rad  = -atan2(sy, M(2,2));
	    gamma_rad = 0;
	end
    elseif (strcmp(order,"YXZs") == 1)
	cy = sqrt(M(2,2)*M(2,2) + M(1,2)*M(1,2));
	if (cy > 16*FLT_EPSILON)
	    alpha_rad = -atan2(M(3,1), M(3,3));
	    beta_rad  = -atan2(-M(3,2), cy);
	    gamma_rad = -atan2(M(1,2), M(2,2));
	else
	    alpha_rad = -atan2(-M(1,3), M(1,1));
	    beta_rad  = -atan2(-M(3,2), cy);
	    gamma_rad = 0;
        end
    elseif (strcmp(order,"ZXZs") == 1)
	sy = sqrt(M(3,1)*M(3,1) + M(3,2)*M(3,2));
	if (sy > 16*FLT_EPSILON)
	    alpha_rad = atan2(M(3,1), M(3,2));
	    beta_rad  = atan2(sy, M(3,3));
	    gamma_rad = atan2(M(1,3), -M(2,3));
	else
	    alpha_rad = atan2(-M(1,2), M(1,1));
	    beta_rad  = atan2(sy, M(3,3));
	    gamma_rad = 0;
        end
    elseif (strcmp(order,"XYZs") == 1)
	cy = sqrt(M(1,1)*M(1,1) + M(2,1)*M(2,1));
	if (cy > 16*FLT_EPSILON)
	    alpha_rad = atan2(M(3,2), M(3,3));
	    beta_rad  = atan2(-M(3,1), cy);
	    gamma_rad = atan2(M(2,1), M(1,1));
	else
	    alpha_rad = atan2(-M(2,3), M(2,2));
	    beta_rad  = atan2(-M(3,1), cy);
	    gamma_rad = 0;
        end
    elseif (strcmp(order,"ZYZs") == 1)
	sy = sqrt(M(3,2)*M(3,2) + M(3,1)*M(3,1));
	if (sy > 16*FLT_EPSILON)
	    alpha_rad = -atan2(M(3,2), M(3,1));
	    beta_rad  = -atan2(sy, M(3,3));
	    gamma_rad = -atan2(M(2,3), -M(1,3));
	else
	    alpha_rad = -atan2(-M(2,1), M(2,2));
	    beta_rad  = -atan2(sy, M(3,3));
	    gamma_rad = 0;
	end
    else
        fprintf(stdout, "%s-order is not supported, examples of supported orders: ZYXr, YZXs ...", order);
    endif
end

%{
/* Convert matrix to Euler angles (in radians). */
EulerAngles Eul_FromHMatrix(HMatrix M, int order)
{
    EulerAngles ea;
    int i,j,k,h,n,s,f;
    EulGetOrd(order,i,j,k,h,n,s,f);
    if (s==EulRepYes) {
	float sy = sqrt(M(i,j)*M(i,j) + M(i,k)*M(i,k));
	if (sy > 16*FLT_EPSILON) {
	    ea.x = atan2(M(i,j), M(i,k));
	    ea.y = atan2(sy, M(i,i));
	    ea.z = atan2(M(j,i), -M(k,i));
	} else {
	    ea.x = atan2(-M(j,k), M(j,j));
	    ea.y = atan2(sy, M(i,i));
	    ea.z = 0;
	}
    } else {
	float cy = sqrt(M(i,i)*M(i,i) + M(j,i)*M(j,i));
	if (cy > 16*FLT_EPSILON) {
	    ea.x = atan2(M(k,j), M(k,k));
	    ea.y = atan2(-M(k,i), cy);
	    ea.z = atan2(M(j,i), M(i,i));
	} else {
	    ea.x = atan2(-M(j,k), M(j,j));
	    ea.y = atan2(-M(k,i), cy);
	    ea.z = 0;
	}
    }
    if (n==EulParOdd) {ea.x = -ea.x; ea.y = - ea.y; ea.z = -ea.z;}
    if (f==EulFrmR) {float t = ea.x; ea.x = ea.z; ea.z = t;}
    ea.w = (float)order;
    return (ea);
}
%}
