package com.google.android.gms.internal.ads;

import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgya extends zzgxo {
    public zzgxy t;

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final void j() {
        zzgxy zzgxyVar = this.t;
        if (zzgxyVar != null) {
            zzgxyVar.g();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxo
    public final void r(int i) {
        this.p = null;
        if (i == 1) {
            this.t = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxo
    public final void w(int i, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzgxo
    public final void x() {
        zzgxy zzgxyVar = this.t;
        if (zzgxyVar != null) {
            try {
                zzgxyVar.g.execute(zzgxyVar);
            } catch (RejectedExecutionException e) {
                zzgxyVar.h.d(e);
            }
        }
    }
}
