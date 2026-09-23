package com.google.android.datatransport.runtime.time;

import com.google.android.datatransport.runtime.dagger.internal.Factory;

/* loaded from: classes.dex */
public final class TimeModule_EventClockFactory implements Factory<Clock> {

    /* loaded from: classes.dex */
    public static final class InstanceHolder {

        /* renamed from: a, reason: collision with root package name */
        public static final TimeModule_EventClockFactory f2924a = new Object();
    }

    public static TimeModule_EventClockFactory a() {
        return InstanceHolder.f2924a;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new Object();
    }
}
