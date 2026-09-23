package com.google.android.datatransport.runtime;

import android.support.v4.media.a;
import android.util.Base64;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.AutoValue_TransportContext;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.auto.value.AutoValue;

@AutoValue
/* loaded from: classes.dex */
public abstract class TransportContext {

    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
        public abstract TransportContext a();

        public abstract Builder b(String str);

        public abstract Builder c(byte[] bArr);

        public abstract Builder d(Priority priority);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.runtime.TransportContext$Builder, com.google.android.datatransport.runtime.AutoValue_TransportContext$Builder, java.lang.Object] */
    public static Builder a() {
        ?? obj = new Object();
        obj.f2820c = Priority.f2755c;
        return obj;
    }

    public abstract String b();

    public abstract byte[] c();

    public abstract Priority d();

    public final TransportContext e(Priority priority) {
        Builder a2 = a();
        a2.b(b());
        a2.d(priority);
        ((AutoValue_TransportContext.Builder) a2).b = c();
        return a2.a();
    }

    public final String toString() {
        String encodeToString;
        String b = b();
        Priority d = d();
        if (c() == null) {
            encodeToString = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } else {
            encodeToString = Base64.encodeToString(c(), 2);
        }
        StringBuilder sb = new StringBuilder("TransportContext(");
        sb.append(b);
        sb.append(", ");
        sb.append(d);
        sb.append(", ");
        return a.p(sb, encodeToString, ")");
    }
}
