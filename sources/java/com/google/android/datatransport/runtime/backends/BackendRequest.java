package com.google.android.datatransport.runtime.backends;

import com.google.auto.value.AutoValue;
import java.util.ArrayList;

@AutoValue
/* loaded from: classes.dex */
public abstract class BackendRequest {

    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
        public abstract BackendRequest a();

        public abstract Builder b(ArrayList arrayList);

        public abstract Builder c(byte[] bArr);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.runtime.backends.BackendRequest$Builder, java.lang.Object] */
    public static Builder a() {
        return new Object();
    }

    public abstract Iterable b();

    public abstract byte[] c();
}
