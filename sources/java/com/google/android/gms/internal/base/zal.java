package com.google.android.gms.internal.base;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public interface zal {
    ExecutorService a(NumberedThreadFactory numberedThreadFactory);

    ExecutorService b(int i, ThreadFactory threadFactory);

    ExecutorService zaa();
}
