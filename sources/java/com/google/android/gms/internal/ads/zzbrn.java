package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbrn implements zzcdv {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbrl f4858a;

    public zzbrn(zzbrq zzbrqVar, zzbrl zzbrlVar) {
        this.f4858a = zzbrlVar;
        Objects.requireNonNull(zzbrqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcdv
    public final void zza() {
        com.google.android.gms.ads.internal.util.zze.zza("Rejecting reference for JS Engine.");
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F8)).booleanValue();
        zzbrl zzbrlVar = this.f4858a;
        if (booleanValue) {
            zzbrlVar.c("SdkJavascriptFactory.createNewReference.FailureCallback", new IllegalStateException("Unable to create JS engine reference."));
        } else {
            zzbrlVar.b();
        }
    }
}
