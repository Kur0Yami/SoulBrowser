package com.google.android.gms.identitycredentials.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001¨\u0006\u0004"}, d2 = {"com/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt$clientBuilder$1", "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;", "Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;", "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InternalIdentityCredentialClientKt$clientBuilder$1 extends Api.AbstractClientBuilder<IdentityCredentialClientImpl, Api.ApiOptions.NoOptions> {
    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.android.gms.identitycredentials.internal.IdentityCredentialClientImpl, com.google.android.gms.common.internal.GmsClient] */
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final IdentityCredentialClientImpl buildClient(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener connectionFailedListener) {
        Api.ApiOptions.NoOptions apiOptions = noOptions;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(looper, "looper");
        Intrinsics.checkNotNullParameter(clientSettings, "commonSettings");
        Intrinsics.checkNotNullParameter(apiOptions, "apiOptions");
        Intrinsics.checkNotNullParameter(connectionCallbacks, "connectedListener");
        Intrinsics.checkNotNullParameter(connectionFailedListener, "connectionFailedListener");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(looper, "looper");
        Intrinsics.checkNotNullParameter(clientSettings, "clientSettings");
        Intrinsics.checkNotNullParameter(connectionCallbacks, "connectionCallbacks");
        Intrinsics.checkNotNullParameter(connectionFailedListener, "connectionFailedListener");
        return new GmsClient(context, looper, 352, clientSettings, connectionCallbacks, connectionFailedListener);
    }
}
