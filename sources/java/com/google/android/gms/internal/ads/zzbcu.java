package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* loaded from: classes.dex */
final class zzbcu implements zzbcx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f4552a;

    public zzbcu(zzbcy zzbcyVar, Activity activity) {
        this.f4552a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzbcx
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f4552a);
    }
}
