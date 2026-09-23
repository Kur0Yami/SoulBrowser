package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class zzfvn implements zzfui {

    /* renamed from: a, reason: collision with root package name */
    public final Object f7684a;
    public final zzfvo b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfvz f7685c;
    public final zzfuf d;
    public final boolean e;

    public zzfvn(Object obj, zzfvo zzfvoVar, zzfvz zzfvzVar, zzfuf zzfufVar, boolean z) {
        this.f7684a = obj;
        this.b = zzfvoVar;
        this.f7685c = zzfvzVar;
        this.d = zzfufVar;
        this.e = z;
    }

    public static String h(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        zzaxf D = zzaxg.D();
        D.k();
        ((zzaxg) D.f).H(5);
        zzhzl B = zzhzl.B(bArr, 0, bArr.length);
        D.k();
        ((zzaxg) D.f).E(B);
        return Base64.encodeToString(((zzaxg) D.m()).h(), 11);
    }

    public final synchronized String a(Context context) {
        byte[] i;
        try {
            HashMap zzb = this.f7685c.zzb();
            zzb.put("f", "q");
            zzb.put("ctx", context);
            zzb.put("aid", null);
            i = i(zzb);
            if (this.e) {
                zzb.clear();
            }
        } catch (Throwable th) {
            throw th;
        }
        return h(i);
    }

    public final synchronized String b(Context context, View view, Activity activity) {
        byte[] i;
        try {
            HashMap zzc = this.f7685c.zzc();
            zzc.put("f", "v");
            zzc.put("ctx", context);
            zzc.put("aid", null);
            zzc.put("view", view);
            zzc.put("act", activity);
            i = i(zzc);
            if (this.e) {
                zzc.clear();
            }
        } catch (Throwable th) {
            throw th;
        }
        return h(i);
    }

    public final synchronized String c(Context context, String str, View view, Activity activity) {
        byte[] i;
        try {
            HashMap zzd = this.f7685c.zzd();
            zzd.put("f", "c");
            zzd.put("ctx", context);
            zzd.put("cs", str);
            zzd.put("aid", null);
            zzd.put("view", view);
            zzd.put("act", activity);
            i = i(zzd);
            if (this.e) {
                zzd.clear();
            }
        } catch (Throwable th) {
            throw th;
        }
        return h(i);
    }

    public final synchronized void d(MotionEvent motionEvent) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            HashMap zze = this.f7685c.zze();
            zze.put("aid", null);
            zze.put("evt", motionEvent);
            Object obj = this.f7684a;
            obj.getClass().getDeclaredMethod("he", Map.class).invoke(obj, zze);
            this.d.b(3003, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e) {
            throw new zzfvx(2005, e);
        }
    }

    public final synchronized boolean e() {
        Object obj;
        try {
            obj = this.f7684a;
        } catch (Exception e) {
            throw new zzfvx(2001, e);
        }
        return ((Boolean) obj.getClass().getDeclaredMethod("init", null).invoke(obj, null)).booleanValue();
    }

    public final synchronized void f() {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            Object obj = this.f7684a;
            obj.getClass().getDeclaredMethod("close", null).invoke(obj, null);
            this.d.b(3001, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e) {
            throw new zzfvx(2003, e);
        }
    }

    public final synchronized int g() {
        Object obj;
        try {
            obj = this.f7684a;
        } catch (Exception e) {
            throw new zzfvx(2006, e);
        }
        return ((Integer) obj.getClass().getDeclaredMethod("lcs", null).invoke(obj, null)).intValue();
    }

    public final synchronized byte[] i(Map map) {
        Object obj;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            obj = this.f7684a;
        } catch (Exception e) {
            this.d.c(2007, System.currentTimeMillis() - currentTimeMillis, e);
            return null;
        }
        return (byte[]) obj.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(obj, null, map);
    }
}
