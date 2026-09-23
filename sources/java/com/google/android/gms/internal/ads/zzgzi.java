package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgzi extends zzgyd {
    public ListenableFuture l;
    public ScheduledFuture m;

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final void e() {
        n(this.l);
        ScheduledFuture scheduledFuture = this.m;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.l = null;
        this.m = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final String f() {
        ListenableFuture listenableFuture = this.l;
        ScheduledFuture scheduledFuture = this.m;
        if (listenableFuture != null) {
            String obj = listenableFuture.toString();
            String q = android.support.v4.media.a.q(new StringBuilder(obj.length() + 14), "inputFuture=[", obj, "]");
            if (scheduledFuture != null) {
                long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
                if (delay > 0) {
                    int length = q.length();
                    StringBuilder sb = new StringBuilder(String.valueOf(delay).length() + length + 19 + 4);
                    sb.append(q);
                    sb.append(", remaining delay=[");
                    sb.append(delay);
                    sb.append(" ms]");
                    return sb.toString();
                }
                return q;
            }
            return q;
        }
        return null;
    }
}
