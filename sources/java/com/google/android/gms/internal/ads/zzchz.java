package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.util.SparseBooleanArray;
import android.view.Surface;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* loaded from: classes.dex */
public final class zzchz extends zzcfb implements zzhz, zzmx {
    public static final /* synthetic */ int A = 0;
    public final Context g;
    public final zzchj h;
    public final zzzu i;
    public final zzcfj j;
    public final WeakReference k;
    public final zzxn l;
    public zzms m;
    public ByteBuffer n;
    public boolean o;
    public zzcfa p;
    public int q;
    public int r;
    public long s;
    public final String t;
    public final int u;
    public Integer w;
    public final ArrayList x;
    public volatile zzchm y;
    public final Object v = new Object();
    public final HashSet z = new HashSet();

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0110, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.u2)).booleanValue() == false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzchz(android.content.Context r6, com.google.android.gms.internal.ads.zzcfj r7, com.google.android.gms.internal.ads.zzcfk r8, java.lang.Integer r9) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzchz.<init>(android.content.Context, com.google.android.gms.internal.ads.zzcfj, com.google.android.gms.internal.ads.zzcfk, java.lang.Integer):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.ads.zzdq, java.lang.Object] */
    public final void A() {
        String str;
        boolean z;
        zzms zzmsVar = this.m;
        if (zzmsVar != null) {
            zzmsVar.f9125c.d();
            zzkp zzkpVar = zzmsVar.b;
            zzkpVar.p();
            zzkpVar.r.f.b(this);
            zzms zzmsVar2 = this.m;
            zzmsVar2.f9125c.d();
            zzkp zzkpVar2 = zzmsVar2.b;
            zzkpVar2.getClass();
            String hexString = Integer.toHexString(System.identityHashCode(zzkpVar2));
            String str2 = zzfj.f7405a;
            HashSet hashSet = zzal.f4150a;
            synchronized (zzal.class) {
                str = zzal.b;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 41 + String.valueOf(str2).length() + 3 + String.valueOf(str).length() + 1);
            android.support.v4.media.a.z(sb, "Release ", hexString, " [AndroidXMedia3/1.9.0-alpha01] [", str2);
            sb.append("] [");
            sb.append(str);
            sb.append("]");
            zzee.b("ExoPlayerImpl", sb.toString());
            zzkpVar2.p();
            zzkpVar2.x.a(false);
            zzfp zzfpVar = zzkpVar2.y;
            if (zzfpVar.f7520a) {
                zzfpVar.f7520a = false;
            }
            zzko zzkoVar = zzkpVar2.C;
            if (zzkoVar != null && Build.VERSION.SDK_INT >= 34) {
                zzkoVar.a();
            }
            zzfa zzfaVar = zzkpVar2.B;
            zzfaVar.e.zzm();
            zzbb zzbbVar = zzfaVar.f7144a;
            zzaz zzazVar = zzfaVar.b;
            zzkp zzkpVar3 = (zzkp) zzbbVar;
            zzkpVar3.p();
            zzazVar.getClass();
            zzkpVar3.m.b(zzazVar);
            zzlc zzlcVar = zzkpVar2.l;
            if (!zzlcVar.L && zzlcVar.n.getThread().isAlive()) {
                zzlcVar.L = true;
                ?? obj = new Object();
                ((zzfd) zzlcVar.l.j(7, obj)).a();
                z = obj.e(zzlcVar.x);
            } else {
                z = true;
            }
            if (!z) {
                zzed zzedVar = zzkpVar2.m;
                zzedVar.c(10, zzkd.f9057a);
                zzedVar.d();
            }
            zzkpVar2.m.e();
            zzkpVar2.j.zzm();
            zzaam zzaamVar = zzkpVar2.t;
            final zzoz zzozVar = zzkpVar2.r;
            zzaamVar.b(zzozVar);
            zzkpVar2.X.getClass();
            zzma l = zzkp.l(zzkpVar2.X, 1);
            zzkpVar2.X = l;
            zzma g = l.g(l.b);
            zzkpVar2.X = g;
            g.p = g.r;
            zzkpVar2.X.q = 0L;
            zzdx zzdxVar = zzozVar.h;
            zzdxVar.getClass();
            zzdxVar.g(new Runnable() { // from class: com.google.android.gms.internal.ads.zzmy
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzoz zzozVar2 = zzoz.this;
                    zzozVar2.n(zzozVar2.o(), 1028, new Object());
                    zzozVar2.f.e();
                }
            });
            Surface surface = zzkpVar2.M;
            if (surface != null) {
                surface.release();
                zzkpVar2.M = null;
            }
            zzgux zzguxVar = zzcz.f5611a;
            zzkpVar2.V = true;
            this.m = null;
            zzcfb.f.decrementAndGet();
        }
    }

    public final void B() {
        zzms zzmsVar = this.m;
        zzmsVar.f9125c.d();
        zzkp zzkpVar = zzmsVar.b;
        zzkpVar.p();
        zzkpVar.d(null);
        zzgtd zzgtdVar = zzguy.i;
        long j = zzkpVar.X.r;
        new zzcz(zzgtdVar);
    }

    public final void C(int i) {
        zzchj zzchjVar = this.h;
        synchronized (zzchjVar) {
            zzchjVar.d = i * 1000;
        }
    }

    public final void D(int i) {
        zzchj zzchjVar = this.h;
        synchronized (zzchjVar) {
            zzchjVar.e = i * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final /* synthetic */ void a(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void b(int i) {
        zzcfa zzcfaVar = this.p;
        if (zzcfaVar != null) {
            zzcfaVar.zzs(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void c(int i) {
        this.r += i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzhz
    public final void d(zzgt zzgtVar, zzhf zzhfVar, boolean z) {
        if (zzgtVar instanceof zzhu) {
            synchronized (this.v) {
                this.x.add((zzhu) zzgtVar);
            }
        } else if (zzgtVar instanceof zzchm) {
            this.y = (zzchm) zzgtVar;
            final zzcfk zzcfkVar = (zzcfk) this.k.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u2)).booleanValue() && zzcfkVar != null && this.y.o) {
                final HashMap hashMap = new HashMap();
                hashMap.put("gcacheHit", String.valueOf(this.y.q));
                hashMap.put("gcacheDownloaded", String.valueOf(this.y.r));
                com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzchy
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        int i = zzchz.A;
                        zzcfk.this.S("onGcacheInfoEvent", hashMap);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final /* synthetic */ void e(zzbb zzbbVar, zzmw zzmwVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public final void f(zzhf zzhfVar, boolean z, int i) {
        this.q += i;
    }

    public final void finalize() {
        zzcfb.f5098c.decrementAndGet();
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("SimpleExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void g(zzbv zzbvVar) {
        zzcfa zzcfaVar = this.p;
        if (zzcfaVar != null) {
            zzcfaVar.b(zzbvVar.f4911a, zzbvVar.b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final /* synthetic */ void h(zzik zzikVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void i(zzv zzvVar) {
        zzcfk zzcfkVar = (zzcfk) this.k.get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u2)).booleanValue() && zzcfkVar != null) {
            HashMap hashMap = new HashMap();
            String str = zzvVar.l;
            if (str != null) {
                hashMap.put("audioMime", str);
            }
            String str2 = zzvVar.m;
            if (str2 != null) {
                hashMap.put("audioSampleMime", str2);
            }
            String str3 = zzvVar.j;
            if (str3 != null) {
                hashMap.put("audioCodec", str3);
            }
            zzcfkVar.S("onMetadataEvent", hashMap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final /* synthetic */ void j(zzmv zzmvVar, zzwc zzwcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final /* synthetic */ void k(zzmv zzmvVar, int i, long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void l(zzau zzauVar) {
        zzcfa zzcfaVar = this.p;
        if (zzcfaVar != null) {
            zzcfaVar.e(zzauVar, "onPlayerError");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void m(zzv zzvVar) {
        zzcfk zzcfkVar = (zzcfk) this.k.get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u2)).booleanValue() && zzcfkVar != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("frameRate", String.valueOf(zzvVar.x));
            hashMap.put("bitRate", String.valueOf(zzvVar.i));
            int i = zzvVar.t;
            int i2 = zzvVar.u;
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 1 + String.valueOf(i2).length());
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            hashMap.put("resolution", sb.toString());
            String str = zzvVar.l;
            if (str != null) {
                hashMap.put("videoMime", str);
            }
            String str2 = zzvVar.m;
            if (str2 != null) {
                hashMap.put("videoSampleMime", str2);
            }
            String str3 = zzvVar.j;
            if (str3 != null) {
                hashMap.put("videoCodec", str3);
            }
            zzcfkVar.S("onMetadataEvent", hashMap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void o(IOException iOException) {
        zzcfa zzcfaVar = this.p;
        if (zzcfaVar != null) {
            if (this.j.j) {
                zzcfaVar.c(iOException);
            } else {
                zzcfaVar.e(iOException, "onLoadError");
            }
        }
    }

    public final boolean p() {
        return this.m != null;
    }

    public final void q(boolean z) {
        zzms zzmsVar = this.m;
        zzmsVar.f9125c.d();
        zzkp zzkpVar = zzmsVar.b;
        zzkpVar.p();
        zzma zzmaVar = zzkpVar.X;
        int i = zzmaVar.n;
        int i2 = 0;
        if (i == 1) {
            if (!z) {
                i = 1;
                i2 = 1;
            } else {
                i = 1;
            }
        }
        if (zzmaVar.l != z || i != i2 || zzmaVar.m != 1) {
            zzkpVar.D++;
            zzma h = zzmaVar.h(1, i2, z);
            ((zzfd) zzkpVar.l.l.zze(1, z ? 1 : 0, (i2 << 4) | 1)).a();
            zzkpVar.i(h, 0, false, 5, -9223372036854775807L, -1);
        }
    }

    public final void r(int i) {
        zzchj zzchjVar = this.h;
        synchronized (zzchjVar) {
            zzchjVar.b = i * 1000;
        }
    }

    public final void s(int i) {
        zzchj zzchjVar = this.h;
        synchronized (zzchjVar) {
            zzchjVar.f5151c = i * 1000;
        }
    }

    public final long t() {
        if (this.y != null && this.y.p) {
            return 0L;
        }
        return this.q;
    }

    public final long u() {
        if (this.y != null && this.y.p && this.y.q) {
            return Math.min(this.q, this.y.s);
        }
        return 0L;
    }

    public final long v() {
        if (this.y != null && this.y.p) {
            return this.y.n();
        }
        synchronized (this.v) {
            while (true) {
                ArrayList arrayList = this.x;
                if (!arrayList.isEmpty()) {
                    long j = this.s;
                    Map zzj = ((zzhu) arrayList.remove(0)).zzj();
                    long j2 = 0;
                    if (zzj != null) {
                        Iterator it = zzj.entrySet().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            Map.Entry entry = (Map.Entry) it.next();
                            if (entry != null) {
                                try {
                                    if (entry.getKey() != null && zzgpj.d("content-length", (CharSequence) entry.getKey()) && entry.getValue() != null && ((List) entry.getValue()).get(0) != null) {
                                        j2 = Long.parseLong((String) ((List) entry.getValue()).get(0));
                                        break;
                                    }
                                } catch (NumberFormatException unused) {
                                    continue;
                                }
                            }
                        }
                    }
                    this.s = j + j2;
                }
            }
        }
        return this.s;
    }

    public final void w(boolean z) {
        zzzf zzzfVar;
        if (this.m != null) {
            int i = 0;
            while (true) {
                zzms zzmsVar = this.m;
                zzmsVar.f9125c.d();
                zzkp zzkpVar = zzmsVar.b;
                zzkpVar.p();
                int length = zzkpVar.g.length;
                if (i < 2) {
                    zzzu zzzuVar = this.i;
                    synchronized (zzzuVar.f9420c) {
                        zzzfVar = zzzuVar.e;
                    }
                    zzzfVar.getClass();
                    zzze zzzeVar = new zzze(zzzfVar);
                    boolean z2 = !z;
                    SparseBooleanArray sparseBooleanArray = zzzeVar.E;
                    if (sparseBooleanArray.get(i) != z2) {
                        if (!z) {
                            sparseBooleanArray.put(i, true);
                        } else {
                            sparseBooleanArray.delete(i);
                        }
                    }
                    zzzuVar.h(zzzeVar);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final zzxo x(Uri uri) {
        zzz zzzVar = new zzz();
        zzzVar.b = uri;
        zzak a2 = zzzVar.a();
        int i = this.j.f;
        zzxn zzxnVar = this.l;
        zzxnVar.f9368c = i;
        a2.b.getClass();
        return new zzxo(a2, zzxnVar.f9367a, zzxnVar.b, zzxnVar.d, zzxnVar.f9368c);
    }

    public final void y(Uri[] uriArr, String str) {
        z(uriArr, ByteBuffer.allocate(0), false);
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [com.google.android.gms.internal.ads.zzvr, java.lang.Object] */
    public final void z(Uri[] uriArr, ByteBuffer byteBuffer, boolean z) {
        Object zzwxVar;
        boolean z2;
        int i;
        if (this.m != null) {
            this.n = byteBuffer;
            this.o = z;
            int length = uriArr.length;
            if (length == 1) {
                zzwxVar = x(uriArr[0]);
            } else {
                zzwi[] zzwiVarArr = new zzwi[length];
                for (int i2 = 0; i2 < uriArr.length; i2++) {
                    zzwiVarArr[i2] = x(uriArr[i2]);
                }
                zzwxVar = new zzwx(new Object(), zzwiVarArr);
            }
            zzms zzmsVar = this.m;
            zzmsVar.f9125c.d();
            zzkp zzkpVar = zzmsVar.b;
            zzkpVar.p();
            List singletonList = Collections.singletonList(zzwxVar);
            zzkpVar.p();
            zzkpVar.p();
            zzkpVar.e(zzkpVar.X);
            zzkpVar.zzu();
            zzkpVar.D++;
            ArrayList arrayList = zzkpVar.p;
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                for (int i3 = size - 1; i3 >= 0; i3--) {
                    arrayList.remove(i3);
                }
                zzxz zzxzVar = zzkpVar.a0;
                int[] iArr = zzxzVar.b;
                int[] iArr2 = new int[iArr.length - size];
                int i4 = 0;
                for (int i5 = 0; i5 < iArr.length; i5++) {
                    int i6 = iArr[i5];
                    if (i6 >= 0 && i6 < size) {
                        i4++;
                    } else {
                        int i7 = i5 - i4;
                        if (i6 >= 0) {
                            i6 -= size;
                        }
                        iArr2[i7] = i6;
                    }
                }
                zzkpVar.a0 = new zzxz(iArr2, new Random(zzxzVar.f9379a.nextLong()));
            }
            ArrayList arrayList2 = new ArrayList();
            for (int i8 = 0; i8 < singletonList.size(); i8++) {
                zzlw zzlwVar = new zzlw((zzwi) singletonList.get(i8), zzkpVar.q);
                arrayList2.add(zzlwVar);
                arrayList.add(i8, new zzkl(zzlwVar.b, zzlwVar.f9104a));
            }
            zzkpVar.a0 = zzkpVar.a0.a(arrayList2.size());
            zzmg zzmgVar = new zzmg(arrayList, zzkpVar.a0);
            boolean g = zzmgVar.g();
            int i9 = zzmgVar.d;
            if (!g && i9 < 0) {
                throw new IllegalStateException();
            }
            int k = zzmgVar.k(false);
            zzma k2 = zzkpVar.k(zzkpVar.X, zzmgVar, zzkpVar.m(zzmgVar, k, -9223372036854775807L));
            int i10 = k2.e;
            if (i10 == 1) {
                i10 = 1;
            } else {
                if (!zzmgVar.g()) {
                    if (k != -1) {
                        if (k < i9) {
                            i10 = 2;
                        }
                    }
                }
                i10 = 4;
            }
            zzma l = zzkp.l(k2, i10);
            zzlc zzlcVar = zzkpVar.l;
            long s = zzfj.s(-9223372036854775807L);
            zzxz zzxzVar2 = zzkpVar.a0;
            zzlcVar.getClass();
            ((zzfd) zzlcVar.l.j(17, new zzkw(arrayList2, zzxzVar2, k, s))).a();
            if (!zzkpVar.X.b.f9337a.equals(l.b.f9337a) && !zzkpVar.X.f9110a.g()) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzkpVar.i(l, 0, z2, 4, zzkpVar.h(l), -1);
            zzms zzmsVar2 = this.m;
            zzmsVar2.f9125c.d();
            zzkp zzkpVar2 = zzmsVar2.b;
            zzkpVar2.p();
            zzma zzmaVar = zzkpVar2.X;
            if (zzmaVar.e == 1) {
                zzma e = zzmaVar.e(null);
                if (true != e.f9110a.g()) {
                    i = 2;
                } else {
                    i = 4;
                }
                zzma l2 = zzkp.l(e, i);
                zzkpVar2.D++;
                ((zzfd) zzkpVar2.l.l.zzc(29)).a();
                zzkpVar2.i(l2, 1, false, 5, -9223372036854775807L, -1);
            }
            zzcfb.f.incrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void zzo() {
        zzcfa zzcfaVar = this.p;
        if (zzcfaVar != null) {
            zzcfaVar.zzD();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public final void n(zzhf zzhfVar, boolean z) {
    }
}
