package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzpy extends Exception {

    /* renamed from: c, reason: collision with root package name */
    public final int f9179c;
    public final boolean f;

    public zzpy(int i, boolean z) {
        super(androidx.work.impl.workers.a.r(i, "AudioOutput write failed: ", new StringBuilder(String.valueOf(i).length() + 26)));
        this.f = z;
        this.f9179c = i;
    }
}
