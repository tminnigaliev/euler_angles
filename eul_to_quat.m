function q=eul_to_quat(alpha_rad, beta_rad, gamma_rad, order)
    a = alpha_rad / 2;
    b = beta_rad  / 2;
    g = gamma_rad / 2;
    if (strcmp(order,"ZYXr") == 1)
        q.x =  cos( b)*sin(g)*cos(a) - sin( b)*cos(g)*sin(a);
        q.y =  cos( b)*sin(g)*sin(a) + sin( b)*cos(g)*cos(a);
        q.z =  cos( b)*cos(g)*sin(a) - sin( b)*sin(g)*cos(a);
        q.w =  cos( b)*cos(g)*cos(a) + sin( b)*sin(g)*sin(a);
    elseif (strcmp(order,"XYXr") == 1)
        q.x =  cos( b)*cos(g)*sin(a) + cos( b)*sin(g)*cos(a);
        q.y =  sin( b)*cos(g)*cos(a) + sin( b)*sin(g)*sin(a);
        q.z =  sin( b)*cos(g)*sin(a) - sin( b)*sin(g)*cos(a);
        q.w =  cos( b)*cos(g)*cos(a) - cos( b)*sin(g)*sin(a);
    elseif (strcmp(order, "YZXr") == 1)
        q.x =  cos(-b)*sin(g)*cos(a) - sin(-b)*cos(g)*sin(a);
        q.z = -cos(-b)*sin(g)*sin(a) - sin(-b)*cos(g)*cos(a);
        q.y =  cos(-b)*cos(g)*sin(a) - sin(-b)*sin(g)*cos(a);
        q.w =  cos(-b)*cos(g)*cos(a) + sin(-b)*sin(g)*sin(a);
    elseif (strcmp(order,"XZXr") == 1)
        q.x =  cos(-b)*cos(g)*sin(a) + cos(-b)*sin(g)*cos(a);
        q.z = -sin(-b)*cos(g)*cos(a) - sin(-b)*sin(g)*sin(a);
        q.y =  sin(-b)*cos(g)*sin(a) - sin(-b)*sin(g)*cos(a);
        q.w =  cos(-b)*cos(g)*cos(a) - cos(-b)*sin(g)*sin(a);
    elseif (strcmp(order,"XZYr") == 1)
        q.y =  cos( b)*sin(g)*cos(a) - sin( b)*cos(g)*sin(a);
        q.z =  cos( b)*sin(g)*sin(a) + sin( b)*cos(g)*cos(a);
        q.x =  cos( b)*cos(g)*sin(a) - sin( b)*sin(g)*cos(a);
        q.w =  cos( b)*cos(g)*cos(a) + sin( b)*sin(g)*sin(a);
    elseif (strcmp(order,"YZYr") == 1)
        q.y =  cos( b)*cos(g)*sin(a) + cos( b)*sin(g)*cos(a);
        q.z =  sin( b)*cos(g)*cos(a) + sin( b)*sin(g)*sin(a);
        q.x =  sin( b)*cos(g)*sin(a) - sin( b)*sin(g)*cos(a);
        q.w =  cos( b)*cos(g)*cos(a) - cos( b)*sin(g)*sin(a);
    elseif (strcmp(order,"ZXYr") == 1)
        q.y =  cos(-b)*sin(g)*cos(a) - sin(-b)*cos(g)*sin(a);
        q.x = -cos(-b)*sin(g)*sin(a) - sin(-b)*cos(g)*cos(a);
        q.z =  cos(-b)*cos(g)*sin(a) - sin(-b)*sin(g)*cos(a);
        q.w =  cos(-b)*cos(g)*cos(a) + sin(-b)*sin(g)*sin(a);
    elseif (strcmp(order,"YXYr") == 1)
        q.y =  cos(-b)*cos(g)*sin(a) + cos(-b)*sin(g)*cos(a);
        q.x = -sin(-b)*cos(g)*cos(a) - sin(-b)*sin(g)*sin(a);
        q.z =  sin(-b)*cos(g)*sin(a) - sin(-b)*sin(g)*cos(a);
        q.w =  cos(-b)*cos(g)*cos(a) - cos(-b)*sin(g)*sin(a);
    elseif (strcmp(order,"YXZr") == 1)
        q.z =  cos( b)*sin(g)*cos(a) - sin( b)*cos(g)*sin(a);
        q.x =  cos( b)*sin(g)*sin(a) + sin( b)*cos(g)*cos(a);
        q.y =  cos( b)*cos(g)*sin(a) - sin( b)*sin(g)*cos(a);
        q.w =  cos( b)*cos(g)*cos(a) + sin( b)*sin(g)*sin(a);
    elseif (strcmp(order,"ZXZr") == 1)
        q.z =  cos( b)*cos(g)*sin(a) + cos( b)*sin(g)*cos(a);
        q.x =  sin( b)*cos(g)*cos(a) + sin( b)*sin(g)*sin(a);
        q.y =  sin( b)*cos(g)*sin(a) - sin( b)*sin(g)*cos(a);
        q.w =  cos( b)*cos(g)*cos(a) - cos( b)*sin(g)*sin(a);
    elseif (strcmp(order,"XYZr") == 1)
        q.z =  cos(-b)*sin(g)*cos(a) - sin(-b)*cos(g)*sin(a);
        q.y = -cos(-b)*sin(g)*sin(a) - sin(-b)*cos(g)*cos(a);
        q.x =  cos(-b)*cos(g)*sin(a) - sin(-b)*sin(g)*cos(a);
        q.w =  cos(-b)*cos(g)*cos(a) + sin(-b)*sin(g)*sin(a);
    elseif (strcmp(order,"ZYZr") == 1)
        q.z =  cos(-b)*cos(g)*sin(a) + cos(-b)*sin(g)*cos(a);
        q.y = -sin(-b)*cos(g)*cos(a) - sin(-b)*sin(g)*sin(a);
        q.x =  sin(-b)*cos(g)*sin(a) - sin(-b)*sin(g)*cos(a);
        q.w =  cos(-b)*cos(g)*cos(a) - cos(-b)*sin(g)*sin(a);
    elseif (strcmp(order,"ZYXs") == 1)
        q.z =  cos(-b)*sin(a)*cos(g) - sin(-b)*cos(a)*sin(g);
        q.y = -cos(-b)*sin(a)*sin(g) - sin(-b)*cos(a)*cos(g);
        q.x =  cos(-b)*cos(a)*sin(g) - sin(-b)*sin(a)*cos(g);
        q.w =  cos(-b)*cos(a)*cos(g) + sin(-b)*sin(a)*sin(g);
    elseif (strcmp(order,"XYXs") == 1)
        q.x =  cos( b)*cos(a)*sin(g) + cos( b)*sin(a)*cos(g);
        q.y =  sin( b)*cos(a)*cos(g) + sin( b)*sin(a)*sin(g);
        q.z =  sin( b)*cos(a)*sin(g) - sin( b)*sin(a)*cos(g);
        q.w =  cos( b)*cos(a)*cos(g) - cos( b)*sin(a)*sin(g);
    elseif (strcmp(order, "YZXs") == 1)
        q.y =  cos( b)*sin(a)*cos(g) - sin( b)*cos(a)*sin(g);
        q.z =  cos( b)*sin(a)*sin(g) + sin( b)*cos(a)*cos(g);
        q.x =  cos( b)*cos(a)*sin(g) - sin( b)*sin(a)*cos(g);
        q.w =  cos( b)*cos(a)*cos(g) + sin( b)*sin(a)*sin(g);
    elseif (strcmp(order,"XZXs") == 1)
        q.x =  cos(-b)*cos(a)*sin(g) + cos(-b)*sin(a)*cos(g);
        q.z = -sin(-b)*cos(a)*cos(g) - sin(-b)*sin(a)*sin(g);
        q.y =  sin(-b)*cos(a)*sin(g) - sin(-b)*sin(a)*cos(g);
        q.w =  cos(-b)*cos(a)*cos(g) - cos(-b)*sin(a)*sin(g);
    elseif (strcmp(order,"XZYs") == 1)
        q.x =  cos(-b)*sin(a)*cos(g) - sin(-b)*cos(a)*sin(g);
        q.z = -cos(-b)*sin(a)*sin(g) - sin(-b)*cos(a)*cos(g);
        q.y =  cos(-b)*cos(a)*sin(g) - sin(-b)*sin(a)*cos(g);
        q.w =  cos(-b)*cos(a)*cos(g) + sin(-b)*sin(a)*sin(g);
    elseif (strcmp(order,"YZYs") == 1)
        q.y =  cos( b)*cos(a)*sin(g) + cos( b)*sin(a)*cos(g);
        q.z =  sin( b)*cos(a)*cos(g) + sin( b)*sin(a)*sin(g);
        q.x =  sin( b)*cos(a)*sin(g) - sin( b)*sin(a)*cos(g);
        q.w =  cos( b)*cos(a)*cos(g) - cos( b)*sin(a)*sin(g);
    elseif (strcmp(order,"ZXYs") == 1)
        q.z =  cos( b)*sin(a)*cos(g) - sin( b)*cos(a)*sin(g);
        q.x =  cos( b)*sin(a)*sin(g) + sin( b)*cos(a)*cos(g);
        q.y =  cos( b)*cos(a)*sin(g) - sin( b)*sin(a)*cos(g);
        q.w =  cos( b)*cos(a)*cos(g) + sin( b)*sin(a)*sin(g);
    elseif (strcmp(order,"YXYs") == 1)
        q.y =  cos(-b)*cos(a)*sin(g) + cos(-b)*sin(a)*cos(g);
        q.x = -sin(-b)*cos(a)*cos(g) - sin(-b)*sin(a)*sin(g);
        q.z =  sin(-b)*cos(a)*sin(g) - sin(-b)*sin(a)*cos(g);
        q.w =  cos(-b)*cos(a)*cos(g) - cos(-b)*sin(a)*sin(g);
    elseif (strcmp(order,"YXZs") == 1)
        q.y =  cos(-b)*sin(a)*cos(g) - sin(-b)*cos(a)*sin(g);
        q.x = -cos(-b)*sin(a)*sin(g) - sin(-b)*cos(a)*cos(g);
        q.z =  cos(-b)*cos(a)*sin(g) - sin(-b)*sin(a)*cos(g);
        q.w =  cos(-b)*cos(a)*cos(g) + sin(-b)*sin(a)*sin(g);
    elseif (strcmp(order,"ZXZs") == 1)
        q.z =  cos( b)*cos(a)*sin(g) + cos( b)*sin(a)*cos(g);
        q.x =  sin( b)*cos(a)*cos(g) + sin( b)*sin(a)*sin(g);
        q.y =  sin( b)*cos(a)*sin(g) - sin( b)*sin(a)*cos(g);
        q.w =  cos( b)*cos(a)*cos(g) - cos( b)*sin(a)*sin(g);
    elseif (strcmp(order,"XYZs") == 1)
        q.x =  cos( b)*sin(a)*cos(g) - sin( b)*cos(a)*sin(g);
        q.y =  cos( b)*sin(a)*sin(g) + sin( b)*cos(a)*cos(g);
        q.z =  cos( b)*cos(a)*sin(g) - sin( b)*sin(a)*cos(g);
        q.w =  cos( b)*cos(a)*cos(g) + sin( b)*sin(a)*sin(g);
    elseif (strcmp(order,"ZYZs") == 1)
        q.z =  cos(-b)*cos(a)*sin(g) + cos(-b)*sin(a)*cos(g);
        q.y = -sin(-b)*cos(a)*cos(g) - sin(-b)*sin(a)*sin(g);
        q.x =  sin(-b)*cos(a)*sin(g) - sin(-b)*sin(a)*cos(g);
        q.w =  cos(-b)*cos(a)*cos(g) - cos(-b)*sin(a)*sin(g);
    else
        fprintf(stdout, "%s-order is not supported, examples of supported orders: ZYXr, YZXs ...", order);
    endif
end
