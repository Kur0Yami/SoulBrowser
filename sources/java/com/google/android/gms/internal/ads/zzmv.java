package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzmv {

    /* renamed from: a, reason: collision with root package name */
    public final long f9127a;
    public final zzbf b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9128c;
    public final zzwg d;
    public final long e;
    public final zzbf f;
    public final int g;
    public final zzwg h;
    public final long i;
    public final long j;

    public zzmv(long j, zzbf zzbfVar, int i, zzwg zzwgVar, long j2, zzbf zzbfVar2, int i2, zzwg zzwgVar2, long j3, long j4) {
        this.f9127a = j;
        this.b = zzbfVar;
        this.f9128c = i;
        this.d = zzwgVar;
        this.e = j2;
        this.f = zzbfVar2;
        this.g = i2;
        this.h = zzwgVar2;
        this.i = j3;
        this.j = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzmv.class == obj.getClass()) {
            zzmv zzmvVar = (zzmv) obj;
            if (this.f9127a == zzmvVar.f9127a && this.f9128c == zzmvVar.f9128c && this.e == zzmvVar.e && this.g == zzmvVar.g && this.i == zzmvVar.i && this.j == zzmvVar.j && Objects.equals(this.b, zzmvVar.b) && Objects.equals(this.d, zzmvVar.d) && Objects.equals(this.f, zzmvVar.f) && Objects.equals(this.h, zzmvVar.h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f9127a), this.b, Integer.valueOf(this.f9128c), this.d, Long.valueOf(this.e), this.f, Integer.valueOf(this.g), this.h, Long.valueOf(this.i), Long.valueOf(this.j));
    }
}
