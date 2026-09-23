package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;

/* loaded from: classes.dex */
public class zzb extends com.google.android.gms.drive.metadata.zza<Boolean> {
    @Override // com.google.android.gms.drive.metadata.zza
    public final void a(Bundle bundle, Object obj) {
        bundle.putBoolean(this.f3707a, ((Boolean) obj).booleanValue());
    }

    @Override // com.google.android.gms.drive.metadata.zza
    public final Object d(Bundle bundle) {
        return Boolean.valueOf(bundle.getBoolean(this.f3707a));
    }

    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public Boolean f(DataHolder dataHolder, int i, int i2) {
        return Boolean.valueOf(dataHolder.getBoolean(this.f3707a, i, i2));
    }
}
