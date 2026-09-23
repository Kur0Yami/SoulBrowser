package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgzg implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public zzgzi f8312c;

    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture listenableFuture;
        zzgzi zzgziVar = this.f8312c;
        if (zzgziVar != null && (listenableFuture = zzgziVar.l) != null) {
            this.f8312c = null;
            if (listenableFuture.isDone()) {
                zzgziVar.m(listenableFuture);
                return;
            }
            try {
                ScheduledFuture scheduledFuture = zzgziVar.m;
                zzgziVar.m = null;
                String str = "Timed out";
                if (scheduledFuture != null) {
                    try {
                        long abs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (abs > 10) {
                            StringBuilder sb = new StringBuilder(String.valueOf(abs).length() + 55);
                            sb.append("Timed out (timeout delayed by ");
                            sb.append(abs);
                            sb.append(" ms after scheduled time)");
                            str = sb.toString();
                        }
                    } catch (Throwable th) {
                        zzgziVar.d(new TimeoutException(str));
                        throw th;
                    }
                }
                String obj = listenableFuture.toString();
                StringBuilder sb2 = new StringBuilder(str.length() + 2 + obj.length());
                sb2.append(str);
                sb2.append(": ");
                sb2.append(obj);
                zzgziVar.d(new TimeoutException(sb2.toString()));
            } finally {
                listenableFuture.cancel(true);
            }
        }
    }
}
