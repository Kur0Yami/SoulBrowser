package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzajq {

    /* renamed from: a, reason: collision with root package name */
    public final int f4100a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f4101c;
    public long d;
    public final boolean e;
    public final zzer f;
    public final zzer g;
    public int h;
    public int i;

    public zzajq(zzer zzerVar, zzer zzerVar2, boolean z) {
        this.g = zzerVar;
        this.f = zzerVar2;
        this.e = z;
        zzerVar2.E(12);
        this.f4100a = zzerVar2.h();
        zzerVar.E(12);
        this.i = zzerVar.h();
        zzaes.a("first_chunk must be 1", zzerVar.b() == 1);
        this.b = -1;
    }

    public final boolean a() {
        long P;
        int i = this.b + 1;
        this.b = i;
        if (i == this.f4100a) {
            return false;
        }
        boolean z = this.e;
        zzer zzerVar = this.f;
        if (z) {
            P = zzerVar.j();
        } else {
            P = zzerVar.P();
        }
        this.d = P;
        if (this.b == this.h) {
            zzer zzerVar2 = this.g;
            this.f4101c = zzerVar2.h();
            zzerVar2.G(4);
            int i2 = -1;
            int i3 = this.i - 1;
            this.i = i3;
            if (i3 > 0) {
                i2 = (-1) + zzerVar2.h();
            }
            this.h = i2;
        }
        return true;
    }
}
