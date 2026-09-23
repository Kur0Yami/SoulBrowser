package com.google.android.gms.internal.cast;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzzv extends zzzz {
    @Override // com.google.android.gms.internal.cast.zzzz
    public final void a() {
        if (!this.h) {
            if (this.f <= 0) {
                Iterator it = c().iterator();
                if (it.hasNext()) {
                    ((zzxv) ((Map.Entry) it.next()).getKey()).zzd();
                    throw null;
                }
            } else {
                ((zzxv) ((zzzw) b(0)).f9904c).zzd();
                throw null;
            }
        }
        super.a();
    }
}
