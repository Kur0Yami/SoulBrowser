package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzgxx extends zzgxo {
    public List t;

    @Override // com.google.android.gms.internal.ads.zzgxo
    public final void r(int i) {
        this.p = null;
        this.t = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgxo
    public final void w(int i, Object obj) {
        List list = this.t;
        if (list != null) {
            list.set(i, new zzgxw(obj));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxo
    public final void x() {
        List list = this.t;
        if (list != null) {
            c(y(list));
        }
    }

    public abstract List y(List list);
}
