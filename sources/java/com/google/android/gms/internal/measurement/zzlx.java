package com.google.android.gms.internal.measurement;

import j$.util.DesugarCollections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzlx extends zzmh {
    @Override // com.google.android.gms.internal.measurement.zzmh
    public final void a() {
        Iterable<Map.Entry> entrySet;
        if (!this.h) {
            for (int i = 0; i < this.f.size(); i++) {
                Map.Entry entry = (Map.Entry) this.f.get(i);
                if (((zzjs) entry.getKey()).zzc()) {
                    entry.setValue(DesugarCollections.unmodifiableList((List) entry.getValue()));
                }
            }
            if (this.g.isEmpty()) {
                entrySet = zzma.b;
            } else {
                entrySet = this.g.entrySet();
            }
            for (Map.Entry entry2 : entrySet) {
                if (((zzjs) entry2.getKey()).zzc()) {
                    entry2.setValue(DesugarCollections.unmodifiableList((List) entry2.getValue()));
                }
            }
        }
        super.a();
    }
}
