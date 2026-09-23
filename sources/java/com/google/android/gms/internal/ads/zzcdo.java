package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.ClientLibraryUtils;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzcdo {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgyw f5068a;
    public static final zzgyw b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzgyw f5069c;
    public static final ScheduledExecutorService d;
    public static final zzgyx e;
    public static final zzgyw f;
    public static final zzgyw g;

    static {
        ExecutorService threadPoolExecutor;
        ExecutorService executorService;
        ExecutorService executorService2;
        zzfxi zzfxiVar = zzfxk.b;
        if (ClientLibraryUtils.isPackageSide()) {
            threadPoolExecutor = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new zzcdl("Default")));
        } else {
            zzbgb zzbgbVar = zzbgk.Fc;
            if (com.google.android.gms.ads.internal.client.zzbd.zzc().b(zzbgbVar) != null && ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(zzbgbVar)).booleanValue()) {
                zzbgb zzbgbVar2 = zzbgk.Gc;
                if (com.google.android.gms.ads.internal.client.zzbd.zzc().b(zzbgbVar2) != null) {
                    zzbgb zzbgbVar3 = zzbgk.Hc;
                    if (com.google.android.gms.ads.internal.client.zzbd.zzc().b(zzbgbVar3) != null) {
                        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().b(zzbgbVar2)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().b(zzbgbVar2)).intValue(), 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcdl("Default"));
                        threadPoolExecutor2.allowCoreThreadTimeOut(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(zzbgbVar3)).booleanValue());
                        threadPoolExecutor = threadPoolExecutor2;
                    }
                }
            }
            threadPoolExecutor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new zzcdl("Default"));
        }
        f5068a = new zzcdn(threadPoolExecutor);
        if (ClientLibraryUtils.isPackageSide()) {
            executorService = ((zzfxj) zzfxiVar).a(5, new zzcdl("Loader"));
        } else {
            ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcdl("Loader"));
            threadPoolExecutor3.allowCoreThreadTimeOut(true);
            executorService = threadPoolExecutor3;
        }
        b = new zzcdn(executorService);
        if (ClientLibraryUtils.isPackageSide()) {
            executorService2 = ((zzfxj) zzfxiVar).a(1, new zzcdl("Activeview"));
        } else {
            ThreadPoolExecutor threadPoolExecutor4 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcdl("Activeview"));
            threadPoolExecutor4.allowCoreThreadTimeOut(true);
            executorService2 = threadPoolExecutor4;
        }
        f5069c = new zzcdn(executorService2);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(3, new zzcdl("Schedule"));
        d = scheduledThreadPoolExecutor;
        e = new zzgzc(scheduledThreadPoolExecutor);
        f = new zzcdn(new zzcdm());
        g = new zzcdn(zzgyb.f8301c);
    }
}
