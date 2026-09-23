package com.google.android.gms.internal.fido;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzbd {
    public static final CharSequence a(Object obj) {
        Objects.requireNonNull(obj);
        if (obj instanceof CharSequence) {
            return (CharSequence) obj;
        }
        return obj.toString();
    }
}
