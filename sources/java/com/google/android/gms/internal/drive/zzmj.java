package com.google.android.gms.internal.drive;

import j$.util.DesugarCollections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzmj extends zzmi {
    @Override // com.google.android.gms.internal.drive.zzmi
    public final void e() {
        if (!this.h) {
            for (int i = 0; i < this.f.size(); i++) {
                Map.Entry c2 = c(i);
                if (((zzkd) c2.getKey()).k0()) {
                    c2.setValue(DesugarCollections.unmodifiableList((List) c2.getValue()));
                }
            }
            for (Map.Entry entry : f()) {
                if (((zzkd) entry.getKey()).k0()) {
                    entry.setValue(DesugarCollections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.e();
    }
}
