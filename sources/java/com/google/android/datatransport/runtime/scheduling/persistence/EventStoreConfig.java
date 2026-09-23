package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpStatusCodes;
import com.google.auto.value.AutoValue;

@AutoValue
/* loaded from: classes.dex */
abstract class EventStoreConfig {

    /* renamed from: a, reason: collision with root package name */
    public static final AutoValue_EventStoreConfig f2904a;

    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.datatransport.runtime.scheduling.persistence.AutoValue_EventStoreConfig$Builder] */
    static {
        String str;
        ?? obj = new Object();
        obj.f2900a = 10485760L;
        obj.b = Integer.valueOf(HttpStatusCodes.STATUS_CODE_OK);
        obj.f2901c = 10000;
        obj.d = 604800000L;
        obj.e = 81920;
        if (obj.f2900a == null) {
            str = " maxStorageSizeInBytes";
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (obj.b == null) {
            str = str.concat(" loadBatchSize");
        }
        if (obj.f2901c == null) {
            str = android.support.v4.media.a.k(str, " criticalSectionEnterTimeoutMs");
        }
        if (obj.d == null) {
            str = android.support.v4.media.a.k(str, " eventCleanUpAge");
        }
        if (obj.e == null) {
            str = android.support.v4.media.a.k(str, " maxBlobByteSizePerRow");
        }
        if (str.isEmpty()) {
            long longValue = obj.f2900a.longValue();
            f2904a = new AutoValue_EventStoreConfig(obj.b.intValue(), obj.f2901c.intValue(), obj.e.intValue(), longValue, obj.d.longValue());
            return;
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    public abstract int a();

    public abstract long b();

    public abstract int c();

    public abstract int d();

    public abstract long e();
}
