package com.google.android.gms.internal.drive;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Serializable;

/* loaded from: classes.dex */
public enum zznr {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED),
    BYTE_STRING(zzjc.f),
    ENUM(null),
    MESSAGE(null);


    /* renamed from: c, reason: collision with root package name */
    public final Object f10265c;

    zznr(Serializable serializable) {
        this.f10265c = serializable;
    }
}
