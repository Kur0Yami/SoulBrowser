package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzip implements zzlg {
    public static final zzgtd p;

    /* renamed from: a, reason: collision with root package name */
    public final zzbe f9023a;
    public final zzbd b;

    /* renamed from: c, reason: collision with root package name */
    public final zzaan f9024c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;
    public final long i;
    public final long j;
    public final long k;
    public final long l;
    public final zzgtg m;
    public final ConcurrentHashMap n;
    public long o;

    static {
        zzgvs zzgvsVar = zzgtd.f;
        Object[] objArr = {"file", "content", "data", "android.resource", "rawresource", "asset"};
        zzguw.a(6, objArr);
        p = zzgtd.x(6, objArr);
    }

    public zzip() {
        zzaan zzaanVar = new zzaan();
        j("bufferForPlaybackMs", 1000, 0, "0");
        j("bufferForPlaybackForLocalPlaybackMs", 1000, 0, "0");
        j("bufferForPlaybackAfterRebufferMs", 2000, 0, "0");
        j("bufferForPlaybackAfterRebufferForLocalPlaybackMs", 1000, 0, "0");
        j("minBufferMs", 50000, 1000, "bufferForPlaybackMs");
        j("minBufferForLocalPlaybackMs", 1000, 1000, "bufferForPlaybackForLocalPlaybackMs");
        j("minBufferMs", 50000, 2000, "bufferForPlaybackAfterRebufferMs");
        j("minBufferForLocalPlaybackMs", 1000, 1000, "bufferForPlaybackAfterRebufferForLocalPlaybackMs");
        j("maxBufferMs", 50000, 50000, "minBufferMs");
        j("maxBufferForLocalPlaybackMs", 50000, 1000, "minBufferForLocalPlaybackMs");
        j("backBufferDurationMs", 0, 0, "0");
        this.f9023a = new zzbe();
        this.b = new zzbd();
        this.f9024c = zzaanVar;
        long s = zzfj.s(50000L);
        this.d = s;
        long s2 = zzfj.s(1000L);
        this.e = s2;
        this.f = s;
        this.g = s;
        this.h = s2;
        this.i = s2;
        this.j = zzfj.s(2000L);
        this.k = s2;
        this.l = zzfj.s(0L);
        this.n = new ConcurrentHashMap();
        this.m = zzgtg.a(zzgvd.k);
        this.o = -1L;
    }

    public static void j(String str, int i, int i2, String str2) {
        boolean z;
        if (i >= i2) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
        } else {
            throw new IllegalArgumentException(zzgqr.b("%s cannot be less than %s", str, str2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final void a(zzpn zzpnVar) {
        ConcurrentHashMap concurrentHashMap = this.n;
        zzio zzioVar = (zzio) concurrentHashMap.get(zzpnVar);
        if (zzioVar != null) {
            int i = zzioVar.f9021a - 1;
            zzioVar.f9021a = i;
            if (i == 0) {
                concurrentHashMap.remove(zzpnVar);
                h();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final void b(zzlf zzlfVar, zzzw[] zzzwVarArr) {
        int i;
        zzpn zzpnVar = zzlfVar.f9083a;
        Integer num = (Integer) this.m.get(zzpnVar.f9164a);
        if (num != null && num.intValue() != -1) {
            i = num.intValue();
        } else {
            i = -1;
        }
        zzio zzioVar = (zzio) this.n.get(zzpnVar);
        zzioVar.getClass();
        if (i == -1) {
            boolean i2 = i(zzlfVar);
            int length = zzzwVarArr.length;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                int i5 = 13107200;
                if (i3 >= length) {
                    break;
                }
                zzzw zzzwVar = zzzwVarArr[i3];
                if (zzzwVar != null) {
                    int i6 = zzzwVar.zza().f4646c;
                    if (i6 != -1) {
                        if (i6 != 0) {
                            if (i6 != 1) {
                                i5 = i6 != 2 ? i6 != 4 ? 131072 : 26214400 : i2 ? 19660800 : 131072000;
                            }
                        } else {
                            i5 = 144310272;
                        }
                    }
                    i4 += i5;
                }
                i3++;
            }
            i = Math.max(13107200, i4);
        }
        zzioVar.f9022c = i;
        h();
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final zzaah c(zzpn zzpnVar) {
        return new zzin(this, zzpnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final boolean d(zzlf zzlfVar) {
        long j;
        boolean z;
        int i;
        boolean z2 = zzlfVar.f;
        long j2 = zzlfVar.d;
        float f = zzlfVar.e;
        boolean i2 = i(zzlfVar);
        String str = zzfj.f7405a;
        if (f != 1.0f) {
            j2 = Math.round(j2 / f);
        }
        if (z2) {
            if (i2) {
                j = this.k;
                z = true;
            } else {
                j = this.j;
                z = false;
            }
        } else if (i2) {
            j = this.i;
            z = true;
        } else {
            j = this.h;
            z = false;
        }
        long j3 = zzlfVar.g;
        if (j3 != -9223372036854775807L) {
            j = Math.min(j3 / 2, j);
        }
        if (j > 0 && j2 < j) {
            if (!z) {
                zzpn zzpnVar = zzlfVar.f9083a;
                zzio zzioVar = (zzio) this.n.get(zzpnVar);
                zzioVar.getClass();
                synchronized (zzioVar) {
                    i = zzioVar.d;
                }
                int i3 = i * 65536;
                zzio zzioVar2 = (zzio) this.n.get(zzpnVar);
                zzioVar2.getClass();
                if (i3 >= zzioVar2.f9022c) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final void e(zzpn zzpnVar) {
        ConcurrentHashMap concurrentHashMap = this.n;
        zzio zzioVar = (zzio) concurrentHashMap.get(zzpnVar);
        if (zzioVar != null) {
            int i = zzioVar.f9021a - 1;
            zzioVar.f9021a = i;
            if (i == 0) {
                concurrentHashMap.remove(zzpnVar);
                h();
            }
        }
        if (concurrentHashMap.isEmpty()) {
            this.o = -1L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final boolean f(zzlf zzlfVar) {
        int i;
        long j;
        long j2;
        ConcurrentHashMap concurrentHashMap = this.n;
        zzpn zzpnVar = zzlfVar.f9083a;
        zzio zzioVar = (zzio) concurrentHashMap.get(zzpnVar);
        zzioVar.getClass();
        zzio zzioVar2 = (zzio) this.n.get(zzpnVar);
        zzioVar2.getClass();
        synchronized (zzioVar2) {
            i = zzioVar2.d;
        }
        int i2 = i * 65536;
        zzio zzioVar3 = (zzio) this.n.get(zzpnVar);
        zzioVar3.getClass();
        int i3 = zzioVar3.f9022c;
        boolean z = false;
        if (zzpnVar.equals(zzpn.f9163c)) {
            if (i2 >= i3) {
                return false;
            }
            return true;
        }
        boolean i4 = i(zzlfVar);
        if (i4) {
            j = this.e;
        } else {
            j = this.d;
        }
        if (i4) {
            j2 = this.g;
        } else {
            j2 = this.f;
        }
        float f = zzlfVar.e;
        if (f > 1.0f) {
            j = Math.min(zzfj.w(j, f), j2);
        }
        long j3 = zzlfVar.d;
        if (j3 < Math.max(j, 500000L)) {
            if (i4 || i2 < i3) {
                z = true;
            }
            zzioVar.b = z;
            if (!z && j3 < 500000) {
                zzee.c("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j3 >= j2 || i2 >= i3) {
            zzioVar.b = false;
        }
        return zzioVar.b;
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, com.google.android.gms.internal.ads.zzio] */
    @Override // com.google.android.gms.internal.ads.zzlg
    public final void g(zzpn zzpnVar) {
        boolean z;
        int i;
        long id = Thread.currentThread().getId();
        long j = this.o;
        if (j == -1 || j == id) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.g("Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).", z);
        this.o = id;
        ConcurrentHashMap concurrentHashMap = this.n;
        zzio zzioVar = (zzio) concurrentHashMap.get(zzpnVar);
        if (zzioVar == null) {
            ?? obj = new Object();
            obj.f9021a = 1;
            concurrentHashMap.put(zzpnVar, obj);
        } else {
            zzioVar.f9021a++;
        }
        zzio zzioVar2 = (zzio) concurrentHashMap.get(zzpnVar);
        zzioVar2.getClass();
        Integer num = (Integer) this.m.get(zzpnVar.f9164a);
        if (num != null && num.intValue() != -1) {
            i = num.intValue();
        } else {
            i = -1;
        }
        if (i == -1) {
            i = 13107200;
        }
        zzioVar2.f9022c = i;
        zzioVar2.b = false;
    }

    public final void h() {
        zzaan zzaanVar = this.f9024c;
        ConcurrentHashMap concurrentHashMap = this.n;
        int i = 0;
        if (concurrentHashMap.isEmpty()) {
            synchronized (zzaanVar) {
                zzaanVar.c(0);
            }
        } else {
            Iterator it = concurrentHashMap.values().iterator();
            while (it.hasNext()) {
                i += ((zzio) it.next()).f9022c;
            }
            zzaanVar.c(i);
        }
    }

    public final boolean i(zzlf zzlfVar) {
        zzbf zzbfVar = zzlfVar.b;
        zzag zzagVar = zzbfVar.b(zzbfVar.o(zzlfVar.f9084c.f9337a, this.b).f4558c, this.f9023a, 0L).b.b;
        if (zzagVar != null) {
            String scheme = zzagVar.f3994a.getScheme();
            if (!TextUtils.isEmpty(scheme) && !p.contains(scheme)) {
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final long zzf() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final boolean zzj() {
        Iterator it = this.n.values().iterator();
        while (it.hasNext()) {
            if (((zzio) it.next()).b) {
                return false;
            }
        }
        return true;
    }
}
