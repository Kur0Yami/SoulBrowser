package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.os.Trace;
import j$.util.Objects;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"HandlerLeak"})
/* loaded from: classes.dex */
public final class zzaau extends Handler implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final zzaav f3857c;
    public zzaar f;
    public IOException g;
    public int h;
    public Thread i;
    public boolean j;
    public volatile boolean k;
    public final /* synthetic */ zzaaz l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaau(zzaaz zzaazVar, Looper looper, zzaav zzaavVar, zzaar zzaarVar, long j) {
        super(looper);
        Objects.requireNonNull(zzaazVar);
        this.l = zzaazVar;
        this.f3857c = zzaavVar;
        this.f = zzaarVar;
    }

    public final void a(boolean z) {
        this.k = z;
        this.g = null;
        if (hasMessages(1)) {
            this.j = true;
            removeMessages(1);
            if (!z) {
                sendEmptyMessage(2);
            }
        } else {
            synchronized (this) {
                try {
                    this.j = true;
                    ((zzxb) this.f3857c).g = true;
                    Thread thread = this.i;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z) {
            this.l.b = null;
            SystemClock.elapsedRealtime();
            zzaar zzaarVar = this.f;
            zzaarVar.getClass();
            ((zzxk) zzaarVar).j(this.f3857c, true);
            this.f = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b() {
        zzvx obj;
        SystemClock.elapsedRealtime();
        zzaar zzaarVar = this.f;
        zzaarVar.getClass();
        int i = this.h;
        zzxk zzxkVar = (zzxk) zzaarVar;
        zzxb zzxbVar = (zzxb) this.f3857c;
        zzhy zzhyVar = zzxbVar.b;
        if (i == 0) {
            Uri uri = zzxbVar.j.f8483a;
            Map map = Collections.EMPTY_MAP;
            obj = new Object();
        } else {
            Uri uri2 = zzhyVar.b;
            obj = new Object();
        }
        zzwq zzwqVar = zzxkVar.h;
        zzwqVar.a(new zzwp(zzwqVar, obj, new zzwc(-1, null, zzfj.r(zzxbVar.i), zzfj.r(zzxkVar.D)), i));
        this.g = null;
        zzaaz zzaazVar = this.l;
        zzaau zzaauVar = zzaazVar.b;
        zzaauVar.getClass();
        ((zzabe) zzaazVar.f3859a).execute(zzaauVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0097  */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzvx] */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void handleMessage(android.os.Message r29) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaau.handleMessage(android.os.Message):void");
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            synchronized (this) {
                z = this.j;
                this.i = Thread.currentThread();
            }
            if (!z) {
                zzaav zzaavVar = this.f3857c;
                String simpleName = zzaavVar.getClass().getSimpleName();
                StringBuilder sb = new StringBuilder(simpleName.length() + 5);
                sb.append("load:");
                sb.append(simpleName);
                Trace.beginSection(sb.toString());
                try {
                    ((zzxb) zzaavVar).a();
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
            synchronized (this) {
                this.i = null;
                Thread.interrupted();
            }
            if (!this.k) {
                sendEmptyMessage(2);
            }
        } catch (IOException e) {
            if (!this.k) {
                obtainMessage(3, e).sendToTarget();
            }
        } catch (OutOfMemoryError e2) {
            if (!this.k) {
                zzee.f("LoadTask", "OutOfMemory error loading stream", e2);
                obtainMessage(3, new zzaay(e2)).sendToTarget();
            }
        } catch (Error e3) {
            if (!this.k) {
                zzee.f("LoadTask", "Unexpected error loading stream", e3);
                obtainMessage(4, e3).sendToTarget();
            }
            throw e3;
        } catch (Exception e4) {
            if (!this.k) {
                zzee.f("LoadTask", "Unexpected exception loading stream", e4);
                obtainMessage(3, new zzaay(e4)).sendToTarget();
            }
        }
    }
}
