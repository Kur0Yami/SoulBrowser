package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.Context;

/* loaded from: classes.dex */
public abstract class zza {

    /* renamed from: a, reason: collision with root package name */
    public static zza f9921a;

    public static zza a(Context context) {
        zza zzaVar;
        synchronized (zza.class) {
            try {
                if (f9921a == null) {
                    Application application = (Application) context.getApplicationContext();
                    application.getClass();
                    f9921a = new zzah(application);
                }
                zzaVar = f9921a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzaVar;
    }

    public abstract zzj b();

    public abstract zzbq c();

    public abstract zzcr d();
}
