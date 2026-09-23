package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdsg implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f6093a;
    public final /* synthetic */ zzbnn b;

    public zzdsg(zzdsp zzdspVar, String str, zzbnn zzbnnVar) {
        this.f6093a = str;
        this.b = zzbnnVar;
        Objects.requireNonNull(zzdspVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        ((zzcir) obj).o0(this.f6093a, this.b);
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
    }
}
