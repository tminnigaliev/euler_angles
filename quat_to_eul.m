function [alpha_rad, beta_rad, gamma_rad]=quat_to_eul(q, order)
    Nq = q.x*q.x+q.y*q.y+q.z*q.z+q.w*q.w;
    if (Nq > 0)
        s = 2 / Nq;
    else
        s = 0;
    end

    xs = q.x*s;  ys = q.y*s;  zs = q.z*s;
    wx = q.w*xs; wy = q.w*ys; wz = q.w*zs;
    xx = q.x*xs; xy = q.x*ys; xz = q.x*zs;
    yy = q.y*ys; yz = q.y*zs; zz = q.z*zs;

    M = zeros(4,4);
    M(1,1) = 1.0 - (yy + zz);  M(1,2) = xy - wz;          M(1,3) = xz + wy;           M(1,4)=0;
    M(2,1) = xy + wz;          M(2,2) = 1.0 - (xx + zz);  M(2,3) = yz - wx;           M(2,4)=0;
    M(3,1) = xz - wy;          M(3,2) = yz + wx;          M(3,3) = 1 - (xx + yy);     M(3,4)=0;
    M(4,1) = 0;                M(4,2) = 0;                M(4,3) = 0;                 M(4,4)=1;

    [alpha_rad beta_rad gamma_rad] = eul_from_rotm(M, order);
end


%{
/* Convert quaternion to Euler angles (in radians). */
EulerAngles Eul_FromQuat(Quat q, int order)
{
    HMatrix M;
    float Nq = q.x*q.x+q.y*q.y+q.z*q.z+q.w*q.w;
    float s = (Nq > 0.f) ? (2.f / Nq) : 0.f;
    float xs = q.x*s,	  ys = q.y*s,	 zs = q.z*s;
    float wx = q.w*xs,	  wy = q.w*ys,	 wz = q.w*zs;
    float xx = q.x*xs,	  xy = q.x*ys,	 xz = q.x*zs;
    float yy = q.y*ys,	  yz = q.y*zs,	 zz = q.z*zs;
    M(X,X) = 1.f - (yy + zz); M(X,Y) = xy - wz;         M(X,Z) = xz + wy;          M(X,W)=0.f;
    M(Y,X) = xy + wz;         M(Y,Y) = 1.f - (xx + zz); M(Y,Z) = yz - wx;          M(Y,W)=0.f;
    M(Z,X) = xz - wy;         M(Z,Y) = yz + wx;         M(Z,Z) = 1.f - (xx + yy);  M(Z,W)=0.f;
    M(W,X)=                   M(W,Y)=                   M(W,Z) = 0.f;              M(W,W)=1.f;
    return (Eul_FromHMatrix(M, order));
}
%}


