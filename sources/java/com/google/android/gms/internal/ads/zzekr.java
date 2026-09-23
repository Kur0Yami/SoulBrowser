package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* loaded from: classes.dex */
final class zzekr implements zzdlh {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcdt f6607a;
    public final /* synthetic */ zzfhr b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzekt f6608c;

    public zzekr(zzekt zzektVar, zzcdt zzcdtVar, zzfhr zzfhrVar) {
        this.f6607a = zzcdtVar;
        this.b = zzfhrVar;
        this.f6608c = zzektVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdlh
    public final void a(boolean z, Context context, zzdax zzdaxVar) {
        try {
            com.google.android.gms.ads.internal.zzt.zzb();
            com.google.android.gms.ads.internal.overlay.zzn.zza(context, (AdOverlayInfoParcel) this.f6607a.f5072c.get(), true, this.f6608c.e);
        } catch (Exception unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdlh
    public final zzfhr zzb() {
        return this.b;
    }
}
