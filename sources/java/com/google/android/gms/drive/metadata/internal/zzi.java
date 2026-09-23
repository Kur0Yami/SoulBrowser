package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;

/* loaded from: classes.dex */
public class zzi extends com.google.android.gms.drive.metadata.zza<Long> {
    @Override // com.google.android.gms.drive.metadata.zza
    public final void a(Bundle bundle, Object obj) {
        bundle.putLong(this.f3707a, ((Long) obj).longValue());
    }

    @Override // com.google.android.gms.drive.metadata.zza
    public final Object d(Bundle bundle) {
        return Long.valueOf(bundle.getLong(this.f3707a));
    }

    @Override // com.google.android.gms.drive.metadata.zza
    public final Object f(DataHolder dataHolder, int i, int i2) {
        return Long.valueOf(dataHolder.getLong(this.f3707a, i, i2));
    }
}
