package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* loaded from: classes.dex */
final class zzbcw implements zzbcx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f4554a;

    public zzbcw(zzbcy zzbcyVar, Activity activity) {
        this.f4554a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzbcx
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f4554a);
    }
}
