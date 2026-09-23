package com.google.android.datatransport.runtime;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.auto.value.AutoValue;
import java.util.HashMap;
import java.util.Map;

@AutoValue
/* loaded from: classes.dex */
public abstract class EventInternal {

    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
        public final void a(String str, String str2) {
            ((HashMap) c()).put(str, str2);
        }

        public abstract EventInternal b();

        public abstract Map c();

        public abstract Builder d(Integer num);

        public abstract Builder e(EncodedPayload encodedPayload);

        public abstract Builder f(long j);

        public abstract Builder g(String str);

        public abstract Builder h(long j);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.runtime.EventInternal$Builder, com.google.android.datatransport.runtime.AutoValue_EventInternal$Builder, java.lang.Object] */
    public static Builder a() {
        ?? obj = new Object();
        obj.f = new HashMap();
        return obj;
    }

    public final String b(String str) {
        String str2 = (String) c().get(str);
        if (str2 == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return str2;
    }

    public abstract Map c();

    public abstract Integer d();

    public abstract EncodedPayload e();

    public abstract long f();

    public final int g(String str) {
        String str2 = (String) c().get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public abstract String h();

    public abstract long i();

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.runtime.EventInternal$Builder, com.google.android.datatransport.runtime.AutoValue_EventInternal$Builder, java.lang.Object] */
    public final Builder j() {
        ?? obj = new Object();
        obj.g(h());
        obj.b = d();
        obj.e(e());
        obj.f(f());
        obj.h(i());
        obj.f = new HashMap(c());
        return obj;
    }
}
