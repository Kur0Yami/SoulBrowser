package com.google.android.gms.internal.base;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class zam implements zal {
    @Override // com.google.android.gms.internal.base.zal
    public final ExecutorService a(NumberedThreadFactory numberedThreadFactory) {
        return b(1, numberedThreadFactory);
    }

    @Override // com.google.android.gms.internal.base.zal
    public final ExecutorService b(int i, ThreadFactory threadFactory) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.base.zal
    public final ExecutorService zaa() {
        return b(4, Executors.defaultThreadFactory());
    }
}
