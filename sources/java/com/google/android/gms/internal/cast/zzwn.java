package com.google.android.gms.internal.cast;

import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzwn {

    /* renamed from: a, reason: collision with root package name */
    public final zzhk f9862a = new Object();
    public final String b = zzwa.class.getName();

    /* renamed from: c, reason: collision with root package name */
    public volatile Logger f9863c;

    public final Logger a() {
        Logger logger = this.f9863c;
        if (logger != null) {
            return logger;
        }
        synchronized (this.f9862a) {
            try {
                Logger logger2 = this.f9863c;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.b);
                this.f9863c = logger3;
                return logger3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
