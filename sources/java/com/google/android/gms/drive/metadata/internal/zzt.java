package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;

/* loaded from: classes.dex */
public class zzt extends com.google.android.gms.drive.metadata.zza<String> {
    @Override // com.google.android.gms.drive.metadata.zza
    public final void a(Bundle bundle, Object obj) {
        bundle.putString(this.f3707a, (String) obj);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    public final Object d(Bundle bundle) {
        return bundle.getString(this.f3707a);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    public final Object f(DataHolder dataHolder, int i, int i2) {
        return dataHolder.getString(this.f3707a, i, i2);
    }
}
