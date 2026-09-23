package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;

/* loaded from: classes.dex */
public final class SchedulingConfigModule_ConfigFactory implements Factory<SchedulerConfig> {
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.runtime.time.Clock, java.lang.Object] */
    @Override // javax.inject.Provider
    public final Object get() {
        return SchedulerConfig.b(new Object());
    }
}
