package com.google.android.gms.internal.ads;

import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzzh implements Spatializer$OnSpatializerStateChangedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzzu f9410a;

    public zzzh(zzzj zzzjVar, zzzu zzzuVar) {
        this.f9410a = zzzuVar;
    }

    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z) {
        this.f9410a.l();
    }

    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z) {
        this.f9410a.l();
    }
}
