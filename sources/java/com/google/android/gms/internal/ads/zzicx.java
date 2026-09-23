package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzicx extends zzidb {
    @Override // com.google.android.gms.internal.ads.zzidb
    public final void a() {
        if (!this.h) {
            for (int i = 0; i < this.f; i++) {
                ((zziaf) ((zzicy) b(i)).f8945c).getClass();
            }
            Iterator it = c().iterator();
            while (it.hasNext()) {
                ((zziaf) ((Map.Entry) it.next()).getKey()).getClass();
            }
        }
        super.a();
    }
}
