package com.google.android.gms.internal.ads;

import kotlin.KotlinVersion;

/* loaded from: classes.dex */
final class zzajy implements zzaju {

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4111a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4112c;
    public int d;
    public int e;

    public zzajy(zzfv zzfvVar) {
        zzer zzerVar = zzfvVar.b;
        this.f4111a = zzerVar;
        zzerVar.E(12);
        this.f4112c = zzerVar.h() & KotlinVersion.MAX_COMPONENT_VALUE;
        this.b = zzerVar.h();
    }

    @Override // com.google.android.gms.internal.ads.zzaju
    public final int zza() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.ads.zzaju
    public final int zzb() {
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzaju
    public final int zzc() {
        zzer zzerVar = this.f4111a;
        int i = this.f4112c;
        if (i == 8) {
            return zzerVar.K();
        }
        if (i == 16) {
            return zzerVar.L();
        }
        int i2 = this.d;
        this.d = i2 + 1;
        if (i2 % 2 == 0) {
            int K = zzerVar.K();
            this.e = K;
            return (K & 240) >> 4;
        }
        return this.e & 15;
    }
}
