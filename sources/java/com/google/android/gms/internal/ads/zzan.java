package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzan {
    public static final zzan B;
    public final zzgtd A;

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f4221a;
    public final CharSequence b;

    /* renamed from: c, reason: collision with root package name */
    public final CharSequence f4222c;
    public final CharSequence d;
    public final CharSequence e;
    public final byte[] f;
    public final Integer g;
    public final Integer h;
    public final Integer i;
    public final Integer j;
    public final Boolean k;
    public final Integer l;
    public final Integer m;
    public final Integer n;
    public final Integer o;
    public final Integer p;
    public final Integer q;
    public final Integer r;
    public final CharSequence s;
    public final CharSequence t;
    public final CharSequence u;
    public final Integer v;
    public final Integer w;
    public final CharSequence x;
    public final CharSequence y;
    public final Integer z;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzam, java.lang.Object] */
    static {
        ?? obj = new Object();
        zzgvs zzgvsVar = zzgtd.f;
        obj.z = zzguy.i;
        B = new zzan(obj);
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(8, 36);
        Integer.toString(9, 36);
        Integer.toString(10, 36);
        Integer.toString(11, 36);
        Integer.toString(12, 36);
        Integer.toString(13, 36);
        Integer.toString(14, 36);
        Integer.toString(15, 36);
        Integer.toString(16, 36);
        Integer.toString(17, 36);
        Integer.toString(18, 36);
        Integer.toString(19, 36);
        Integer.toString(20, 36);
        Integer.toString(21, 36);
        Integer.toString(22, 36);
        Integer.toString(23, 36);
        Integer.toString(24, 36);
        Integer.toString(25, 36);
        Integer.toString(26, 36);
        Integer.toString(27, 36);
        Integer.toString(28, 36);
        Integer.toString(29, 36);
        Integer.toString(30, 36);
        Integer.toString(31, 36);
        Integer.toString(32, 36);
        Integer.toString(33, 36);
        Integer.toString(34, 36);
        Integer.toString(1000, 36);
    }

    public zzan(zzam zzamVar) {
        Boolean bool = zzamVar.k;
        Integer num = zzamVar.y;
        Integer num2 = zzamVar.j;
        int i = 1;
        int i2 = 0;
        if (bool != null) {
            if (!bool.booleanValue()) {
                num2 = -1;
            } else if (num2 == null || num2.intValue() == -1) {
                if (num != null) {
                    switch (num.intValue()) {
                        case 21:
                            i = 2;
                            break;
                        case 22:
                            i = 3;
                            break;
                        case ConnectionResult.API_DISABLED /* 23 */:
                            i = 4;
                            break;
                        case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                            i = 5;
                            break;
                        case 25:
                            i = 6;
                            break;
                    }
                    num2 = Integer.valueOf(i);
                }
                i = 0;
                num2 = Integer.valueOf(i);
            }
        } else if (num2 != null) {
            boolean z = num2.intValue() != -1;
            bool = Boolean.valueOf(z);
            if (z && num == null) {
                switch (num2.intValue()) {
                    case 1:
                        break;
                    case 2:
                        i2 = 21;
                        break;
                    case 3:
                        i2 = 22;
                        break;
                    case 4:
                        i2 = 23;
                        break;
                    case 5:
                        i2 = 24;
                        break;
                    case 6:
                        i2 = 25;
                        break;
                    default:
                        i2 = 20;
                        break;
                }
                num = Integer.valueOf(i2);
            }
        } else {
            num2 = null;
        }
        this.f4221a = zzamVar.f4172a;
        this.b = zzamVar.b;
        this.f4222c = zzamVar.f4173c;
        this.d = zzamVar.d;
        this.e = zzamVar.e;
        this.f = zzamVar.f;
        this.g = zzamVar.g;
        this.h = zzamVar.h;
        this.i = zzamVar.i;
        this.j = num2;
        this.k = bool;
        Integer num3 = zzamVar.l;
        this.l = num3;
        this.m = num3;
        this.n = zzamVar.m;
        this.o = zzamVar.n;
        this.p = zzamVar.o;
        this.q = zzamVar.p;
        this.r = zzamVar.q;
        this.s = zzamVar.r;
        this.t = zzamVar.s;
        this.u = zzamVar.t;
        this.v = zzamVar.u;
        this.w = zzamVar.v;
        this.x = zzamVar.w;
        this.y = zzamVar.x;
        this.z = num;
        this.A = zzamVar.z;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzam, java.lang.Object] */
    public final zzam a() {
        ?? obj = new Object();
        obj.f4172a = this.f4221a;
        obj.b = this.b;
        obj.f4173c = this.f4222c;
        obj.d = this.d;
        obj.e = this.e;
        obj.f = this.f;
        obj.g = this.g;
        obj.h = this.h;
        obj.i = this.i;
        obj.j = this.j;
        obj.k = this.k;
        obj.l = this.m;
        obj.m = this.n;
        obj.n = this.o;
        obj.o = this.p;
        obj.p = this.q;
        obj.q = this.r;
        obj.r = this.s;
        obj.s = this.t;
        obj.t = this.u;
        obj.u = this.v;
        obj.v = this.w;
        obj.w = this.x;
        obj.x = this.y;
        obj.y = this.z;
        obj.z = this.A;
        return obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzan.class == obj.getClass()) {
            zzan zzanVar = (zzan) obj;
            if (Objects.equals(this.f4221a, zzanVar.f4221a) && Objects.equals(this.b, zzanVar.b) && Objects.equals(this.f4222c, zzanVar.f4222c) && Objects.equals(this.d, zzanVar.d) && Objects.equals(this.e, zzanVar.e) && Arrays.equals(this.f, zzanVar.f) && Objects.equals(this.g, zzanVar.g) && Objects.equals(this.h, zzanVar.h) && Objects.equals(this.i, zzanVar.i) && Objects.equals(this.j, zzanVar.j) && Objects.equals(this.k, zzanVar.k) && Objects.equals(this.m, zzanVar.m) && Objects.equals(this.n, zzanVar.n) && Objects.equals(this.o, zzanVar.o) && Objects.equals(this.p, zzanVar.p) && Objects.equals(this.q, zzanVar.q) && Objects.equals(this.r, zzanVar.r) && Objects.equals(this.s, zzanVar.s) && Objects.equals(this.t, zzanVar.t) && Objects.equals(this.u, zzanVar.u) && Objects.equals(this.v, zzanVar.v) && Objects.equals(this.w, zzanVar.w) && Objects.equals(this.x, zzanVar.x) && Objects.equals(this.y, zzanVar.y) && Objects.equals(this.z, zzanVar.z) && Objects.equals(this.A, zzanVar.A)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f4221a, this.b, this.f4222c, this.d, null, null, this.e, null, null, null, Integer.valueOf(Arrays.hashCode(this.f)), this.g, null, this.h, this.i, this.j, this.k, null, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, null, this.y, this.z, Boolean.TRUE, this.A);
    }
}
