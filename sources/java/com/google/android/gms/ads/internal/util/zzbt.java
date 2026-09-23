package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzfoz;
import com.google.android.gms.internal.ads.zzfpa;

/* loaded from: classes.dex */
public final class zzbt extends zzb {
    public final com.google.android.gms.ads.internal.util.client.zzu b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3131c;
    public final com.google.android.gms.ads.internal.util.client.zzv d;

    public zzbt(Context context, String str, String str2, @Nullable zzfpa zzfpaVar, @Nullable com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        this.b = new com.google.android.gms.ads.internal.util.client.zzu(context, com.google.android.gms.ads.internal.zzt.zzc().zze(context, str));
        this.f3131c = str2;
        this.d = zzvVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        String str = this.f3131c;
        com.google.android.gms.ads.internal.util.client.zzv zzvVar = this.d;
        if (zzvVar != null) {
            new zzfoz(zzvVar.zza(), this.b, zzcdo.e, null, null).a(str);
            return;
        }
        this.b.zzc(str, null);
    }
}
