package com.google.android.gms.internal.auth;

import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhb extends zzgz {
    @Override // com.google.android.gms.internal.auth.zzgz
    public final /* bridge */ /* synthetic */ zzha a(Object obj) {
        zzev zzevVar = (zzev) obj;
        zzha zzhaVar = zzevVar.zzc;
        if (zzhaVar == zzha.e) {
            zzha a2 = zzha.a();
            zzevVar.zzc = a2;
            return a2;
        }
        return zzhaVar;
    }

    @Override // com.google.android.gms.internal.auth.zzgz
    public final /* synthetic */ zzha b(Object obj) {
        return ((zzev) obj).zzc;
    }

    @Override // com.google.android.gms.internal.auth.zzgz
    public final Object c(Object obj, Object obj2) {
        zzha zzhaVar = zzha.e;
        if (!zzhaVar.equals(obj2)) {
            if (zzhaVar.equals(obj)) {
                zzha zzhaVar2 = (zzha) obj2;
                zzha zzhaVar3 = (zzha) obj;
                int i = zzhaVar3.f9564a + zzhaVar2.f9564a;
                int[] copyOf = Arrays.copyOf(zzhaVar3.b, i);
                System.arraycopy(zzhaVar2.b, 0, copyOf, zzhaVar3.f9564a, zzhaVar2.f9564a);
                Object[] copyOf2 = Arrays.copyOf(zzhaVar3.f9565c, i);
                System.arraycopy(zzhaVar2.f9565c, 0, copyOf2, zzhaVar3.f9564a, zzhaVar2.f9564a);
                return new zzha(i, copyOf, copyOf2, true);
            }
            zzha zzhaVar4 = (zzha) obj2;
            zzha zzhaVar5 = (zzha) obj;
            zzhaVar5.getClass();
            if (!zzhaVar4.equals(zzhaVar)) {
                if (zzhaVar5.d) {
                    int i2 = zzhaVar5.f9564a + zzhaVar4.f9564a;
                    zzhaVar5.c(i2);
                    System.arraycopy(zzhaVar4.b, 0, zzhaVar5.b, zzhaVar5.f9564a, zzhaVar4.f9564a);
                    System.arraycopy(zzhaVar4.f9565c, 0, zzhaVar5.f9565c, zzhaVar5.f9564a, zzhaVar4.f9564a);
                    zzhaVar5.f9564a = i2;
                    return obj;
                }
                throw new UnsupportedOperationException();
            }
        }
        return obj;
    }

    @Override // com.google.android.gms.internal.auth.zzgz
    public final /* bridge */ /* synthetic */ void d(int i, long j, Object obj) {
        ((zzha) obj).b(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.auth.zzgz
    public final void e(Object obj) {
        zzha zzhaVar = ((zzev) obj).zzc;
        if (zzhaVar.d) {
            zzhaVar.d = false;
        }
    }

    @Override // com.google.android.gms.internal.auth.zzgz
    public final /* synthetic */ void f(Object obj, Object obj2) {
        ((zzev) obj).zzc = (zzha) obj2;
    }
}
