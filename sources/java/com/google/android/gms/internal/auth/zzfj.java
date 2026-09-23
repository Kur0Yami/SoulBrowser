package com.google.android.gms.internal.auth;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfj extends zzfl {
    @Override // com.google.android.gms.internal.auth.zzfl
    public final void a(long j, Object obj) {
        ((zzez) zzhj.d(j, obj)).zzb();
    }

    @Override // com.google.android.gms.internal.auth.zzfl
    public final void b(long j, Object obj, Object obj2) {
        zzez zzezVar = (zzez) zzhj.d(j, obj);
        zzez zzezVar2 = (zzez) zzhj.d(j, obj2);
        int size = zzezVar.size();
        int size2 = zzezVar2.size();
        if (size > 0 && size2 > 0) {
            if (!zzezVar.zzc()) {
                zzezVar = zzezVar.f(size2 + size);
            }
            zzezVar.addAll(zzezVar2);
        }
        if (size > 0) {
            zzezVar2 = zzezVar;
        }
        zzhj.j(j, obj, zzezVar2);
    }
}
