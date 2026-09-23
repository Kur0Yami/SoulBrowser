package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
final class zzele implements zzdlh {

    /* renamed from: a, reason: collision with root package name */
    public final zzfhr f6630a;
    public final zzbuy b;

    /* renamed from: c, reason: collision with root package name */
    public final AdFormat f6631c;
    public zzdbc d = null;

    public zzele(zzfhr zzfhrVar, zzbuy zzbuyVar, AdFormat adFormat) {
        this.f6630a = zzfhrVar;
        this.b = zzbuyVar;
        this.f6631c = adFormat;
    }

    @Override // com.google.android.gms.internal.ads.zzdlh
    public final void a(boolean z, Context context, zzdax zzdaxVar) {
        boolean S2;
        try {
            int ordinal = this.f6631c.ordinal();
            zzbuy zzbuyVar = this.b;
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 5) {
                        S2 = zzbuyVar.q(new ObjectWrapper(context));
                    }
                    throw new Exception("Adapter failed to show.");
                }
                S2 = zzbuyVar.i4(new ObjectWrapper(context));
            } else {
                S2 = zzbuyVar.S2(new ObjectWrapper(context));
            }
            if (S2) {
                zzdbc zzdbcVar = this.d;
                if (zzdbcVar != null) {
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a2)).booleanValue() && this.f6630a.Y == 2) {
                        zzdbcVar.zza();
                        return;
                    }
                    return;
                }
                return;
            }
            throw new Exception("Adapter failed to show.");
        } catch (Throwable th) {
            throw new Exception(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdlh
    public final zzfhr zzb() {
        return this.f6630a;
    }
}
