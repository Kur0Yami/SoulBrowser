package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzht {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8753a = new HashMap();
    public Map b;

    public final synchronized Map a() {
        try {
            if (this.b == null) {
                this.b = DesugarCollections.unmodifiableMap(new HashMap(this.f8753a));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.b;
    }
}
