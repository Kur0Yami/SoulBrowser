package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* loaded from: classes.dex */
final class zzbcs implements zzbcx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f4550a;

    public zzbcs(zzbcy zzbcyVar, Activity activity) {
        this.f4550a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzbcx
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f4550a);
    }
}
