package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.view.Choreographer;
import android.view.Surface;

/* loaded from: classes.dex */
public final class zzacm {

    /* renamed from: a, reason: collision with root package name */
    public final zzabw f3901a;
    public final zzact b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3902c;
    public long f;
    public boolean i;
    public boolean l;
    public boolean m;
    public int d = 0;
    public long e = -9223372036854775807L;
    public long g = -9223372036854775807L;
    public long h = -9223372036854775807L;
    public float j = 1.0f;
    public zzdn k = zzdn.f5927a;

    public zzacm(Context context, zzabw zzabwVar) {
        this.f3901a = zzabwVar;
        this.b = new zzact(context);
    }

    public final void a(int i) {
        if (i != 0) {
            if (i != 1) {
                this.d = Math.min(this.d, 2);
            } else {
                this.d = 0;
            }
        } else {
            this.d = 1;
        }
        this.b.a();
    }

    public final void b() {
        zzacp zzacpVar;
        this.f3902c = true;
        this.f = zzfj.s(this.k.zzb());
        zzact zzactVar = this.b;
        zzactVar.d = true;
        zzactVar.a();
        DisplayManager displayManager = (DisplayManager) zzactVar.b.getSystemService("display");
        zzacp zzacpVar2 = null;
        if (displayManager != null) {
            try {
                Choreographer choreographer = Choreographer.getInstance();
                if (Build.VERSION.SDK_INT >= 33) {
                    zzacpVar = new zzacs(choreographer, displayManager);
                } else {
                    zzacpVar = new zzacp(choreographer, displayManager);
                }
                zzacpVar2 = zzacpVar;
            } catch (RuntimeException e) {
                zzee.d("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e);
            }
        }
        zzactVar.f3909c = zzacpVar2;
        if (zzacpVar2 != null) {
            zzacpVar2.a();
        }
        zzactVar.c(false);
    }

    public final void c(Surface surface) {
        boolean z;
        if (surface != null) {
            z = true;
        } else {
            z = false;
        }
        this.l = z;
        this.m = false;
        zzact zzactVar = this.b;
        if (zzactVar.e != surface) {
            zzactVar.d();
            zzactVar.e = surface;
            zzactVar.c(true);
        }
        this.d = Math.min(this.d, 1);
    }

    public final void d(float f) {
        zzact zzactVar = this.b;
        zzactVar.f = f;
        zzabp zzabpVar = zzactVar.f3908a;
        zzabpVar.f3879a.a();
        zzabpVar.b.a();
        zzabpVar.f3880c = false;
        zzabpVar.d = -9223372036854775807L;
        zzabpVar.e = 0;
        zzactVar.b();
    }

    public final boolean e(boolean z) {
        if (z && (this.d == 3 || (!this.l && this.m))) {
            this.h = -9223372036854775807L;
            return true;
        }
        if (this.h == -9223372036854775807L) {
            return false;
        }
        if (this.k.zzb() < this.h) {
            return true;
        }
        this.h = -9223372036854775807L;
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:134:0x0152, code lost:
    
        if (r3 > 100000) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0161, code lost:
    
        if (r33 >= r37) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x016a, code lost:
    
        if (r30.f3902c != false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0080, code lost:
    
        if (r7 != false) goto L24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int f(long r31, long r33, long r35, long r37, boolean r39, boolean r40, com.google.android.gms.internal.ads.zzack r41) {
        /*
            Method dump skipped, instructions count: 673
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzacm.f(long, long, long, long, boolean, boolean, com.google.android.gms.internal.ads.zzack):int");
    }

    public final void g(float f) {
        boolean z;
        if (f > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        if (f == this.j) {
            return;
        }
        this.j = f;
        zzact zzactVar = this.b;
        zzactVar.i = f;
        zzactVar.c(false);
    }
}
