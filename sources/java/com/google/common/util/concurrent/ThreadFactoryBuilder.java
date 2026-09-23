package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import j$.util.Objects;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class ThreadFactoryBuilder {

    /* renamed from: a, reason: collision with root package name */
    public String f12597a = null;
    public Boolean b = null;

    public final ThreadFactory a() {
        final AtomicLong atomicLong;
        final String str = this.f12597a;
        final Boolean bool = this.b;
        final ThreadFactory defaultThreadFactory = Executors.defaultThreadFactory();
        if (str != null) {
            atomicLong = new AtomicLong(0L);
        } else {
            atomicLong = null;
        }
        return new ThreadFactory() { // from class: com.google.common.util.concurrent.ThreadFactoryBuilder.1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread newThread = defaultThreadFactory.newThread(runnable);
                Objects.requireNonNull(newThread);
                String str2 = str;
                if (str2 != null) {
                    AtomicLong atomicLong2 = atomicLong;
                    Objects.requireNonNull(atomicLong2);
                    newThread.setName(String.format(Locale.ROOT, str2, Long.valueOf(atomicLong2.getAndIncrement())));
                }
                Boolean bool2 = bool;
                if (bool2 != null) {
                    newThread.setDaemon(bool2.booleanValue());
                }
                return newThread;
            }
        };
    }
}
