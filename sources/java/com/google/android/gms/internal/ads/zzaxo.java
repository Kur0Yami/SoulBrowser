package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
final class zzaxo implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            zzaxp.b = MessageDigest.getInstance("MD5");
            countDownLatch = zzaxp.e;
        } catch (NoSuchAlgorithmException unused) {
            countDownLatch = zzaxp.e;
        } catch (Throwable th) {
            zzaxp.e.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }
}
