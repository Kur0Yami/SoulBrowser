package com.google.android.gms.internal.play_billing;

import android.support.v4.media.a;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzhg implements zzhm {

    /* renamed from: a, reason: collision with root package name */
    public final zzhc f11524a;
    public final zzic b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f11525c;

    public zzhg(zzic zzicVar, zzhc zzhcVar) {
        zzfj zzfjVar = zzfk.f11499a;
        this.b = zzicVar;
        this.f11525c = zzhcVar instanceof zzfs;
        this.f11524a = zzhcVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void a(Object obj) {
        this.b.b(obj);
        zzfk.f11499a.a(obj);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final boolean b(Object obj) {
        ((zzfs) obj).zzb.e();
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final boolean c(zzfv zzfvVar, zzfv zzfvVar2) {
        if (!zzfvVar.zzc.equals(zzfvVar2.zzc)) {
            return false;
        }
        if (this.f11525c) {
            return ((zzfs) zzfvVar).zzb.equals(((zzfs) zzfvVar2).zzb);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final int d(zzfv zzfvVar) {
        zzid zzidVar = zzfvVar.zzc;
        int i = zzidVar.d;
        if (i == -1) {
            i = 0;
            for (int i2 = 0; i2 < zzidVar.f11537a; i2++) {
                int i3 = zzidVar.b[i2] >>> 3;
                zzev zzevVar = (zzev) zzidVar.f11538c[i2];
                int x = zzfc.x(8);
                int x2 = zzfc.x(i3) + zzfc.x(16);
                int x3 = zzfc.x(24);
                int i4 = zzevVar.i();
                i = a.b(x + x, x2, com.google.android.gms.internal.mlkit_vision_text_common.a.a(i4, i4, x3), i);
            }
            zzidVar.d = i;
        }
        if (this.f11525c) {
            zzhp zzhpVar = ((zzfs) zzfvVar).zzb.f11500a;
            if (zzhpVar.f <= 0) {
                Iterator it = zzhpVar.b().iterator();
                if (it.hasNext()) {
                    zzfm.g((Map.Entry) it.next());
                    throw null;
                }
            } else {
                zzfm.g(zzhpVar.d(0));
                throw null;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void e(Object obj, byte[] bArr, int i, int i2, zzej zzejVar) {
        zzfv zzfvVar = (zzfv) obj;
        if (zzfvVar.zzc == zzid.f) {
            zzfvVar.zzc = zzid.b();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void f(Object obj, Object obj2) {
        zzho.l(obj, obj2);
        if (this.f11525c) {
            zzfj zzfjVar = zzfk.f11499a;
            if (!((zzfs) obj2).zzb.f11500a.isEmpty()) {
                throw null;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final int g(zzfv zzfvVar) {
        int hashCode = zzfvVar.zzc.hashCode();
        if (this.f11525c) {
            return (hashCode * 53) + ((zzfs) zzfvVar).zzb.f11500a.hashCode();
        }
        return hashCode;
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void h(Object obj, zzfd zzfdVar) {
        Iterator b = ((zzfs) obj).zzb.b();
        if (!b.hasNext()) {
            zzid zzidVar = ((zzfv) obj).zzc;
            for (int i = 0; i < zzidVar.f11537a; i++) {
                int i2 = zzidVar.b[i] >>> 3;
                Object obj2 = zzidVar.f11538c[i];
                zzfc zzfcVar = zzfdVar.f11495a;
                if (obj2 instanceof zzev) {
                    zzfcVar.p(i2, (zzev) obj2);
                } else {
                    zzfcVar.o(i2, (zzhc) obj2);
                }
            }
            return;
        }
        ((zzfl) ((Map.Entry) b.next()).getKey()).zzc();
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final Object zze() {
        zzhc zzhcVar = this.f11524a;
        if (zzhcVar instanceof zzfv) {
            return ((zzfv) zzhcVar).m();
        }
        return zzhcVar.zzw().d();
    }
}
