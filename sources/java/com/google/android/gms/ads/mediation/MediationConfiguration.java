package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdFormat;

/* loaded from: classes.dex */
public class MediationConfiguration {

    @NonNull
    public static final String CUSTOM_EVENT_SERVER_PARAMETER_FIELD = "parameter";

    /* renamed from: a, reason: collision with root package name */
    public final AdFormat f3186a;
    public final Bundle b;

    public MediationConfiguration(@NonNull AdFormat adFormat, @NonNull Bundle bundle) {
        this.f3186a = adFormat;
        this.b = bundle;
    }

    @NonNull
    public AdFormat getFormat() {
        return this.f3186a;
    }

    @NonNull
    public Bundle getServerParameters() {
        return this.b;
    }
}
