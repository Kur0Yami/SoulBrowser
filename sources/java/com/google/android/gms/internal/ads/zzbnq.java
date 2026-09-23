package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzbnq {

    /* renamed from: a, reason: collision with root package name */
    public boolean f4785a = false;
    public boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public float f4786c = 0.0f;
    public final AtomicBoolean d = new AtomicBoolean(false);

    public final synchronized void a(float f, boolean z) {
        this.b = z;
        this.f4786c = f;
    }

    public final synchronized boolean b(boolean z) {
        if (this.d.get()) {
            return this.f4785a;
        }
        return z;
    }

    public final synchronized float c() {
        return this.f4786c;
    }
}
