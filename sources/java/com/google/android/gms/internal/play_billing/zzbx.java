package com.google.android.gms.internal.play_billing;

import android.support.v4.media.a;

/* loaded from: classes3.dex */
final class zzbx {

    /* renamed from: a, reason: collision with root package name */
    public final Object f11458a;
    public final Object b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f11459c;

    public zzbx(Object obj, Object obj2, Object obj3) {
        this.f11458a = obj;
        this.b = obj2;
        this.f11459c = obj3;
    }

    public final IllegalArgumentException a() {
        Object obj = this.f11458a;
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(this.b);
        return new IllegalArgumentException(a.q(androidx.work.impl.workers.a.u("Multiple entries with same key: ", valueOf, "=", valueOf2, " and "), String.valueOf(obj), "=", String.valueOf(this.f11459c)));
    }
}
