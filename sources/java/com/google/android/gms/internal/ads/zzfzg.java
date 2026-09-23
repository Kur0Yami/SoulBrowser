package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzfzg {
    public static zzfzg b;

    /* renamed from: a, reason: collision with root package name */
    public final zzfzh f7744a;

    public zzfzg(Context context) {
        if (zzfzh.f7745c == null) {
            zzfzh.f7745c = new zzfzh(context);
        }
        this.f7744a = zzfzh.f7745c;
    }

    public static final zzfzg a(Context context) {
        zzfzg zzfzgVar;
        synchronized (zzfzg.class) {
            try {
                if (b == null) {
                    b = new zzfzg(context);
                }
                zzfzgVar = b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfzgVar;
    }

    public final void b(boolean z) {
        synchronized (zzfzg.class) {
            try {
                zzfzh zzfzhVar = this.f7744a;
                zzfzhVar.a(Boolean.valueOf(z), "paidv2_publisher_option");
                if (!z) {
                    zzfzhVar.b("paidv2_creation_time");
                    zzfzhVar.b("paidv2_id");
                    zzfzhVar.b("vendor_scoped_gpid_v2_id");
                    zzfzhVar.b("vendor_scoped_gpid_v2_creation_time");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean c() {
        boolean z;
        synchronized (zzfzg.class) {
            z = this.f7744a.b.getBoolean("paidv2_publisher_option", true);
        }
        return z;
    }
}
