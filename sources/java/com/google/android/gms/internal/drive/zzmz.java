package com.google.android.gms.internal.drive;

import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzmz extends zzmx<zzmy, zzmy> {
    @Override // com.google.android.gms.internal.drive.zzmx
    public final /* synthetic */ void a(Object obj, zzns zznsVar) {
        ((zzmy) obj).a(zznsVar);
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    public final void b(Object obj, zzns zznsVar) {
        zzmy zzmyVar = (zzmy) obj;
        Object[] objArr = zzmyVar.f10255c;
        int[] iArr = zzmyVar.b;
        int i = zzmyVar.f10254a;
        zznsVar.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            zznsVar.n(iArr[i2] >>> 3, objArr[i2]);
        }
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    public final void c(Object obj) {
        ((zzkk) obj).zzrq.getClass();
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    public final void d(Object obj, Object obj2) {
        ((zzkk) obj).zzrq = (zzmy) obj2;
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    public final zzmy e(Object obj, Object obj2) {
        zzmy zzmyVar = (zzmy) obj;
        zzmy zzmyVar2 = (zzmy) obj2;
        boolean equals = zzmyVar2.equals(zzmy.e);
        int i = zzmyVar2.f10254a;
        if (equals) {
            return zzmyVar;
        }
        int i2 = zzmyVar.f10254a + i;
        int[] copyOf = Arrays.copyOf(zzmyVar.b, i2);
        int[] iArr = zzmyVar2.b;
        int i3 = zzmyVar.f10254a;
        System.arraycopy(iArr, 0, copyOf, i3, i);
        Object[] copyOf2 = Arrays.copyOf(zzmyVar.f10255c, i2);
        System.arraycopy(zzmyVar2.f10255c, 0, copyOf2, i3, i);
        return new zzmy(i2, copyOf, copyOf2);
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    public final /* synthetic */ int f(Object obj) {
        return ((zzmy) obj).b();
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    public final /* synthetic */ zzmy g(Object obj) {
        return ((zzkk) obj).zzrq;
    }

    @Override // com.google.android.gms.internal.drive.zzmx
    public final int h(Object obj) {
        zzmy zzmyVar = (zzmy) obj;
        int i = zzmyVar.d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < zzmyVar.f10254a; i3++) {
            int i4 = zzmyVar.b[i3] >>> 3;
            i2 += zzjr.m(3, (zzjc) zzmyVar.f10255c[i3]) + zzjr.v(2, i4) + (zzjr.g(1) << 1);
        }
        zzmyVar.d = i2;
        return i2;
    }
}
