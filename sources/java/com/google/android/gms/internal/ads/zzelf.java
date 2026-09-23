package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
final class zzelf implements zzdlh {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzejj f6632a;
    public final /* synthetic */ zzfhr b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzelg f6633c;

    public zzelf(zzelg zzelgVar, zzejj zzejjVar, zzfhr zzfhrVar) {
        this.f6632a = zzejjVar;
        this.b = zzfhrVar;
        this.f6633c = zzelgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdlh
    public final void a(boolean z, Context context, zzdax zzdaxVar) {
        Exception exc;
        try {
            zzfji zzfjiVar = (zzfji) this.f6632a.b;
            zzfjiVar.b(z);
            zzbtc zzbtcVar = zzfjiVar.f7412a;
            if (this.f6633c.f6635c.clientJarVersion < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.m1)).intValue()) {
                try {
                    zzbtcVar.zzh();
                    return;
                } finally {
                }
            } else {
                try {
                    zzbtcVar.J0(new ObjectWrapper(context));
                    return;
                } finally {
                }
            }
        } catch (zzfir e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Cannot show interstitial.");
            throw new Exception(e.getCause());
        }
        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh("Cannot show interstitial.");
        throw new Exception(e.getCause());
    }

    @Override // com.google.android.gms.internal.ads.zzdlh
    public final zzfhr zzb() {
        return this.b;
    }
}
