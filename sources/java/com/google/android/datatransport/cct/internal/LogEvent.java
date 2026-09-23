package com.google.android.datatransport.cct.internal;

import com.google.auto.value.AutoValue;

@AutoValue
/* loaded from: classes.dex */
public abstract class LogEvent {

    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
        public abstract LogEvent a();

        public abstract Builder b(Integer num);

        public abstract Builder c(long j);

        public abstract Builder d(long j);

        public abstract Builder e(NetworkConnectionInfo networkConnectionInfo);

        public abstract Builder f(long j);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.cct.internal.LogEvent$Builder, java.lang.Object, com.google.android.datatransport.cct.internal.AutoValue_LogEvent$Builder] */
    public static Builder h(String str) {
        ?? obj = new Object();
        obj.e = str;
        return obj;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.cct.internal.LogEvent$Builder, java.lang.Object, com.google.android.datatransport.cct.internal.AutoValue_LogEvent$Builder] */
    public static Builder i(byte[] bArr) {
        ?? obj = new Object();
        obj.d = bArr;
        return obj;
    }

    public abstract Integer a();

    public abstract long b();

    public abstract long c();

    public abstract NetworkConnectionInfo d();

    public abstract byte[] e();

    public abstract String f();

    public abstract long g();
}
