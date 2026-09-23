package com.google.android.gms.internal.measurement;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Serializable;

/* loaded from: classes3.dex */
public enum zzkn {
    VOID(Void.class, null),
    INT(Integer.class, 0),
    LONG(Long.class, 0L),
    FLOAT(Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.class, Boolean.FALSE),
    STRING(String.class, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED),
    BYTE_STRING(zzjb.class, zzjb.f),
    ENUM(Integer.class, null),
    MESSAGE(Object.class, null);


    /* renamed from: c, reason: collision with root package name */
    public final Object f10386c;

    zzkn(Class cls, Serializable serializable) {
        this.f10386c = serializable;
    }
}
