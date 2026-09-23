package com.google.android.gms.internal.ads;

import androidx.collection.SimpleArrayMap;

/* loaded from: classes.dex */
final /* synthetic */ class zzdpl implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcir f5997c;

    public /* synthetic */ zzdpl(zzcir zzcirVar) {
        this.f5997c = zzcirVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    @Override // java.lang.Runnable
    public final void run() {
        this.f5997c.S("onSdkImpression", new SimpleArrayMap(0));
    }
}
