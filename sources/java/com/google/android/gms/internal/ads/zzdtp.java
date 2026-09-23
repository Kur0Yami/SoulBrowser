package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledFuture;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdtp implements com.google.android.gms.ads.internal.zzn {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzdua f6133c;

    public zzdtp(zzdua zzduaVar) {
        this.f6133c = zzduaVar;
    }

    @Override // com.google.android.gms.ads.internal.zzn
    public final void zzdk() {
        zzddl zzddlVar = this.f6133c.g;
        synchronized (zzddlVar) {
            try {
                if (!zzddlVar.m) {
                    ScheduledFuture scheduledFuture = zzddlVar.n;
                    if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                        zzddlVar.n.cancel(false);
                        zzddlVar.k = zzddlVar.i - zzddlVar.g.elapsedRealtime();
                    } else {
                        zzddlVar.k = -1L;
                    }
                    ScheduledFuture scheduledFuture2 = zzddlVar.o;
                    if (scheduledFuture2 != null && !scheduledFuture2.isCancelled()) {
                        zzddlVar.o.cancel(false);
                        zzddlVar.l = zzddlVar.j - zzddlVar.g.elapsedRealtime();
                    } else {
                        zzddlVar.l = -1L;
                    }
                    zzddlVar.m = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzn
    public final void zzdl() {
        ScheduledFuture scheduledFuture;
        ScheduledFuture scheduledFuture2;
        zzddl zzddlVar = this.f6133c.g;
        synchronized (zzddlVar) {
            try {
                if (zzddlVar.m) {
                    if (zzddlVar.k > 0 && (scheduledFuture2 = zzddlVar.n) != null && scheduledFuture2.isCancelled()) {
                        zzddlVar.v0(zzddlVar.k);
                    }
                    if (zzddlVar.l > 0 && (scheduledFuture = zzddlVar.o) != null && scheduledFuture.isCancelled()) {
                        zzddlVar.w0(zzddlVar.l);
                    }
                    zzddlVar.m = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
