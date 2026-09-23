package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public interface zzgyw extends ExecutorService {
    ListenableFuture E0(Runnable runnable);

    ListenableFuture v0(Callable callable);
}
