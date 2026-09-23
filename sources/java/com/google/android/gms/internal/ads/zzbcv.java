package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes.dex */
final class zzbcv implements zzbcx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f4553a;
    public final /* synthetic */ Bundle b;

    public zzbcv(zzbcy zzbcyVar, Activity activity, Bundle bundle) {
        this.f4553a = activity;
        this.b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbcx
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f4553a, this.b);
    }
}
