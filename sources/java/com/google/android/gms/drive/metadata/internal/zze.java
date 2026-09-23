package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import java.util.Date;

/* loaded from: classes.dex */
public class zze extends com.google.android.gms.drive.metadata.zzd<Date> {
    @Override // com.google.android.gms.drive.metadata.zza
    public final void a(Bundle bundle, Object obj) {
        bundle.putLong(this.f3707a, ((Date) obj).getTime());
    }

    @Override // com.google.android.gms.drive.metadata.zza
    public final Object d(Bundle bundle) {
        return new Date(bundle.getLong(this.f3707a));
    }

    @Override // com.google.android.gms.drive.metadata.zza
    public final Object f(DataHolder dataHolder, int i, int i2) {
        return new Date(dataHolder.getLong(this.f3707a, i, i2));
    }
}
