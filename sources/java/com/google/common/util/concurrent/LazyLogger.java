package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import java.util.logging.Logger;

@GwtCompatible
/* loaded from: classes3.dex */
final class LazyLogger {

    /* renamed from: a, reason: collision with root package name */
    public final Object f12589a = new Object();
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Logger f12590c;

    public LazyLogger(Class cls) {
        this.b = cls.getName();
    }

    public final Logger a() {
        Logger logger = this.f12590c;
        if (logger != null) {
            return logger;
        }
        synchronized (this.f12589a) {
            try {
                Logger logger2 = this.f12590c;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.b);
                this.f12590c = logger3;
                return logger3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
