package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
final /* synthetic */ class zzjm implements zzla {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzkp f9044a;

    @Override // com.google.android.gms.internal.ads.zzla
    public final /* synthetic */ void a(final zzkz zzkzVar) {
        final zzkp zzkpVar = this.f9044a;
        zzkpVar.j.g(new Runnable() { // from class: com.google.android.gms.internal.ads.zzkb
            @Override // java.lang.Runnable
            public final void run() {
                boolean z;
                boolean z2;
                zzkp zzkpVar2 = zzkp.this;
                zzkz zzkzVar2 = zzkzVar;
                int i = zzkpVar2.D - zzkzVar2.f9077c;
                zzkpVar2.D = i;
                boolean z3 = true;
                if (zzkzVar2.d) {
                    zzkpVar2.E = zzkzVar2.e;
                    zzkpVar2.F = true;
                }
                if (i == 0) {
                    zzbf zzbfVar = zzkzVar2.b.f9110a;
                    if (!zzkpVar2.X.f9110a.g() && zzbfVar.g()) {
                        zzkpVar2.Y = -1;
                        zzkpVar2.Z = 0L;
                    }
                    if (!zzbfVar.g()) {
                        List asList = Arrays.asList(((zzmg) zzbfVar).h);
                        int size = asList.size();
                        ArrayList arrayList = zzkpVar2.p;
                        if (size == arrayList.size()) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        zzgqa.f(z2);
                        for (int i2 = 0; i2 < asList.size(); i2++) {
                            ((zzkl) arrayList.get(i2)).b = (zzbf) asList.get(i2);
                        }
                    }
                    long j = -9223372036854775807L;
                    if (zzkpVar2.F) {
                        if (zzkzVar2.b.b.equals(zzkpVar2.X.b) && zzkzVar2.b.d == zzkpVar2.X.r) {
                            z3 = false;
                        }
                        if (z3) {
                            if (!zzbfVar.g() && !zzkzVar2.b.b.b()) {
                                zzma zzmaVar = zzkzVar2.b;
                                zzwg zzwgVar = zzmaVar.b;
                                long j2 = zzmaVar.d;
                                zzbfVar.o(zzwgVar.f9337a, zzkpVar2.o);
                                j = j2;
                            } else {
                                j = zzkzVar2.b.d;
                            }
                        }
                        z = z3;
                    } else {
                        z = false;
                    }
                    zzkpVar2.F = false;
                    zzkpVar2.i(zzkzVar2.b, 1, z, zzkpVar2.E, j, -1);
                }
            }
        });
    }
}
