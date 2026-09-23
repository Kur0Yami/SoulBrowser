package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzfzr {
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.util.concurrent.ListenableFuture, java.lang.Object, com.google.android.gms.internal.ads.zzfzp] */
    public static ListenableFuture a(Task task) {
        final ?? obj = new Object();
        obj.l = task;
        task.d(zzgyb.f8301c, new OnCompleteListener() { // from class: com.google.android.gms.internal.ads.zzfzq
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final /* synthetic */ void onComplete(Task task2) {
                boolean n = task2.n();
                zzfzp zzfzpVar = zzfzp.this;
                if (n) {
                    zzfzpVar.cancel(false);
                    return;
                }
                if (task2.p()) {
                    zzfzpVar.c(task2.m());
                    return;
                }
                Exception l = task2.l();
                if (l != null) {
                    zzfzpVar.d(l);
                    return;
                }
                throw new IllegalStateException();
            }
        });
        return obj;
    }
}
