package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhag {

    /* renamed from: a, reason: collision with root package name */
    public final zzgzx f8325a;
    public final zzgzz b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8326c;
    public final boolean d;
    public final boolean e;
    public final zzhae f;
    public final int g;

    public /* synthetic */ zzhag(zzgzx zzgzxVar, int i, int i2, boolean z, boolean z2, zzhae zzhaeVar) {
        zzgzz zzgzzVar;
        this.f8325a = zzgzxVar;
        this.g = i;
        int i3 = i - 2;
        if (i3 != 1) {
            if (i3 != 3) {
                zzgzzVar = zzgzz.f8315c;
            } else {
                zzgzzVar = zzgzz.d;
            }
        } else {
            zzgzzVar = zzgzz.b;
        }
        this.b = zzgzzVar;
        this.f8326c = i2;
        this.d = z;
        this.e = z2;
        this.f = zzhaeVar;
    }

    public final zzgzx a() {
        this.f.zza();
        return this.f8325a;
    }
}
