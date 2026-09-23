package com.google.android.gms.drive.metadata;

import com.google.android.gms.common.data.DataHolder;
import java.util.Collection;

/* loaded from: classes.dex */
public abstract class zzb<T> extends zza<Collection<T>> {
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public Collection f(DataHolder dataHolder, int i, int i2) {
        throw new UnsupportedOperationException("Cannot read collections from a dataHolder.");
    }
}
