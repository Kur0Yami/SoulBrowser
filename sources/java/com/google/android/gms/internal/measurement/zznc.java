package com.google.android.gms.internal.measurement;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Serializable;

/* loaded from: classes3.dex */
public enum zznc {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED),
    BYTE_STRING(zzjb.f),
    ENUM(null),
    MESSAGE(null);


    /* renamed from: c, reason: collision with root package name */
    public final Object f10414c;

    zznc(Serializable serializable) {
        this.f10414c = serializable;
    }
}
