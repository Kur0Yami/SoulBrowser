package com.google.android.datatransport.runtime.synchronization;

import androidx.annotation.WorkerThread;

@WorkerThread
/* loaded from: classes.dex */
public interface SynchronizationGuard {

    /* loaded from: classes.dex */
    public interface CriticalSection<T> {
        Object execute();
    }

    Object b(CriticalSection criticalSection);
}
