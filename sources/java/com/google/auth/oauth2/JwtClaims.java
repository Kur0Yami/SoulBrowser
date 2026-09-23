package com.google.auth.oauth2;

import com.google.auto.value.AutoValue;
import java.io.Serializable;
import java.util.Map;

@AutoValue
/* loaded from: classes3.dex */
public abstract class JwtClaims implements Serializable {

    @AutoValue.Builder
    /* loaded from: classes3.dex */
    public static abstract class Builder {
    }

    public abstract Map a();

    public abstract String b();

    public abstract String c();

    public abstract String d();
}
