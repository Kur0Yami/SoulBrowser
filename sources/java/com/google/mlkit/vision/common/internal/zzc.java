package com.google.mlkit.vision.common.internal;

import com.google.android.gms.tasks.OnFailureListener;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzc implements OnFailureListener {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ zzc f12816c = new Object();

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void c(Exception exc) {
        MobileVisionBase.i.e("MobileVisionBase", "Error preloading model resource", exc);
    }
}
