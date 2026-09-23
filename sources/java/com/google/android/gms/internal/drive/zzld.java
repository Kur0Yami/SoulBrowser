package com.google.android.gms.internal.drive;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzld extends zzla {
    @Override // com.google.android.gms.internal.drive.zzla
    public final void a(long j, Object obj) {
        ((zzkp) zznd.m(j, obj)).i0();
    }

    @Override // com.google.android.gms.internal.drive.zzla
    public final void b(long j, Object obj, Object obj2) {
        zzkp zzkpVar = (zzkp) zznd.m(j, obj);
        zzkp zzkpVar2 = (zzkp) zznd.m(j, obj2);
        int size = zzkpVar.size();
        int size2 = zzkpVar2.size();
        if (size > 0 && size2 > 0) {
            if (!zzkpVar.W()) {
                zzkpVar = zzkpVar.l(size2 + size);
            }
            zzkpVar.addAll(zzkpVar2);
        }
        if (size > 0) {
            zzkpVar2 = zzkpVar;
        }
        zznd.c(j, obj, zzkpVar2);
    }
}
