package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzhiz {
    public static final zzhiz b = new zzhiz();

    /* renamed from: c, reason: collision with root package name */
    public static final zzhiy f8584c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f8585a = new AtomicReference();

    public final zzhir a() {
        zzhir zzhirVar = (zzhir) this.f8585a.get();
        if (zzhirVar == null) {
            return f8584c;
        }
        return zzhirVar;
    }
}
