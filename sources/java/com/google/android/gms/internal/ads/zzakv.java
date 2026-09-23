package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzakv {

    /* renamed from: a, reason: collision with root package name */
    public final int f4141a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4142c;
    public final long d;
    public final long e;
    public final long f;
    public final zzv g;
    public final int h;
    public final long[] i;
    public final long[] j;
    public final int k;
    public final zzakw[] l;

    public zzakv(int i, int i2, long j, long j2, long j3, long j4, zzv zzvVar, int i3, zzakw[] zzakwVarArr, int i4, long[] jArr, long[] jArr2) {
        this.f4141a = i;
        this.b = i2;
        this.f4142c = j;
        this.d = j2;
        this.e = j3;
        this.f = j4;
        this.g = zzvVar;
        this.h = i3;
        this.l = zzakwVarArr;
        this.k = i4;
        this.i = jArr;
        this.j = jArr2;
    }

    public final zzakv a(zzv zzvVar) {
        return new zzakv(this.f4141a, this.b, this.f4142c, this.d, this.e, this.f, zzvVar, this.h, this.l, this.k, this.i, this.j);
    }
}
