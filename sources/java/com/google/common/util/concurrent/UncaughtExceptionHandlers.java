package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import java.lang.Thread;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class UncaughtExceptionHandlers {

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class Exiter implements Thread.UncaughtExceptionHandler {

        /* renamed from: a, reason: collision with root package name */
        public static final LazyLogger f12600a = new LazyLogger(Exiter.class);

        /* JADX WARN: Code restructure failed: missing block: B:12:?, code lost:
        
            throw null;
         */
        @Override // java.lang.Thread.UncaughtExceptionHandler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void uncaughtException(java.lang.Thread r8, java.lang.Throwable r9) {
            /*
                r7 = this;
                r0 = 0
                com.google.common.util.concurrent.LazyLogger r1 = com.google.common.util.concurrent.UncaughtExceptionHandlers.Exiter.f12600a     // Catch: java.lang.Throwable -> L1b
                java.util.logging.Logger r1 = r1.a()     // Catch: java.lang.Throwable -> L1b
                java.util.logging.Level r2 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L1b
                java.util.Locale r3 = java.util.Locale.ROOT     // Catch: java.lang.Throwable -> L1b
                java.lang.String r4 = "Caught an exception in %s.  Shutting down."
                r5 = 1
                java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L1b
                r6 = 0
                r5[r6] = r8     // Catch: java.lang.Throwable -> L1b
                java.lang.String r8 = java.lang.String.format(r3, r4, r5)     // Catch: java.lang.Throwable -> L1b
                r1.log(r2, r8, r9)     // Catch: java.lang.Throwable -> L1b
                throw r0
            L1b:
                r8 = move-exception
                java.io.PrintStream r1 = java.lang.System.err     // Catch: java.lang.Throwable -> L2f
                java.lang.String r9 = r9.getMessage()     // Catch: java.lang.Throwable -> L2f
                r1.println(r9)     // Catch: java.lang.Throwable -> L2f
                java.io.PrintStream r9 = java.lang.System.err     // Catch: java.lang.Throwable -> L2f
                java.lang.String r8 = r8.getMessage()     // Catch: java.lang.Throwable -> L2f
                r9.println(r8)     // Catch: java.lang.Throwable -> L2f
                throw r0
            L2f:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.UncaughtExceptionHandlers.Exiter.uncaughtException(java.lang.Thread, java.lang.Throwable):void");
        }
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public interface RuntimeWrapper {
    }
}
