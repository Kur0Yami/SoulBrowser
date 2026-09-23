package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class zzbdc implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbdd f4563c;

    public zzbdc(zzbdd zzbddVar) {
        this.f4563c = zzbddVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbdd zzbddVar = this.f4563c;
        synchronized (zzbddVar.g) {
            if (zzbddVar.h.get() && zzbddVar.i) {
                zzbddVar.h.set(false);
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("App went background");
                ArrayList arrayList = zzbddVar.j;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    try {
                        ((zzbde) obj).zza(false);
                    } catch (Exception e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                    }
                }
            } else {
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("App is still foreground");
            }
        }
    }
}
