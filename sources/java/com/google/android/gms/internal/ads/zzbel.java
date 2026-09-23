package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.appopen.AppOpenAd;

/* loaded from: classes.dex */
public final class zzbel {

    /* renamed from: a, reason: collision with root package name */
    public com.google.android.gms.ads.internal.client.zzbx f4591a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4592c;
    public final com.google.android.gms.ads.internal.client.zzek d;
    public final AppOpenAd.AppOpenAdLoadCallback e;
    public final zzbsv f = new zzbsv();
    public final com.google.android.gms.ads.internal.client.zzq g = com.google.android.gms.ads.internal.client.zzq.zza;

    public zzbel(Context context, String str, com.google.android.gms.ads.internal.client.zzek zzekVar, AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.b = context;
        this.f4592c = str;
        this.d = zzekVar;
        this.e = appOpenAdLoadCallback;
    }

    public final void a() {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            com.google.android.gms.ads.internal.client.zzr zzd = com.google.android.gms.ads.internal.client.zzr.zzd();
            com.google.android.gms.ads.internal.client.zzaz zzb = com.google.android.gms.ads.internal.client.zzbb.zzb();
            Context context = this.b;
            String str = this.f4592c;
            com.google.android.gms.ads.internal.client.zzbx zza = zzb.zza(context, zzd, str, this.f);
            this.f4591a = zza;
            if (zza != null) {
                com.google.android.gms.ads.internal.client.zzek zzekVar = this.d;
                zzekVar.zzp(currentTimeMillis);
                this.f4591a.zzJ(new zzbdy(this.e, str));
                this.f4591a.zze(this.g.zza(context, zzekVar));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }
}
