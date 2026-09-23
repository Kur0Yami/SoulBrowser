package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Future;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzazr implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4508c;
    public final /* synthetic */ zzazt f;

    public zzazr(zzazt zzaztVar, int i) {
        this.f4508c = i;
        this.f = zzaztVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzawp zzawpVar;
        int i = this.f4508c;
        zzazt zzaztVar = this.f;
        if (i > 0) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException unused) {
            }
        }
        try {
            Context context = zzaztVar.f4510a;
            zzawpVar = zzfum.a(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
        } catch (Throwable unused2) {
            zzawpVar = null;
        }
        zzazt zzaztVar2 = this.f;
        zzaztVar2.h = zzawpVar;
        int i2 = this.f4508c;
        if (i2 < 4) {
            if (zzawpVar == null || !zzawpVar.d0() || zzawpVar.y0().equals("0000000000000000000000000000000000000000000000000000000000000000") || !zzawpVar.C0() || !zzawpVar.D0().D() || zzawpVar.D0().E() == -2) {
                int i3 = i2 + 1;
                if (zzaztVar2.l) {
                    Future<?> submit = zzaztVar2.b.submit(new zzazr(zzaztVar2, i3));
                    if (i3 == 0) {
                        zzaztVar2.i = submit;
                    }
                }
            }
        }
    }
}
