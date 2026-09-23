package com.google.android.gms.internal.mlkit_common;

/* loaded from: classes3.dex */
public final class zzh {
    static {
        boolean z;
        zzf zzfVar = new zzf();
        if (zzfVar.b == null) {
            Boolean bool = Boolean.FALSE;
            zzfVar.b = bool;
            zzfVar.a();
            zzf zzfVar2 = new zzf();
            if (zzfVar2.b == null) {
                zzfVar2.b = bool;
                zzfVar2.f10723a.b(new Object());
                zzfVar2.a();
                zzf zzfVar3 = new zzf();
                if (zzfVar3.b == null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    zzfVar3.b = Boolean.TRUE;
                    zzfVar3.a();
                    return;
                }
                throw new IllegalStateException("A SourcePolicy can only set internal() or external() once.");
            }
            throw new IllegalStateException("A SourcePolicy can only set internal() or external() once.");
        }
        throw new IllegalStateException("A SourcePolicy can only set internal() or external() once.");
    }
}
