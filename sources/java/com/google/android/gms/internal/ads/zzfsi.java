package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzfsi {

    /* renamed from: a, reason: collision with root package name */
    public final zzftw f7620a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfro f7621c;
    public final String d = "Ad overlay";

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzftw, java.lang.ref.WeakReference] */
    public zzfsi(View view, zzfro zzfroVar) {
        this.f7620a = new WeakReference(view);
        this.b = view.getClass().getCanonicalName();
        this.f7621c = zzfroVar;
    }
}
