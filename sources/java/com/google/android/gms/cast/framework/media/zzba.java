package com.google.android.gms.cast.framework.media;

import android.util.Log;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzba implements com.google.android.gms.cast.internal.zzat {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbc f3564a;

    public zzba(zzbc zzbcVar) {
        this.f3564a = zzbcVar;
    }

    @Override // com.google.android.gms.cast.internal.zzat
    public final void a(long j, long j2, long j3, String str) {
        zzbc zzbcVar = this.f3564a;
        try {
            zzbcVar.setResult(new zzbb(zzbcVar, new Status(2103)));
        } catch (IllegalStateException e) {
            Logger logger = RemoteMediaClient.k;
            Log.e(logger.f3604a, logger.d("Result already set when calling onRequestReplaced", new Object[0]), e);
        }
        Iterator it = zzbcVar.f3567c.h.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).f(str, j, 2103, j2, j3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0035 A[LOOP:0: B:8:0x002f->B:10:0x0035, LOOP_END] */
    @Override // com.google.android.gms.cast.internal.zzat
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(java.lang.String r13, long r14, int r16, java.lang.Object r17, long r18, long r20) {
        /*
            r12 = this;
            com.google.android.gms.cast.framework.media.zzbc r1 = r12.f3564a
            com.google.android.gms.cast.framework.media.zzbd r0 = new com.google.android.gms.cast.framework.media.zzbd     // Catch: java.lang.IllegalStateException -> L14
            com.google.android.gms.common.api.Status r2 = new com.google.android.gms.common.api.Status     // Catch: java.lang.IllegalStateException -> L14
            r7 = r16
            r2.<init>(r7)     // Catch: java.lang.IllegalStateException -> L12
            r0.<init>(r2)     // Catch: java.lang.IllegalStateException -> L12
            r1.setResult(r0)     // Catch: java.lang.IllegalStateException -> L12
            goto L27
        L12:
            r0 = move-exception
            goto L17
        L14:
            r0 = move-exception
            r7 = r16
        L17:
            com.google.android.gms.cast.internal.Logger r2 = com.google.android.gms.cast.framework.media.RemoteMediaClient.k
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.String r4 = r2.f3604a
            java.lang.String r5 = "Result already set when calling onRequestCompleted"
            java.lang.String r2 = r2.d(r5, r3)
            android.util.Log.e(r4, r2, r0)
        L27:
            com.google.android.gms.cast.framework.media.RemoteMediaClient r0 = r1.f3567c
            java.util.concurrent.CopyOnWriteArrayList r0 = r0.h
            java.util.Iterator r0 = r0.iterator()
        L2f:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L48
            java.lang.Object r1 = r0.next()
            r3 = r1
            com.google.android.gms.cast.framework.media.RemoteMediaClient$Callback r3 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback) r3
            r4 = r13
            r5 = r14
            r8 = r18
            r10 = r20
            r3.f(r4, r5, r7, r8, r10)
            r7 = r16
            goto L2f
        L48:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzba.b(java.lang.String, long, int, java.lang.Object, long, long):void");
    }
}
