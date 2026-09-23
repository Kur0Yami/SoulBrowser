package com.google.android.gms.internal.appset;

import android.content.Context;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

/* loaded from: classes.dex */
public final class zzp extends GoogleApi<Api.ApiOptions.NoOptions> implements AppSetIdClient {

    /* renamed from: c, reason: collision with root package name */
    public static final Api f9436c = new Api("AppSet.API", new Api.AbstractClientBuilder(), new Api.ClientKey());

    /* renamed from: a, reason: collision with root package name */
    public final Context f9437a;
    public final GoogleApiAvailabilityLight b;

    public zzp(Context context, GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        super(context, (Api<Api.ApiOptions.NoOptions>) f9436c, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.f9437a = context;
        this.b = googleApiAvailabilityLight;
    }

    @Override // com.google.android.gms.appset.AppSetIdClient
    public final Task b() {
        if (this.b.isGooglePlayServicesAvailable(this.f9437a, 212800000) == 0) {
            return doRead(TaskApiCall.builder().setFeatures(com.google.android.gms.appset.zze.f3333a).run(new Object()).setAutoResolveMissingFeatures(false).setMethodKey(27601).build());
        }
        return Tasks.d(new ApiException(new Status(17)));
    }
}
