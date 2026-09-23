package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.ReflectedParcelable;

/* loaded from: classes.dex */
public abstract class zzm<T extends ReflectedParcelable> extends com.google.android.gms.drive.metadata.zza<T> {
    @Override // com.google.android.gms.drive.metadata.zza
    public final void a(Bundle bundle, Object obj) {
        bundle.putParcelable(this.f3707a, (ReflectedParcelable) obj);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    public final Object d(Bundle bundle) {
        return (ReflectedParcelable) bundle.getParcelable(this.f3707a);
    }
}
