package com.google.android.gms.internal.cast;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.MainThread;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;

@MainThread
/* loaded from: classes.dex */
public final class zzn {
    public static final Logger j = new Logger("ApplicationAnalytics", null);

    /* renamed from: a, reason: collision with root package name */
    public final zzj f9786a;
    public final zzax b;

    /* renamed from: c, reason: collision with root package name */
    public final zzp f9787c;
    public final SharedPreferences f;
    public zzo g;
    public CastSession h;
    public boolean i;
    public final zzfk e = new zzfk(Looper.getMainLooper());
    public final Runnable d = new Runnable() { // from class: com.google.android.gms.internal.cast.zzk
        @Override // java.lang.Runnable
        public final void run() {
            zzn zznVar = zzn.this;
            zzo zzoVar = zznVar.g;
            if (zzoVar != null) {
                zznVar.f9786a.b(223, (zzqr) zznVar.f9787c.b(zzoVar).e());
            }
            zznVar.c();
        }
    };

    public zzn(SharedPreferences sharedPreferences, zzj zzjVar, zzax zzaxVar, Bundle bundle, String str) {
        this.f = sharedPreferences;
        this.f9786a = zzjVar;
        this.b = zzaxVar;
        this.f9787c = new zzp(str, bundle);
    }

    public final void a() {
        zzo zzoVar = this.g;
        zzoVar.getClass();
        SharedPreferences sharedPreferences = this.f;
        if (sharedPreferences == null) {
            return;
        }
        zzo.q.b("Save the ApplicationAnalyticsSession to SharedPreferences %s", sharedPreferences);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString("application_id", zzoVar.b);
        edit.putString("receiver_metrics_id", zzoVar.f9802c);
        edit.putLong("analytics_session_id", zzoVar.d);
        edit.putInt("event_sequence_number", zzoVar.e);
        edit.putString("receiver_session_id", zzoVar.f);
        edit.putInt("device_capabilities", zzoVar.g);
        edit.putString("device_model_name", zzoVar.h);
        edit.putString("manufacturer", zzoVar.i);
        edit.putString("product_name", zzoVar.j);
        edit.putString("build_type", zzoVar.k);
        edit.putString("cast_build_version", zzoVar.l);
        edit.putString("system_build_number", zzoVar.m);
        edit.putInt("device_category", zzoVar.n);
        edit.putInt("analytics_session_start_type", zzoVar.p);
        edit.putBoolean("is_output_switcher_enabled", zzoVar.o);
        edit.apply();
    }

    public final void b(int i) {
        j.b("log session ended with error = %d", Integer.valueOf(i));
        e();
        this.f9786a.b(228, this.f9787c.a(this.g, i));
        this.e.removeCallbacks(this.d);
        if (!this.i) {
            this.g = null;
        }
    }

    public final void c() {
        ((Handler) Preconditions.checkNotNull(this.e)).postDelayed((Runnable) Preconditions.checkNotNull(this.d), 300000L);
    }

    public final void d() {
        boolean z;
        CastDevice castDevice;
        int i = 0;
        j.b("Create a new ApplicationAnalyticsSession based on CastSession", new Object[0]);
        zzo zzoVar = new zzo(this.b);
        zzo.r++;
        this.g = zzoVar;
        zzo zzoVar2 = (zzo) Preconditions.checkNotNull(zzoVar);
        CastSession castSession = this.h;
        if (castSession != null && castSession.g.zzo()) {
            z = true;
        } else {
            z = false;
        }
        zzoVar2.o = z;
        zzo zzoVar3 = (zzo) Preconditions.checkNotNull(this.g);
        Logger logger = CastContext.l;
        Preconditions.checkMainThread("Must be called from the main thread.");
        CastContext castContext = (CastContext) Preconditions.checkNotNull(CastContext.n);
        castContext.getClass();
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzoVar3.b = castContext.e.f3467c;
        CastSession castSession2 = this.h;
        if (castSession2 == null) {
            castDevice = null;
        } else {
            Preconditions.checkMainThread("Must be called from the main thread.");
            castDevice = castSession2.k;
        }
        if (castDevice != null) {
            f(castDevice);
        }
        zzo zzoVar4 = (zzo) Preconditions.checkNotNull(this.g);
        CastSession castSession3 = this.h;
        if (castSession3 != null) {
            i = castSession3.i();
        }
        zzoVar4.p = i;
        Preconditions.checkNotNull(this.g);
    }

    public final void e() {
        CastDevice castDevice;
        if (g()) {
            CastSession castSession = this.h;
            if (castSession != null) {
                Preconditions.checkMainThread("Must be called from the main thread.");
                castDevice = castSession.k;
            } else {
                castDevice = null;
            }
            if (castDevice != null && !TextUtils.equals(this.g.f9802c, castDevice.p)) {
                f(castDevice);
            }
            Preconditions.checkNotNull(this.g);
            return;
        }
        Logger logger = j;
        Log.w(logger.f3604a, logger.d("The analyticsSession should not be null for logging. Create a dummy one.", new Object[0]));
        d();
    }

    public final void f(CastDevice castDevice) {
        zzo zzoVar = this.g;
        if (zzoVar != null) {
            zzoVar.f9802c = castDevice.p;
            zzoVar.g = castDevice.m.f3626a;
            zzoVar.h = castDevice.i;
            zzoVar.n = castDevice.zzd();
            com.google.android.gms.cast.internal.zzaa G = castDevice.G();
            if (G != null) {
                String str = G.h;
                if (str != null) {
                    zzoVar.i = str;
                }
                String str2 = G.i;
                if (str2 != null) {
                    zzoVar.j = str2;
                }
                String str3 = G.j;
                if (str3 != null) {
                    zzoVar.k = str3;
                }
                String str4 = G.k;
                if (str4 != null) {
                    zzoVar.l = str4;
                }
                String str5 = G.l;
                if (str5 != null) {
                    zzoVar.m = str5;
                }
            }
        }
    }

    public final boolean g() {
        String str;
        Logger logger = j;
        if (this.g == null) {
            logger.b("The analytics session is null when matching with application ID.", new Object[0]);
            return false;
        }
        Logger logger2 = CastContext.l;
        Preconditions.checkMainThread("Must be called from the main thread.");
        CastContext castContext = (CastContext) Preconditions.checkNotNull(CastContext.n);
        castContext.getClass();
        Preconditions.checkMainThread("Must be called from the main thread.");
        String str2 = castContext.e.f3467c;
        if (str2 != null && (str = this.g.b) != null && TextUtils.equals(str, str2)) {
            Preconditions.checkNotNull(this.g);
            return true;
        }
        logger.b("The analytics session doesn't match the application ID %s", str2);
        return false;
    }

    public final boolean h(String str) {
        String str2;
        if (!g()) {
            return false;
        }
        Preconditions.checkNotNull(this.g);
        if (str != null && (str2 = this.g.f) != null && TextUtils.equals(str2, str)) {
            return true;
        }
        j.b("The analytics session doesn't match the receiver session ID %s.", str);
        return false;
    }
}
