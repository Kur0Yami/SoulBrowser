package com.google.android.gms.internal.drive;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Serializable;

/* loaded from: classes.dex */
public enum zzks {
    VOID(Void.class, null),
    INT(Integer.class, 0),
    LONG(Long.class, 0L),
    FLOAT(Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.class, Boolean.FALSE),
    STRING(String.class, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED),
    BYTE_STRING(zzjc.class, zzjc.f),
    ENUM(Integer.class, null),
    MESSAGE(Object.class, null);


    /* renamed from: c, reason: collision with root package name */
    public final Object f10224c;

    zzks(Class cls, Serializable serializable) {
        this.f10224c = serializable;
    }
}
