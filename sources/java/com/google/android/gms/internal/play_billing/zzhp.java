package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzhp extends zzhu {
    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void a() {
        if (!this.h) {
            if (this.f <= 0) {
                Iterator it = b().iterator();
                if (it.hasNext()) {
                    ((zzfl) ((Map.Entry) it.next()).getKey()).zze();
                    throw null;
                }
            } else {
                ((zzfl) ((zzhq) d(0)).f11532c).zze();
                throw null;
            }
        }
        super.a();
    }
}
