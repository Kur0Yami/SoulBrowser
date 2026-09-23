package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
final class zzdlo implements zzcvn {

    /* renamed from: a, reason: collision with root package name */
    public final Map f5884a;
    public final Map b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f5885c;
    public final zzijf d;
    public final zzdnw e;

    public zzdlo(Map map, Map map2, Map map3, zzijf zzijfVar, zzdnw zzdnwVar) {
        this.f5884a = map;
        this.b = map2;
        this.f5885c = map3;
        this.d = zzijfVar;
        this.e = zzdnwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcvn
    public final zzejg a(int i, String str) {
        zzejg a2;
        zzejg zzejgVar = (zzejg) this.f5884a.get(str);
        if (zzejgVar != null) {
            return zzejgVar;
        }
        if (i != 1) {
            if (i == 4) {
                zzelm zzelmVar = (zzelm) this.f5885c.get(str);
                if (zzelmVar != null) {
                    return new zzejh(zzelmVar, zzcvr.f5511a);
                }
                a2 = (zzejg) this.b.get(str);
                if (a2 == null) {
                    return null;
                }
            } else {
                return null;
            }
        } else if (this.e.d == null || (a2 = ((zzcvn) this.d.zzb()).a(i, str)) == null) {
            return null;
        }
        return new zzejh(a2, zzcvq.f5510a);
    }
}
