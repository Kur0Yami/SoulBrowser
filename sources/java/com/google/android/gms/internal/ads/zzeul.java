package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzeul implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f6951a = new AtomicReference();
    public final AtomicReference b = new AtomicReference(Boolean.FALSE);

    /* renamed from: c, reason: collision with root package name */
    public final Clock f6952c;
    public final Executor d;
    public final zzezx e;
    public final long f;
    public final zzdxe g;

    public zzeul(zzezx zzezxVar, long j, Clock clock, Executor executor, zzdxe zzdxeVar) {
        this.f6952c = clock;
        this.e = zzezxVar;
        this.f = j;
        this.d = executor;
        this.g = zzdxeVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0026, code lost:
    
        if (r1.b < r1.f6948c.elapsedRealtime()) goto L8;
     */
    @Override // com.google.android.gms.internal.ads.zzezx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.common.util.concurrent.ListenableFuture zza() {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeul.zza():com.google.common.util.concurrent.ListenableFuture");
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return this.e.zzb();
    }
}
