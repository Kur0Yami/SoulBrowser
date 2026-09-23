package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzazq implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzazt f4507c;

    public zzazq(zzazt zzaztVar) {
        this.f4507c = zzaztVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzazt zzaztVar = this.f4507c;
        zzaztVar.getClass();
        try {
            if (zzaztVar.f == null && zzaztVar.g) {
                AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(zzaztVar.f4510a);
                advertisingIdClient.start();
                zzaztVar.f = advertisingIdClient;
            }
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException unused) {
            zzaztVar.f = null;
        }
    }
}
