package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes.dex */
final /* synthetic */ class zzwm implements zzdr {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzwq f9344a;
    public final /* synthetic */ zzvx b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzwc f9345c;
    public final /* synthetic */ IOException d;
    public final /* synthetic */ boolean e;

    public /* synthetic */ zzwm(zzwq zzwqVar, zzvx zzvxVar, zzwc zzwcVar, IOException iOException, boolean z) {
        this.f9344a = zzwqVar;
        this.b = zzvxVar;
        this.f9345c = zzwcVar;
        this.d = iOException;
        this.e = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdr
    public final /* synthetic */ void zza(Object obj) {
        ((zzwr) obj).l(0, this.f9344a.f9350a, this.b, this.f9345c, this.d, this.e);
    }
}
