package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbdf {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4565a = new Object();
    public zzbdd b = null;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4566c = false;

    public final void a(Context context) {
        Application application;
        synchronized (this.f4565a) {
            try {
                if (!this.f4566c) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext == null) {
                        applicationContext = context;
                    }
                    if (applicationContext instanceof Application) {
                        application = (Application) applicationContext;
                    } else {
                        application = null;
                    }
                    if (application == null) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Can not cast Context to Application");
                        return;
                    }
                    if (this.b == null) {
                        this.b = new zzbdd();
                    }
                    zzbdd zzbddVar = this.b;
                    if (!zzbddVar.m) {
                        application.registerActivityLifecycleCallbacks(zzbddVar);
                        if (context instanceof Activity) {
                            zzbddVar.d((Activity) context);
                        }
                        zzbddVar.f = application;
                        zzbddVar.n = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.y1)).longValue();
                        zzbddVar.m = true;
                    }
                    this.f4566c = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(zzbde zzbdeVar) {
        synchronized (this.f4565a) {
            try {
                if (this.b == null) {
                    this.b = new zzbdd();
                }
                this.b.a(zzbdeVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(zzbde zzbdeVar) {
        synchronized (this.f4565a) {
            try {
                zzbdd zzbddVar = this.b;
                if (zzbddVar == null) {
                    return;
                }
                zzbddVar.b(zzbdeVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Activity d() {
        synchronized (this.f4565a) {
            try {
                zzbdd zzbddVar = this.b;
                if (zzbddVar != null) {
                    return zzbddVar.f4564c;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Application e() {
        synchronized (this.f4565a) {
            try {
                zzbdd zzbddVar = this.b;
                if (zzbddVar != null) {
                    return zzbddVar.f;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean f() {
        synchronized (this.f4565a) {
            try {
                zzbdd zzbddVar = this.b;
                if (zzbddVar != null) {
                    return zzbddVar.h.get();
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
