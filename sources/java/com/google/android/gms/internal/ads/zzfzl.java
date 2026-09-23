package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzfzl {
    public static zzfzl b;

    /* renamed from: a, reason: collision with root package name */
    public final zzfzh f7749a;

    public zzfzl(Context context) {
        if (zzfzh.f7745c == null) {
            zzfzh.f7745c = new zzfzh(context);
        }
        this.f7749a = zzfzh.f7745c;
        zzfzg.a(context);
    }

    public static final zzfzl a(Context context) {
        zzfzl zzfzlVar;
        synchronized (zzfzl.class) {
            try {
                if (b == null) {
                    b = new zzfzl(context);
                }
                zzfzlVar = b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfzlVar;
    }

    public final void b() {
        synchronized (zzfzl.class) {
            zzfzh zzfzhVar = this.f7749a;
            zzfzhVar.b("vendor_scoped_gpid_v2_id");
            zzfzhVar.b("vendor_scoped_gpid_v2_creation_time");
        }
    }
}
