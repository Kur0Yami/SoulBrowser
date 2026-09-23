package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zziiz {
    public static final zziiz j = new zziiz(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final zziiz k = new zziiz(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final zziiz l = new zziiz(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final zziiz m = new zziiz(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: a, reason: collision with root package name */
    public final double f8998a;
    public final double b;

    /* renamed from: c, reason: collision with root package name */
    public final double f8999c;
    public final double d;
    public final double e;
    public final double f;
    public final double g;
    public final double h;
    public final double i;

    public zziiz(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f8998a = d5;
        this.b = d6;
        this.f8999c = d7;
        this.d = d;
        this.e = d2;
        this.f = d3;
        this.g = d4;
        this.h = d8;
        this.i = d9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zziiz.class != obj.getClass()) {
            return false;
        }
        zziiz zziizVar = (zziiz) obj;
        if (Double.compare(zziizVar.d, this.d) == 0 && Double.compare(zziizVar.e, this.e) == 0 && Double.compare(zziizVar.f, this.f) == 0 && Double.compare(zziizVar.g, this.g) == 0 && Double.compare(zziizVar.h, this.h) == 0 && Double.compare(zziizVar.i, this.i) == 0 && Double.compare(zziizVar.f8998a, this.f8998a) == 0 && Double.compare(zziizVar.b, this.b) == 0 && Double.compare(zziizVar.f8999c, this.f8999c) == 0) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f8998a);
        long j2 = doubleToLongBits ^ (doubleToLongBits >>> 32);
        long doubleToLongBits2 = Double.doubleToLongBits(this.b);
        long j3 = doubleToLongBits2 ^ (doubleToLongBits2 >>> 32);
        long doubleToLongBits3 = Double.doubleToLongBits(this.f8999c);
        long j4 = doubleToLongBits3 ^ (doubleToLongBits3 >>> 32);
        long doubleToLongBits4 = Double.doubleToLongBits(this.d);
        long j5 = doubleToLongBits4 ^ (doubleToLongBits4 >>> 32);
        long doubleToLongBits5 = Double.doubleToLongBits(this.e);
        long j6 = doubleToLongBits5 ^ (doubleToLongBits5 >>> 32);
        long doubleToLongBits6 = Double.doubleToLongBits(this.f);
        long j7 = doubleToLongBits6 ^ (doubleToLongBits6 >>> 32);
        long doubleToLongBits7 = Double.doubleToLongBits(this.g);
        long doubleToLongBits8 = Double.doubleToLongBits(this.h);
        long j8 = doubleToLongBits8 ^ (doubleToLongBits8 >>> 32);
        long doubleToLongBits9 = Double.doubleToLongBits(this.i);
        return (((((((((((((((((int) j2) * 31) + ((int) j3)) * 31) + ((int) j4)) * 31) + ((int) j5)) * 31) + ((int) j6)) * 31) + ((int) j7)) * 31) + ((int) (doubleToLongBits7 ^ (doubleToLongBits7 >>> 32)))) * 31) + ((int) j8)) * 31) + ((int) (doubleToLongBits9 ^ (doubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(j)) {
            return "Rotate 0°";
        }
        if (equals(k)) {
            return "Rotate 90°";
        }
        if (equals(l)) {
            return "Rotate 180°";
        }
        if (equals(m)) {
            return "Rotate 270°";
        }
        StringBuilder sb = new StringBuilder(260);
        sb.append("Matrix{u=");
        sb.append(this.f8998a);
        sb.append(", v=");
        sb.append(this.b);
        sb.append(", w=");
        sb.append(this.f8999c);
        sb.append(", a=");
        sb.append(this.d);
        sb.append(", b=");
        sb.append(this.e);
        sb.append(", c=");
        sb.append(this.f);
        sb.append(", d=");
        sb.append(this.g);
        sb.append(", tx=");
        sb.append(this.h);
        sb.append(", ty=");
        sb.append(this.i);
        sb.append("}");
        return sb.toString();
    }
}
