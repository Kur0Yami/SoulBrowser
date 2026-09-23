package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzapj {

    /* renamed from: a, reason: collision with root package name */
    public final List f4315a;
    public final zzaga[] b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgq f4316c = new zzgq(new zzgp() { // from class: com.google.android.gms.internal.ads.zzapi
        @Override // com.google.android.gms.internal.ads.zzgp
        public final /* synthetic */ void a(long j, zzer zzerVar) {
            zzaeb.a(j, zzerVar, zzapj.this.b);
        }
    });

    public zzapj(List list) {
        this.f4315a = list;
        this.b = new zzaga[list.size()];
    }

    public final void a(zzaer zzaerVar, zzapu zzapuVar) {
        int i = 0;
        while (true) {
            zzaga[] zzagaVarArr = this.b;
            if (i < zzagaVarArr.length) {
                zzapuVar.a();
                zzapuVar.b();
                zzaga f = zzaerVar.f(zzapuVar.d, 3);
                zzv zzvVar = (zzv) this.f4315a.get(i);
                String str = zzvVar.m;
                boolean z = true;
                if (!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) {
                    z = false;
                }
                zzgqa.e("Invalid closed caption MIME type provided: %s", str, z);
                String str2 = zzvVar.f9308a;
                if (str2 == null) {
                    zzapuVar.b();
                    str2 = zzapuVar.e;
                }
                zzt zztVar = new zzt();
                zztVar.f9265a = str2;
                zztVar.d("video/mp2t");
                zztVar.e(str);
                zztVar.e = zzvVar.e;
                zztVar.d = zzvVar.d;
                zztVar.I = zzvVar.J;
                zztVar.o = zzvVar.p;
                f.e(new zzv(zztVar));
                zzagaVarArr[i] = f;
                i++;
            } else {
                return;
            }
        }
    }
}
