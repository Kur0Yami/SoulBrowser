package com.google.android.gms.internal.mlkit_common;

import android.support.v4.media.a;

/* loaded from: classes3.dex */
final class zzag {

    /* renamed from: a, reason: collision with root package name */
    public final Object f10652a;
    public final Object b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f10653c;

    public zzag(Object obj, Object obj2, Object obj3) {
        this.f10652a = obj;
        this.b = obj2;
        this.f10653c = obj3;
    }

    public final IllegalArgumentException a() {
        Object obj = this.f10652a;
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(this.b);
        return new IllegalArgumentException(a.q(androidx.work.impl.workers.a.u("Multiple entries with same key: ", valueOf, "=", valueOf2, " and "), String.valueOf(obj), "=", String.valueOf(this.f10653c)));
    }
}
