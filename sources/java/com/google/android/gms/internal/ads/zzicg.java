package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzicg implements zzicu {

    /* renamed from: a, reason: collision with root package name */
    public final zzicc f8935a;
    public final zzidf b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f8936c;

    public zzicg(zzidf zzidfVar, zzicc zziccVar) {
        zziad zziadVar = zziae.f8907a;
        this.b = zzidfVar;
        this.f8936c = zziccVar instanceof zzian;
        this.f8935a = zziccVar;
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final void b(Object obj) {
        this.b.j(obj);
        zziae.f8907a.a(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final void c(Object obj, Object obj2) {
        zzicw.e(obj, obj2);
        if (this.f8936c) {
            zziad zziadVar = zziae.f8907a;
            if (!((zzian) obj2).zza.f8908a.isEmpty()) {
                throw null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final int d(zziar zziarVar) {
        zzidg zzidgVar = zziarVar.zzt;
        int i = zzidgVar.d;
        if (i == -1) {
            i = 0;
            for (int i2 = 0; i2 < zzidgVar.f8950a; i2++) {
                int i3 = zzidgVar.b[i2] >>> 3;
                zzhzl zzhzlVar = (zzhzl) zzidgVar.f8951c[i2];
                int b = zzhzw.b(8);
                int b2 = zzhzw.b(i3) + zzhzw.b(16);
                int b3 = zzhzw.b(24);
                int k = zzhzlVar.k();
                i = android.support.v4.media.a.b(b + b, b2, a.k(k, k, b3), i);
            }
            zzidgVar.d = i;
        }
        if (this.f8936c) {
            zzicx zzicxVar = ((zzian) zziarVar).zza.f8908a;
            if (zzicxVar.f <= 0) {
                Iterator it = zzicxVar.c().iterator();
                if (it.hasNext()) {
                    zziag.i((Map.Entry) it.next());
                    throw null;
                }
            } else {
                zziag.i(zzicxVar.b(0));
                throw null;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final void e(Object obj, byte[] bArr, int i, int i2, zzhyz zzhyzVar) {
        zziar zziarVar = (zziar) obj;
        if (zziarVar.zzt == zzidg.f) {
            zziarVar.zzt = zzidg.a();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final boolean f(Object obj) {
        ((zzian) obj).zza.d();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final int g(zziar zziarVar) {
        int hashCode = zziarVar.zzt.hashCode();
        if (this.f8936c) {
            return (hashCode * 53) + ((zzian) zziarVar).zza.f8908a.hashCode();
        }
        return hashCode;
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final boolean h(zziar zziarVar, zziar zziarVar2) {
        if (!zziarVar.zzt.equals(zziarVar2.zzt)) {
            return false;
        }
        if (this.f8936c) {
            return ((zzian) zziarVar).zza.equals(((zzian) zziarVar2).zza);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final void i(Object obj, zzhzx zzhzxVar) {
        Iterator b = ((zzian) obj).zza.b();
        if (!b.hasNext()) {
            zzidg zzidgVar = ((zziar) obj).zzt;
            for (int i = 0; i < zzidgVar.f8950a; i++) {
                int i2 = zzidgVar.b[i] >>> 3;
                Object obj2 = zzidgVar.f8951c[i];
                zzhzw zzhzwVar = zzhzxVar.f8901a;
                if (obj2 instanceof zzhzl) {
                    zzhzwVar.t(i2, (zzhzl) obj2);
                } else {
                    zzhzwVar.s(i2, (zzicc) obj2);
                }
            }
            return;
        }
        ((zziaf) ((Map.Entry) b.next()).getKey()).zzc();
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final void j(Object obj, zzhzr zzhzrVar, zziab zziabVar) {
        this.b.h(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final Object zza() {
        zzicc zziccVar = this.f8935a;
        if (zziccVar instanceof zziar) {
            return ((zziar) zziccVar).t();
        }
        return zziccVar.g().B();
    }
}
