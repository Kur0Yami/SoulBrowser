package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzdfq implements zzddq {

    /* renamed from: c, reason: collision with root package name */
    public int f5764c;
    public int f;

    @Override // com.google.android.gms.internal.ads.zzddq
    public final synchronized void N(zzfic zzficVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M1)).booleanValue()) {
            try {
                zzfhu zzfhuVar = zzficVar.b.b;
                this.f5764c = zzfhuVar.f7373c;
                this.f = zzfhuVar.d;
            } catch (NullPointerException unused) {
            }
        }
    }

    public final synchronized int a() {
        return this.f5764c;
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void f(zzbza zzbzaVar) {
    }
}
