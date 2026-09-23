package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzel {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f6622a;
    public final Executor b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzep f6623c;

    public zzel(zzep zzepVar, zzej zzejVar, Executor executor) {
        this.f6623c = zzepVar;
        this.f6622a = new WeakReference(zzejVar);
        this.b = executor;
    }
}
