package com.google.android.gms.internal.ads;

import java.util.logging.Logger;

/* loaded from: classes.dex */
final class zzgyu {

    /* renamed from: a, reason: collision with root package name */
    public final zzgqz f8308a = new Object();
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Logger f8309c;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzgqz, java.lang.Object] */
    public zzgyu(Class cls) {
        this.b = cls.getName();
    }

    public final Logger a() {
        Logger logger = this.f8309c;
        if (logger != null) {
            return logger;
        }
        synchronized (this.f8308a) {
            try {
                Logger logger2 = this.f8309c;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.b);
                this.f8309c = logger3;
                return logger3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
