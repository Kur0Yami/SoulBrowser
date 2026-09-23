package com.google.android.gms.internal.drive;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;

/* loaded from: classes.dex */
final class zzie implements com.google.android.gms.drive.metadata.internal.zzg {
    @Override // com.google.android.gms.drive.metadata.internal.zzg
    public final String a() {
        return "customPropertiesExtraHolder";
    }

    @Override // com.google.android.gms.drive.metadata.internal.zzg
    public final void b(DataHolder dataHolder) {
        Bundle metadata = dataHolder.getMetadata();
        if (metadata == null) {
            return;
        }
        synchronized (dataHolder) {
            try {
                DataHolder dataHolder2 = (DataHolder) metadata.getParcelable("customPropertiesExtraHolder");
                if (dataHolder2 != null) {
                    dataHolder2.close();
                    metadata.remove("customPropertiesExtraHolder");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
