package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzfts {
    public final ArrayDeque b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public zzftr f7653c = null;

    /* renamed from: a, reason: collision with root package name */
    public final ThreadPoolExecutor f7652a = new ThreadPoolExecutor(1, 1, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());
}
