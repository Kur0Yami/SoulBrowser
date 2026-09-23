package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzcqq implements zzdbf {

    /* renamed from: c, reason: collision with root package name */
    public final zzfji f5379c;

    public zzcqq(zzfji zzfjiVar) {
        this.f5379c = zzfjiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void b(Context context) {
        Exception exc;
        try {
            try {
                this.f5379c.f7412a.zzi();
            } finally {
            }
        } catch (zzfir e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void q(Context context) {
        Exception exc;
        try {
            try {
                zzbtc zzbtcVar = this.f5379c.f7412a;
                zzbtcVar.zzm();
                if (context != null) {
                    try {
                        zzbtcVar.t(new ObjectWrapper(context));
                    } finally {
                    }
                }
            } finally {
            }
        } catch (zzfir e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Cannot invoke onResume for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zza(Context context) {
        Exception exc;
        try {
            try {
                this.f5379c.f7412a.zzl();
            } finally {
            }
        } catch (zzfir e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Cannot invoke onPause for the mediation adapter.", e);
        }
    }
}
