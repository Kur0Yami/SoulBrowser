package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzghr extends zzfuf {
    public final zzgcf f;

    public zzghr(Context context, ExecutorService executorService, zzgcf zzgcfVar) {
        super(context, executorService, new TaskCompletionSource().f11605a, false);
        this.f = zzgcfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void b(int i, long j) {
        this.f.b(i, j, null, null);
        new TaskCompletionSource().b(Boolean.TRUE);
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void c(int i, long j, Exception exc) {
        this.f.b(i, j, null, exc);
        new TaskCompletionSource().b(Boolean.TRUE);
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void d(int i, String str) {
        this.f.b(i, -1L, str, null);
        new TaskCompletionSource().b(Boolean.TRUE);
    }
}
