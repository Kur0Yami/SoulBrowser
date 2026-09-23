package com.google.android.gms.ads.identifier;

import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

@VisibleForTesting
/* loaded from: classes.dex */
final class zzb extends Thread {

    /* renamed from: c, reason: collision with root package name */
    public final WeakReference f2974c;
    public final long f;
    public final CountDownLatch g = new CountDownLatch(1);
    public boolean h = false;

    public zzb(AdvertisingIdClient advertisingIdClient, long j) {
        this.f2974c = new WeakReference(advertisingIdClient);
        this.f = j;
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        AdvertisingIdClient advertisingIdClient;
        WeakReference weakReference = this.f2974c;
        try {
            if (!this.g.await(this.f, TimeUnit.MILLISECONDS) && (advertisingIdClient = (AdvertisingIdClient) weakReference.get()) != null) {
                advertisingIdClient.zza();
                this.h = true;
            }
        } catch (InterruptedException unused) {
            AdvertisingIdClient advertisingIdClient2 = (AdvertisingIdClient) weakReference.get();
            if (advertisingIdClient2 != null) {
                advertisingIdClient2.zza();
                this.h = true;
            }
        }
    }
}
