package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzapy {

    /* renamed from: a, reason: collision with root package name */
    public final List f4332a;
    public final zzaga[] b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgq f4333c;

    public zzapy(List list) {
        this.f4332a = list;
        this.b = new zzaga[list.size()];
        zzgq zzgqVar = new zzgq(new zzgp() { // from class: com.google.android.gms.internal.ads.zzapx
            @Override // com.google.android.gms.internal.ads.zzgp
            public final /* synthetic */ void a(long j, zzer zzerVar) {
                zzaeb.b(j, zzerVar, zzapy.this.b);
            }
        });
        this.f4333c = zzgqVar;
        zzgqVar.a(3);
    }

    public final void a(zzaer zzaerVar, zzapu zzapuVar) {
        int i = 0;
        while (true) {
            zzaga[] zzagaVarArr = this.b;
            if (i < zzagaVarArr.length) {
                zzapuVar.a();
                zzapuVar.b();
                zzaga f = zzaerVar.f(zzapuVar.d, 3);
                zzv zzvVar = (zzv) this.f4332a.get(i);
                String str = zzvVar.m;
                boolean z = true;
                if (!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) {
                    z = false;
                }
                zzgqa.e("Invalid closed caption MIME type provided: %s", str, z);
                zzt zztVar = new zzt();
                zzapuVar.b();
                zztVar.f9265a = zzapuVar.e;
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

    public final void b(long j, zzer zzerVar) {
        if (zzerVar.B() >= 9) {
            int b = zzerVar.b();
            int b2 = zzerVar.b();
            int K = zzerVar.K();
            if (b == 434 && b2 == 1195456820 && K == 3) {
                this.f4333c.b(j, zzerVar);
            }
        }
    }
}
