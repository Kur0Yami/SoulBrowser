package com.google.android.gms.internal.appset;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.api.client.http.HttpStatusCodes;

/* loaded from: classes.dex */
final class zzn extends Api.AbstractClientBuilder<zzd, Api.ApiOptions.NoOptions> {
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.appset.zzd, com.google.android.gms.common.internal.GmsClient] */
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final zzd buildClient(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        return new GmsClient(context, looper, HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }
}
