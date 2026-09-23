package com.google.android.gms.internal.ads;

import java.security.spec.ECPoint;

/* loaded from: classes.dex */
public final class zzhri extends zzhtu {

    /* renamed from: a, reason: collision with root package name */
    public final zzhre f8698a;
    public final ECPoint b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhxc f8699c;
    public final Integer d;

    public zzhri(zzhre zzhreVar, ECPoint eCPoint, zzhxc zzhxcVar, Integer num) {
        this.f8698a = zzhreVar;
        this.b = eCPoint;
        this.f8699c = zzhxcVar;
        this.d = num;
    }

    @Override // com.google.android.gms.internal.ads.zzhtu, com.google.android.gms.internal.ads.zzgzx
    public final /* synthetic */ zzhan a() {
        return this.f8698a;
    }

    @Override // com.google.android.gms.internal.ads.zzgzx
    public final Integer b() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.ads.zzhtu
    public final zzhxc c() {
        return this.f8699c;
    }
}
