package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class ExecutionModule_ExecutorFactory implements Factory<Executor> {

    /* loaded from: classes.dex */
    public static final class InstanceHolder {

        /* renamed from: a, reason: collision with root package name */
        public static final ExecutionModule_ExecutorFactory f2824a = new Object();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SafeLoggingExecutor(Executors.newSingleThreadExecutor());
    }
}
