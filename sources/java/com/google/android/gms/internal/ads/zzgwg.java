package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.logging.Level;

/* loaded from: classes.dex */
public final class zzgwg implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque f8273c = new ArrayDeque(4);
    public Throwable f;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Throwable th = this.f;
        while (true) {
            ArrayDeque arrayDeque = this.f8273c;
            if (arrayDeque.isEmpty()) {
                break;
            }
            Closeable closeable = (Closeable) arrayDeque.removeFirst();
            try {
                closeable.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                } else if (th != th2) {
                    try {
                        th.addSuppressed(th2);
                    } catch (Throwable unused) {
                        zzgwe.f8272a.logp(Level.WARNING, "com.google.common.io.Closer", "<init>", "Suppressing exception thrown when closing ".concat(String.valueOf(closeable)), th2);
                    }
                }
            }
        }
        if (this.f == null && th != null) {
            Object obj = zzgqx.f8217a;
            if (!IOException.class.isInstance(th)) {
                if (!(th instanceof RuntimeException)) {
                    if (!(th instanceof Error)) {
                        throw new AssertionError(th);
                    }
                    throw ((Error) th);
                }
                throw ((RuntimeException) th);
            }
            throw ((Throwable) IOException.class.cast(th));
        }
    }
}
