package com.google.android.gms.internal.measurement;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzmn extends zzml {
    @Override // com.google.android.gms.internal.measurement.zzml
    public final int a(Object obj) {
        zzmm zzmmVar = (zzmm) obj;
        int i = zzmmVar.d;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < zzmmVar.f10405a; i3++) {
                int i4 = zzmmVar.b[i3];
                zzjb zzjbVar = (zzjb) zzmmVar.f10406c[i3];
                int a2 = zzjj.a(8);
                int g = zzjbVar.g();
                i2 += zzjj.a(g) + g + zzjj.a(24) + zzjj.a(i4 >>> 3) + zzjj.a(16) + a2 + a2;
            }
            zzmmVar.d = i2;
            return i2;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    public final /* synthetic */ zzmm b(Object obj) {
        return ((zzkc) obj).zzc;
    }
}
