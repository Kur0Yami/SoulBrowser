package com.google.android.gms.internal.auth;

import j$.util.DesugarCollections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgl extends zzgv {
    @Override // com.google.android.gms.internal.auth.zzgv
    public final void a() {
        Iterable<Map.Entry> entrySet;
        if (!this.h) {
            for (int i = 0; i < this.f.size(); i++) {
                Map.Entry entry = (Map.Entry) this.f.get(i);
                if (((zzep) entry.getKey()).zzc()) {
                    entry.setValue(DesugarCollections.unmodifiableList((List) entry.getValue()));
                }
            }
            if (this.g.isEmpty()) {
                entrySet = zzgo.b;
            } else {
                entrySet = this.g.entrySet();
            }
            for (Map.Entry entry2 : entrySet) {
                if (((zzep) entry2.getKey()).zzc()) {
                    entry2.setValue(DesugarCollections.unmodifiableList((List) entry2.getValue()));
                }
            }
        }
        super.a();
    }
}
