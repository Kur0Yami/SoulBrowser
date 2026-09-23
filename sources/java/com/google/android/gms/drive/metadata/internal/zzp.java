package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;

/* loaded from: classes.dex */
final class zzp implements zzg {
    @Override // com.google.android.gms.drive.metadata.internal.zzg
    public final String a() {
        return "parentsExtraHolder";
    }

    @Override // com.google.android.gms.drive.metadata.internal.zzg
    public final void b(DataHolder dataHolder) {
        Bundle metadata = dataHolder.getMetadata();
        if (metadata == null) {
            return;
        }
        synchronized (dataHolder) {
            try {
                DataHolder dataHolder2 = (DataHolder) metadata.getParcelable("parentsExtraHolder");
                if (dataHolder2 != null) {
                    dataHolder2.close();
                    metadata.remove("parentsExtraHolder");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
