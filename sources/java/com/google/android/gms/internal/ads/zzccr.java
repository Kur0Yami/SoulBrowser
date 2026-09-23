package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* loaded from: classes.dex */
final class zzccr implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f5040c;
    public final /* synthetic */ zzcdt f;

    public zzccr(zzccs zzccsVar, Context context, zzcdt zzcdtVar) {
        this.f5040c = context;
        this.f = zzcdtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcdt zzcdtVar = this.f;
        try {
            zzcdtVar.a(AdvertisingIdClient.getAdvertisingIdInfo(this.f5040c));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            zzcdtVar.b(e);
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Exception while getting advertising Id info", e);
        }
    }
}
