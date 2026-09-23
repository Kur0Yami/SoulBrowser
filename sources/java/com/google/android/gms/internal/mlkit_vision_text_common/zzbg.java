package com.google.android.gms.internal.mlkit_vision_text_common;

import java.io.Serializable;
import java.util.Collection;

/* loaded from: classes3.dex */
final class zzbg extends zzam implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Object f11136c;
    public final Object f;

    public zzbg(Collection collection, Object obj) {
        this.f11136c = obj;
        this.f = collection;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f11136c;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzam, java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
