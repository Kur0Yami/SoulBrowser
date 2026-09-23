package com.google.android.gms.internal.p000authapi;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;

/* loaded from: classes.dex */
public final class zbd extends GmsClient {

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.auth.api.zbd f9470c;

    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object, com.google.android.gms.auth.api.zbc] */
    public zbd(Context context, Looper looper, ClientSettings clientSettings, com.google.android.gms.auth.api.zbd zbdVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 68, clientSettings, connectionCallbacks, onConnectionFailedListener);
        zbdVar = zbdVar == null ? com.google.android.gms.auth.api.zbd.g : zbdVar;
        ?? obj = new Object();
        obj.f3398a = Boolean.FALSE;
        obj.f3398a = Boolean.valueOf(zbdVar.f3399c);
        obj.b = zbdVar.f;
        obj.b = zbaw.a();
        this.f9470c = new com.google.android.gms.auth.api.zbd(obj);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        if (queryLocalInterface instanceof zbe) {
            return (zbe) queryLocalInterface;
        }
        return new zba(iBinder, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getGetServiceRequestExtraArgs() {
        com.google.android.gms.auth.api.zbd zbdVar = this.f9470c;
        zbdVar.getClass();
        Bundle bundle = new Bundle();
        bundle.putString("consumer_package", null);
        bundle.putBoolean("force_save_dialog", zbdVar.f3399c);
        bundle.putString("log_session_id", zbdVar.f);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 12800000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }
}
