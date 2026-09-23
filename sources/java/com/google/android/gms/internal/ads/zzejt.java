package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
final class zzejt implements zzdlh {

    /* renamed from: a, reason: collision with root package name */
    public final VersionInfoParcel f6572a;
    public final zzcdt b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfhr f6573c;
    public final zzcir d;
    public final zzfik e;
    public final zzbnq f;
    public final boolean g;
    public final zzeif h;
    public final zzdxe i;

    public zzejt(VersionInfoParcel versionInfoParcel, zzcdt zzcdtVar, zzfhr zzfhrVar, zzcir zzcirVar, zzfik zzfikVar, boolean z, zzbnq zzbnqVar, zzeif zzeifVar, zzdxe zzdxeVar) {
        this.f6572a = versionInfoParcel;
        this.b = zzcdtVar;
        this.f6573c = zzfhrVar;
        this.d = zzcirVar;
        this.e = zzfikVar;
        this.g = z;
        this.f = zzbnqVar;
        this.h = zzeifVar;
        this.i = zzdxeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdlh
    public final void a(boolean z, Context context, zzdax zzdaxVar) {
        boolean z2;
        float f;
        zzeif zzeifVar;
        boolean z3;
        zzfik zzfikVar = this.e;
        zzbnq zzbnqVar = this.f;
        zzcsn zzcsnVar = (zzcsn) zzgym.m(this.b);
        zzcir zzcirVar = this.d;
        zzcirVar.n0(true);
        boolean z4 = this.g;
        if (z4) {
            z2 = zzbnqVar.b(true);
        } else {
            z2 = true;
        }
        boolean z5 = false;
        if (z4) {
            synchronized (zzbnqVar) {
                z3 = zzbnqVar.b;
            }
            if (z3) {
                z5 = true;
            }
        }
        if (z4) {
            f = zzbnqVar.c();
        } else {
            f = 0.0f;
        }
        float f2 = f;
        zzfhr zzfhrVar = this.f6573c;
        com.google.android.gms.ads.internal.zzl zzlVar = new com.google.android.gms.ads.internal.zzl(z2, true, z5, f2, -1, z, zzfhrVar.O, false);
        if (zzdaxVar != null) {
            zzdaxVar.t0();
        }
        com.google.android.gms.ads.internal.zzt.zzb();
        zzdkw i = zzcsnVar.i();
        int i2 = zzfhrVar.Q;
        if (i2 == -1) {
            com.google.android.gms.ads.internal.client.zzx zzxVar = zzfikVar.k;
            if (zzxVar != null) {
                int i3 = zzxVar.zza;
                if (i3 == 1) {
                    i2 = 7;
                } else if (i3 == 2) {
                    i2 = 6;
                }
            }
            int i4 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Error setting app open orientation; no targeting orientation available.");
        }
        int i5 = i2;
        VersionInfoParcel versionInfoParcel = this.f6572a;
        String str = zzfhrVar.B;
        zzfhw zzfhwVar = zzfhrVar.s;
        String str2 = zzfhwVar.b;
        String str3 = zzfhwVar.f7374a;
        if (zzfhrVar.b()) {
            zzeifVar = this.h;
        } else {
            zzeifVar = null;
        }
        com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel(null, i, null, zzcirVar, i5, versionInfoParcel, str, zzlVar, str2, str3, zzfikVar.g, zzdaxVar, zzeifVar, zzcirVar.zzn()), true, this.i);
    }

    @Override // com.google.android.gms.internal.ads.zzdlh
    public final zzfhr zzb() {
        return this.f6573c;
    }
}
