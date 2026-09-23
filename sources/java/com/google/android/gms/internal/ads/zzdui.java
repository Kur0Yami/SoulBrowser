package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzdui implements zzdbf {

    /* renamed from: c, reason: collision with root package name */
    public final zzcir f6154c;

    public zzdui(zzcir zzcirVar) {
        this.f6154c = zzcirVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void b(Context context) {
        zzcir zzcirVar = this.f6154c;
        if (zzcirVar != null) {
            zzcirVar.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void q(Context context) {
        zzcir zzcirVar = this.f6154c;
        if (zzcirVar != null) {
            zzcirVar.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zza(Context context) {
        zzcir zzcirVar = this.f6154c;
        if (zzcirVar != null) {
            zzcirVar.onPause();
        }
    }
}
