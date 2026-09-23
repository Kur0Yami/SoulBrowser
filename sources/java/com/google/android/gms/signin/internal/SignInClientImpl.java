package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zat;

@KeepForSdk
/* loaded from: classes3.dex */
public class SignInClientImpl extends GmsClient<zaf> implements com.google.android.gms.signin.zae {
    public static final /* synthetic */ int i = 0;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f11597c;
    public final ClientSettings f;
    public final Bundle g;
    public final Integer h;

    public SignInClientImpl(Context context, Bundle bundle, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, ClientSettings clientSettings) {
        super(context, looper, 44, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.f11597c = true;
        this.f = clientSettings;
        this.g = bundle;
        this.h = clientSettings.zad();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.signin.zae
    public final void a(IAccountAccessor iAccountAccessor, boolean z) {
        try {
            zaf zafVar = (zaf) getService();
            int intValue = ((Integer) Preconditions.checkNotNull(this.h)).intValue();
            Parcel zaa = zafVar.zaa();
            com.google.android.gms.internal.base.zac.c(zaa, iAccountAccessor);
            zaa.writeInt(intValue);
            zaa.writeInt(z ? 1 : 0);
            zafVar.zac(9, zaa);
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.signin.zae
    public final void b(zac zacVar) {
        GoogleSignInAccount googleSignInAccount;
        Preconditions.checkNotNull(zacVar, "Expecting a valid ISignInCallbacks");
        try {
            Account accountOrDefault = this.f.getAccountOrDefault();
            if ("<<default account>>".equals(accountOrDefault.name)) {
                googleSignInAccount = Storage.a(getContext()).b();
            } else {
                googleSignInAccount = null;
            }
            zat zatVar = new zat(accountOrDefault, ((Integer) Preconditions.checkNotNull(this.h)).intValue(), googleSignInAccount);
            zaf zafVar = (zaf) getService();
            zai zaiVar = new zai(1, zatVar);
            Parcel zaa = zafVar.zaa();
            com.google.android.gms.internal.base.zac.b(zaa, zaiVar);
            com.google.android.gms.internal.base.zac.c(zaa, zacVar);
            zafVar.zac(12, zaa);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                zacVar.zab(new zak(1, new ConnectionResult(8, null), null));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.signin.zae
    public final void c() {
        try {
            zaf zafVar = (zaf) getService();
            int intValue = ((Integer) Preconditions.checkNotNull(this.h)).intValue();
            Parcel zaa = zafVar.zaa();
            zaa.writeInt(intValue);
            zafVar.zac(7, zaa);
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        if (queryLocalInterface instanceof zaf) {
            return (zaf) queryLocalInterface;
        }
        return new com.google.android.gms.internal.base.zaa(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getGetServiceRequestExtraArgs() {
        ClientSettings clientSettings = this.f;
        boolean equals = getContext().getPackageName().equals(clientSettings.getRealClientPackageName());
        Bundle bundle = this.g;
        if (!equals) {
            bundle.putString("com.google.android.gms.signin.internal.realClientPackageName", clientSettings.getRealClientPackageName());
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean requiresSignIn() {
        return this.f11597c;
    }

    @Override // com.google.android.gms.signin.zae
    public final void zad() {
        connect(new BaseGmsClient.LegacyClientCallbackAdapter(this));
    }
}
