package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes.dex */
public class zzfsh implements Application.ActivityLifecycleCallbacks {

    /* renamed from: c, reason: collision with root package name */
    public boolean f7619c;
    public boolean f;
    public zzfsg g;

    public boolean a() {
        return false;
    }

    public void b(boolean z) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        if (!this.f) {
            this.f = true;
            if (this.f7619c) {
                b(true);
                zzfsg zzfsgVar = this.g;
                if (zzfsgVar != null) {
                    zzfsgVar.zzd(true);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        boolean z;
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        if (runningAppProcessInfo.importance != 100 && !a()) {
            z = false;
        } else {
            z = true;
        }
        if (this.f != z) {
            this.f = z;
            if (this.f7619c) {
                b(z);
                zzfsg zzfsgVar = this.g;
                if (zzfsgVar != null) {
                    zzfsgVar.zzd(z);
                }
            }
        }
    }
}
