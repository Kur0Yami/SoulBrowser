package com.google.android.gms.cast;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.cast.zzet;

@Deprecated
/* loaded from: classes.dex */
public final class CastRemoteDisplay {

    @Deprecated
    /* loaded from: classes.dex */
    public static final class CastRemoteDisplayOptions implements Api.ApiOptions.HasOptions {

        @Deprecated
        /* loaded from: classes.dex */
        public static final class Builder {
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface CastRemoteDisplaySessionCallbacks {
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface CastRemoteDisplaySessionResult extends Result {
    }

    /* loaded from: classes.dex */
    public @interface Configuration {
    }

    static {
        new Api("CastRemoteDisplay.API", new Api.AbstractClientBuilder(), com.google.android.gms.cast.internal.zzal.f3612c);
        new zzet();
    }
}
