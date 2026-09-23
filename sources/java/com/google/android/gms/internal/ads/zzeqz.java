package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzeqz implements zzere {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzera f6833a;

    public zzeqz(zzera zzeraVar) {
        Objects.requireNonNull(zzeraVar);
        this.f6833a = zzeraVar;
    }

    @Override // com.google.android.gms.internal.ads.zzere
    public final void a(zzcvk zzcvkVar) {
        zzera zzeraVar = this.f6833a;
        synchronized (zzeraVar) {
            zzeraVar.f6837c = zzcvkVar.f;
            zzcvkVar.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzere
    public final void zza() {
        synchronized (this.f6833a) {
        }
    }
}
