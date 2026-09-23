package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public interface zzgyx extends ScheduledExecutorService, zzgyw {
    zzgyv N(Callable callable, long j, TimeUnit timeUnit);
}
