package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzba {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4521a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final zzak f4522c;
    public final Object d;
    public final int e;
    public final long f;
    public final long g;
    public final int h;
    public final int i;

    static {
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
    }

    public zzba(Object obj, int i, zzak zzakVar, Object obj2, int i2, long j, long j2, int i3, int i4) {
        this.f4521a = obj;
        this.b = i;
        this.f4522c = zzakVar;
        this.d = obj2;
        this.e = i2;
        this.f = j;
        this.g = j2;
        this.h = i3;
        this.i = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzba.class == obj.getClass()) {
            zzba zzbaVar = (zzba) obj;
            if (this.b == zzbaVar.b && this.e == zzbaVar.e && this.f == zzbaVar.f && this.g == zzbaVar.g && this.h == zzbaVar.h && this.i == zzbaVar.i && Objects.equals(this.f4522c, zzbaVar.f4522c) && Objects.equals(this.f4521a, zzbaVar.f4521a) && Objects.equals(this.d, zzbaVar.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f4521a, Integer.valueOf(this.b), this.f4522c, this.d, Integer.valueOf(this.e), Long.valueOf(this.f), Long.valueOf(this.g), Integer.valueOf(this.h), Integer.valueOf(this.i));
    }

    public final String toString() {
        int i = this.b;
        int length = String.valueOf(i).length();
        int i2 = this.e;
        int length2 = String.valueOf(i2).length();
        long j = this.f;
        StringBuilder sb = new StringBuilder(length + 19 + length2 + 6 + String.valueOf(j).length());
        androidx.work.impl.workers.a.A(sb, "mediaItem=", i, ", period=", i2);
        sb.append(", pos=");
        sb.append(j);
        String sb2 = sb.toString();
        int i3 = this.h;
        if (i3 == -1) {
            return sb2;
        }
        int length3 = sb2.length();
        long j2 = this.g;
        int length4 = String.valueOf(i3).length() + length3 + 13 + String.valueOf(j2).length() + 10;
        int i4 = this.i;
        StringBuilder sb3 = new StringBuilder(length4 + 5 + String.valueOf(i4).length());
        sb3.append(sb2);
        sb3.append(", contentPos=");
        sb3.append(j2);
        return com.mycompany.app.dialog.a.m(sb3, ", adGroup=", i3, ", ad=", i4);
    }
}
