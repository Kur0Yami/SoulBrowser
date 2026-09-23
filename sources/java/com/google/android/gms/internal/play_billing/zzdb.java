package com.google.android.gms.internal.play_billing;

import java.util.logging.Logger;

/* loaded from: classes3.dex */
final class zzdb {

    /* renamed from: a, reason: collision with root package name */
    public final zzbp f11480a = new Object();
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Logger f11481c;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.play_billing.zzbp] */
    public zzdb(Class cls) {
        this.b = cls.getName();
    }

    public final Logger a() {
        Logger logger = this.f11481c;
        if (logger != null) {
            return logger;
        }
        synchronized (this.f11480a) {
            try {
                Logger logger2 = this.f11481c;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.b);
                this.f11481c = logger3;
                return logger3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
