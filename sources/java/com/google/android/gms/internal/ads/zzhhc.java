package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class zzhhc {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f8543a = Logger.getLogger(zzhhc.class.getName());
    public static final AtomicBoolean b = new AtomicBoolean(false);

    public static boolean a() {
        if (b.get()) {
            return true;
        }
        return false;
    }
}
