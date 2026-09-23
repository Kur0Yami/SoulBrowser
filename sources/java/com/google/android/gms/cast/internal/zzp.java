package com.google.android.gms.cast.internal;

import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzp {

    /* renamed from: a, reason: collision with root package name */
    public final int f3626a;

    public zzp(int i) {
        this.f3626a = i;
    }

    public final boolean a(int i) {
        return (this.f3626a & i) == i;
    }

    public final boolean b() {
        return !(!a(32) || a(64) || a(Uuid.SIZE_BITS)) || a(64);
    }

    public final boolean c() {
        return b() || a(Uuid.SIZE_BITS);
    }
}
