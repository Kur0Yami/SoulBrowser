package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;

/* loaded from: classes.dex */
public final class zzh extends com.google.android.gms.drive.metadata.zza<Integer> {
    @Override // com.google.android.gms.drive.metadata.zza
    public final void a(Bundle bundle, Object obj) {
        bundle.putInt(this.f3707a, ((Integer) obj).intValue());
    }

    @Override // com.google.android.gms.drive.metadata.zza
    public final Object d(Bundle bundle) {
        return Integer.valueOf(bundle.getInt(this.f3707a));
    }

    @Override // com.google.android.gms.drive.metadata.zza
    public final Object f(DataHolder dataHolder, int i, int i2) {
        return Integer.valueOf(dataHolder.getInteger(this.f3707a, i, i2));
    }
}
