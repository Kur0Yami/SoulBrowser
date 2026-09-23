package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzre extends Exception {

    /* renamed from: c, reason: collision with root package name */
    public final int f9209c;
    public final boolean f;
    public final zzv g;

    public zzre(int i, zzv zzvVar, boolean z) {
        super(androidx.work.impl.workers.a.r(i, "AudioTrack write failed: ", new StringBuilder(String.valueOf(i).length() + 25)));
        this.f = z;
        this.f9209c = i;
        this.g = zzvVar;
    }
}
