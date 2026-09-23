package com.google.android.gms.internal.consent_sdk;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzsd extends zzsi {
    @Override // com.google.android.gms.internal.consent_sdk.zzsi
    public final void a() {
        if (!this.h) {
            if (this.f <= 0) {
                Iterator it = b().iterator();
                if (it.hasNext()) {
                    ((zzqe) ((Map.Entry) it.next()).getKey()).zze();
                    throw null;
                }
            } else {
                ((zzqe) ((zzse) d(0)).f10110c).zze();
                throw null;
            }
        }
        super.a();
    }
}
