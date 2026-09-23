package com.google.android.gms.ads.mediation.rtb;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.List;

/* loaded from: classes.dex */
public class RtbSignalData {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3198a;
    public final List b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f3199c;
    public final AdSize d;

    public RtbSignalData(@NonNull Context context, @NonNull List<MediationConfiguration> list, @NonNull Bundle bundle, @Nullable AdSize adSize) {
        this.f3198a = context;
        this.b = list;
        this.f3199c = bundle;
        this.d = adSize;
    }

    @Nullable
    public AdSize getAdSize() {
        return this.d;
    }

    @Nullable
    @Deprecated
    public MediationConfiguration getConfiguration() {
        List list = this.b;
        if (list != null && list.size() > 0) {
            return (MediationConfiguration) list.get(0);
        }
        return null;
    }

    @NonNull
    public List<MediationConfiguration> getConfigurations() {
        return this.b;
    }

    @NonNull
    public Context getContext() {
        return this.f3198a;
    }

    @NonNull
    public Bundle getNetworkExtras() {
        return this.f3199c;
    }
}
