package com.google.android.gms.internal.cast;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzzm implements zzzs {

    /* renamed from: a, reason: collision with root package name */
    public final zzzi f9896a;
    public final zzaad b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9897c;

    public zzzm(zzaad zzaadVar, zzzi zzziVar) {
        zzxt zzxtVar = zzxu.f9874a;
        this.b = zzaadVar;
        this.f9897c = zzziVar instanceof zzyb;
        this.f9896a = zzziVar;
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final boolean b(Object obj) {
        ((zzyb) obj).zzb.c();
        return true;
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final void c(Object obj, Object obj2) {
        zzzu.b(obj, obj2);
        if (this.f9897c) {
            zzxt zzxtVar = zzxu.f9874a;
            if (!((zzyb) obj2).zzb.f9875a.isEmpty()) {
                throw null;
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final int d(zzyd zzydVar) {
        zzaae zzaaeVar = zzydVar.zzc;
        int i = zzaaeVar.f9606c;
        if (i == -1) {
            zzaaeVar.f9606c = 0;
            i = 0;
        }
        if (this.f9897c) {
            zzzv zzzvVar = ((zzyb) zzydVar).zzb.f9875a;
            if (zzzvVar.f <= 0) {
                Iterator it = zzzvVar.c().iterator();
                if (it.hasNext()) {
                    zzxw.e((Map.Entry) it.next());
                    throw null;
                }
            } else {
                zzxw.e(zzzvVar.b(0));
                throw null;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final boolean e(zzyd zzydVar, zzyd zzydVar2) {
        if (!zzydVar.zzc.equals(zzydVar2.zzc)) {
            return false;
        }
        if (this.f9897c) {
            return ((zzyb) zzydVar).zzb.equals(((zzyb) zzydVar2).zzb);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final int f(zzyd zzydVar) {
        zzydVar.zzc.getClass();
        if (this.f9897c) {
            return 26870523 + ((zzyb) zzydVar).zzb.f9875a.hashCode();
        }
        return 506991;
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final void g(Object obj, zzxq zzxqVar) {
        Iterator b = ((zzyb) obj).zzb.b();
        if (!b.hasNext()) {
            ((zzyd) obj).zzc.getClass();
        } else {
            ((zzxv) ((Map.Entry) b.next()).getKey()).zzc();
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final void h(Object obj) {
        this.b.a(obj);
        zzxu.f9874a.a(obj);
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final Object zza() {
        zzzi zzziVar = this.f9896a;
        if (zzziVar instanceof zzyd) {
            return (zzyd) ((zzyd) zzziVar).j(4, null);
        }
        return zzziVar.k().d();
    }
}
