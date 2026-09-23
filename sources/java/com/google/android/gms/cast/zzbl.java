package com.google.android.gms.cast;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes.dex */
public final class zzbl extends com.google.android.gms.cast.internal.zzai {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbm f3664c;

    public zzbl(zzbm zzbmVar) {
        this.f3664c = zzbmVar;
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void G0(final String str, final String str2) {
        zzbm.w.b("Receive (type=text, ns=%s) %s", str, str2);
        this.f3664c.i().post(new Runnable() { // from class: com.google.android.gms.cast.zzbj
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                Cast.MessageReceivedCallback messageReceivedCallback;
                zzbl zzblVar = zzbl.this;
                HashMap hashMap = zzblVar.f3664c.s;
                String str3 = str;
                synchronized (hashMap) {
                    messageReceivedCallback = (Cast.MessageReceivedCallback) hashMap.get(str3);
                }
                if (messageReceivedCallback != null) {
                    String str4 = str2;
                    CastDevice castDevice = zzblVar.f3664c.q;
                    messageReceivedCallback.a(str4);
                    return;
                }
                zzbm.w.b("Discarded message for unknown namespace '%s'", str3);
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void T2(final com.google.android.gms.cast.internal.zzac zzacVar) {
        this.f3664c.i().post(new Runnable() { // from class: com.google.android.gms.cast.zzbh
            @Override // java.lang.Runnable
            public final void run() {
                boolean z;
                boolean z2;
                boolean z3;
                zzbm zzbmVar = zzbl.this.f3664c;
                Cast.Listener listener = zzbmVar.t;
                com.google.android.gms.cast.internal.zzac zzacVar2 = zzacVar;
                ApplicationMetadata applicationMetadata = zzacVar2.h;
                zzao zzaoVar = zzacVar2.j;
                if (!CastUtils.c(applicationMetadata, zzbmVar.j)) {
                    zzbmVar.j = applicationMetadata;
                    listener.c(applicationMetadata);
                }
                double d = zzacVar2.f3610c;
                if (!Double.isNaN(d) && Math.abs(d - zzbmVar.l) > 1.0E-7d) {
                    zzbmVar.l = d;
                    z = true;
                } else {
                    z = false;
                }
                boolean z4 = zzacVar2.f;
                if (z4 != zzbmVar.m) {
                    zzbmVar.m = z4;
                    z = true;
                }
                Logger logger = zzbm.w;
                logger.b("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(zzbmVar.f3666c));
                if (listener != null && (z || zzbmVar.f3666c)) {
                    listener.g();
                }
                Double.isNaN(zzacVar2.k);
                int i = zzacVar2.g;
                if (i != zzbmVar.n) {
                    zzbmVar.n = i;
                    z2 = true;
                } else {
                    z2 = false;
                }
                logger.b("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z2), Boolean.valueOf(zzbmVar.f3666c));
                if (listener != null && (z2 || zzbmVar.f3666c)) {
                    listener.a(zzbmVar.n);
                }
                int i2 = zzacVar2.i;
                if (i2 != zzbmVar.o) {
                    zzbmVar.o = i2;
                    z3 = true;
                } else {
                    z3 = false;
                }
                logger.b("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z3), Boolean.valueOf(zzbmVar.f3666c));
                if (listener != null && (z3 || zzbmVar.f3666c)) {
                    listener.f(zzbmVar.o);
                }
                if (!CastUtils.c(zzbmVar.p, zzaoVar)) {
                    zzbmVar.p = zzaoVar;
                }
                zzbmVar.f3666c = false;
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void b1(final com.google.android.gms.cast.internal.zza zzaVar) {
        this.f3664c.i().post(new Runnable() { // from class: com.google.android.gms.cast.zzbi
            @Override // java.lang.Runnable
            public final void run() {
                boolean z;
                zzbm zzbmVar = zzbl.this.f3664c;
                zzbmVar.getClass();
                String str = zzaVar.f3608c;
                if (!CastUtils.c(str, zzbmVar.k)) {
                    zzbmVar.k = str;
                    z = true;
                } else {
                    z = false;
                }
                zzbm.w.b("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(zzbmVar.d));
                Cast.Listener listener = zzbmVar.t;
                if (listener != null && (z || zzbmVar.d)) {
                    listener.d();
                }
                zzbmVar.d = false;
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void d(final int i) {
        zzbm zzbmVar = this.f3664c;
        zzbmVar.g(i);
        if (zzbmVar.t != null) {
            zzbmVar.i().post(new Runnable() { // from class: com.google.android.gms.cast.zzbg
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzbl.this.f3664c.t.b(i);
                }
            });
        }
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void e(int i) {
        this.f3664c.g(i);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void e2() {
        zzbm.w.b("Deprecated callback: \"onStatusReceived\"", new Object[0]);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void f(final int i) {
        this.f3664c.i().post(new Runnable() { // from class: com.google.android.gms.cast.zzbf
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzbm zzbmVar = zzbl.this.f3664c;
                zzbmVar.v = 4;
                List list = zzbmVar.u;
                int i2 = i;
                synchronized (list) {
                    try {
                        Iterator it = zzbmVar.u.iterator();
                        while (it.hasNext()) {
                            ((zzp) it.next()).c(i2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void j0(String str, byte[] bArr) {
        Logger logger = zzbm.w;
        zzbm.w.b("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void o3(int i, long j) {
        this.f3664c.h(i, j);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void p(int i) {
        this.f3664c.g(i);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void z4(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
        zzbm zzbmVar = this.f3664c;
        zzbmVar.j = applicationMetadata;
        zzbmVar.k = str;
        com.google.android.gms.cast.internal.zzr zzrVar = new com.google.android.gms.cast.internal.zzr(new Status(0), applicationMetadata, str, str2, z);
        synchronized (zzbmVar.h) {
            try {
                TaskCompletionSource taskCompletionSource = zzbmVar.e;
                if (taskCompletionSource != null) {
                    taskCompletionSource.b(zzrVar);
                }
                zzbmVar.e = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzb(final int i) {
        this.f3664c.i().post(new Runnable() { // from class: com.google.android.gms.cast.zzbk
            @Override // java.lang.Runnable
            public final void run() {
                zzbl zzblVar = zzbl.this;
                zzbm zzbmVar = zzblVar.f3664c;
                zzbmVar.n = -1;
                zzbmVar.o = -1;
                zzbmVar.j = null;
                zzbmVar.k = null;
                zzbmVar.l = 0.0d;
                zzbmVar.s();
                zzbmVar.m = false;
                zzbmVar.p = null;
                zzbmVar.v = 1;
                List list = zzbmVar.u;
                int i2 = i;
                synchronized (list) {
                    try {
                        Iterator it = zzbmVar.u.iterator();
                        while (it.hasNext()) {
                            ((zzp) it.next()).d(i2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                zzbm zzbmVar2 = zzblVar.f3664c;
                zzbmVar2.j();
                zzbmVar2.doUnregisterEventListener((ListenerHolder.ListenerKey) Preconditions.checkNotNull(zzbmVar2.registerListener(zzbmVar2.f3665a, "castDeviceControllerListenerKey").getListenerKey(), "Key must not be null"), 8415);
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzc(final int i) {
        this.f3664c.i().post(new Runnable() { // from class: com.google.android.gms.cast.zzbe
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                int i2 = i;
                zzbl zzblVar = zzbl.this;
                if (i2 == 0) {
                    zzbm zzbmVar = zzblVar.f3664c;
                    zzbmVar.v = 3;
                    zzbmVar.f3666c = true;
                    zzbmVar.d = true;
                    synchronized (zzbmVar.u) {
                        try {
                            Iterator it = zzbmVar.u.iterator();
                            while (it.hasNext()) {
                                ((zzp) it.next()).a();
                            }
                        } finally {
                        }
                    }
                    return;
                }
                zzbm zzbmVar2 = zzblVar.f3664c;
                zzbmVar2.v = 1;
                synchronized (zzbmVar2.u) {
                    try {
                        Iterator it2 = zzbmVar2.u.iterator();
                        while (it2.hasNext()) {
                            ((zzp) it2.next()).b(i2);
                        }
                    } finally {
                    }
                }
                zzblVar.f3664c.j();
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzf(int i) {
        this.f3664c.l(i);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzp(long j) {
        this.f3664c.h(0, j);
    }
}
