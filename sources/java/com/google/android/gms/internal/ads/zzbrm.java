package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbrm implements zzcdx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbrl f4857a;

    public zzbrm(zzbrq zzbrqVar, zzbrl zzbrlVar) {
        this.f4857a = zzbrlVar;
        Objects.requireNonNull(zzbrqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final void zza(Object obj) {
        com.google.android.gms.ads.internal.util.zze.zza("Getting a new session for JS Engine.");
        this.f4857a.f5076a.a(((zzbqm) obj).zzl());
    }
}
