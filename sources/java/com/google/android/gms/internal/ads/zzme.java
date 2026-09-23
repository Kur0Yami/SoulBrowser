package com.google.android.gms.internal.ads;

import android.os.Looper;

/* loaded from: classes.dex */
public final class zzme {

    /* renamed from: a, reason: collision with root package name */
    public final zzmd f9114a;
    public final zzmc b;

    /* renamed from: c, reason: collision with root package name */
    public int f9115c;
    public Object d;
    public final Looper e;
    public boolean f;

    public zzme(zzmc zzmcVar, zzmd zzmdVar, Looper looper) {
        this.b = zzmcVar;
        this.f9114a = zzmdVar;
        this.e = looper;
    }

    public final synchronized void a(boolean z) {
        notifyAll();
    }
}
