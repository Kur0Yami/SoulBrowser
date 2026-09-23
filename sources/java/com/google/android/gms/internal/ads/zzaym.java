package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public abstract class zzaym implements zzayl {
    public static volatile zzazt y;

    /* renamed from: c, reason: collision with root package name */
    public MotionEvent f4477c;
    public double n;
    public double o;
    public double p;
    public float q;
    public float r;
    public float s;
    public float t;
    public final DisplayMetrics w;
    public final zzazl x;
    public final LinkedList f = new LinkedList();
    public long g = 0;
    public long h = 0;
    public long i = 0;
    public long j = 0;
    public long k = 0;
    public long l = 0;
    public long m = 0;
    public boolean u = false;
    public boolean v = false;

    public zzaym(Context context) {
        try {
            zzaxp.a();
            this.w = context.getResources().getDisplayMetrics();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z3)).booleanValue()) {
                this.x = new zzazl();
            }
        } catch (Throwable unused) {
        }
    }

    public abstract zzavs a(Context context);

    public abstract zzavs b(Context context, View view, Activity activity);

    public abstract zzavs c(Context context, View view, Activity activity);

    public abstract zzazv d(MotionEvent motionEvent);

    public abstract long e(StackTraceElement[] stackTraceElementArr);

    public final void f() {
        this.k = 0L;
        this.g = 0L;
        this.h = 0L;
        this.i = 0L;
        this.j = 0L;
        this.l = 0L;
        this.m = 0L;
        LinkedList linkedList = this.f;
        if (!linkedList.isEmpty()) {
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                ((MotionEvent) it.next()).recycle();
            }
            linkedList.clear();
        } else {
            MotionEvent motionEvent = this.f4477c;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.f4477c = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String g(android.content.Context r20, java.lang.String r21, int r22, android.view.View r23, android.app.Activity r24) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaym.g(android.content.Context, java.lang.String, int, android.view.View, android.app.Activity):java.lang.String");
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final synchronized void zzd(MotionEvent motionEvent) {
        Long l;
        try {
            if (this.u) {
                f();
                this.u = false;
            }
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1 || action == 2) {
                    double rawX = motionEvent.getRawX();
                    double rawY = motionEvent.getRawY();
                    double d = rawX - this.o;
                    double d2 = rawY - this.p;
                    this.n += Math.sqrt((d2 * d2) + (d * d));
                    this.o = rawX;
                    this.p = rawY;
                }
            } else {
                this.n = 0.0d;
                this.o = motionEvent.getRawX();
                this.p = motionEvent.getRawY();
            }
            int action2 = motionEvent.getAction();
            if (action2 != 0) {
                try {
                    if (action2 != 1) {
                        if (action2 != 2) {
                            if (action2 == 3) {
                                this.j++;
                            }
                        } else {
                            this.h += motionEvent.getHistorySize() + 1;
                            zzazv d3 = d(motionEvent);
                            Long l2 = d3.d;
                            if (l2 != null && d3.g != null) {
                                this.l = l2.longValue() + d3.g.longValue() + this.l;
                            }
                            if (this.w != null && (l = d3.e) != null && d3.h != null) {
                                this.m = l.longValue() + d3.h.longValue() + this.m;
                            }
                        }
                    } else {
                        MotionEvent obtain = MotionEvent.obtain(motionEvent);
                        this.f4477c = obtain;
                        LinkedList linkedList = this.f;
                        linkedList.add(obtain);
                        if (linkedList.size() > 6) {
                            ((MotionEvent) linkedList.remove()).recycle();
                        }
                        this.i++;
                        this.k = e(new Throwable().getStackTrace());
                    }
                } catch (zzazj unused) {
                }
            } else {
                this.q = motionEvent.getX();
                this.r = motionEvent.getY();
                this.s = motionEvent.getRawX();
                this.t = motionEvent.getRawY();
                this.g++;
            }
            this.v = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final synchronized void zze(int i, int i2, int i3) {
        try {
            if (this.f4477c != null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.i3)).booleanValue()) {
                    f();
                } else {
                    this.f4477c.recycle();
                }
            }
            DisplayMetrics displayMetrics = this.w;
            if (displayMetrics != null) {
                float f = displayMetrics.density;
                this.f4477c = MotionEvent.obtain(0L, i3, 1, i * f, i2 * f, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            } else {
                this.f4477c = null;
            }
            this.v = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzf(Context context, String str, View view, Activity activity) {
        return g(context, str, 3, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzg(Context context, String str, View view) {
        return g(context, str, 3, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public void zzh(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzi(StackTraceElement[] stackTraceElementArr) {
        zzazl zzazlVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z3)).booleanValue() && (zzazlVar = this.x) != null) {
            zzazlVar.f4501a = new ArrayList(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzj(Context context, View view, Activity activity) {
        return g(context, null, 2, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzk(Context context) {
        return "19";
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzl(Context context) {
        char[] cArr = zzazw.f4516a;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return g(context, null, 1, null, null);
        }
        throw new IllegalStateException("The caller must not be called from the UI thread.");
    }
}
