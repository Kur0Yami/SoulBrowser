package com.google.android.gms.internal.p000authapi;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.auth.api.identity.SignInClient;
import com.google.android.gms.auth.api.identity.zbx;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zbat extends GoogleApi implements SignInClient {
    public static final Api b = new Api("Auth.Api.Identity.SignIn.API", new Api.AbstractClientBuilder(), new Api.ClientKey());

    /* renamed from: a, reason: collision with root package name */
    public final String f9462a;

    public zbat(Activity activity, zbx zbxVar) {
        super(activity, (Api<zbx>) b, zbxVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.f9462a = zbaw.a();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.auth.api.identity.BeginSignInRequest$Builder, java.lang.Object] */
    public final Task g(BeginSignInRequest beginSignInRequest) {
        Preconditions.checkNotNull(beginSignInRequest);
        Preconditions.checkNotNull(beginSignInRequest);
        ?? obj = new Object();
        obj.f3356a = new BeginSignInRequest.PasswordRequestOptions(false);
        obj.b = new BeginSignInRequest.GoogleIdTokenRequestOptions(false, null, null, true, null, null, false, null);
        obj.f3357c = new BeginSignInRequest.PasskeysRequestOptions(null, false, null);
        new BeginSignInRequest.PasskeyJsonRequestOptions(null, false);
        obj.b = (BeginSignInRequest.GoogleIdTokenRequestOptions) Preconditions.checkNotNull(beginSignInRequest.f);
        obj.f3356a = (BeginSignInRequest.PasswordRequestOptions) Preconditions.checkNotNull(beginSignInRequest.f3355c);
        obj.f3357c = (BeginSignInRequest.PasskeysRequestOptions) Preconditions.checkNotNull(beginSignInRequest.j);
        BeginSignInRequest.PasskeyJsonRequestOptions passkeyJsonRequestOptions = (BeginSignInRequest.PasskeyJsonRequestOptions) Preconditions.checkNotNull(beginSignInRequest.k);
        final BeginSignInRequest beginSignInRequest2 = new BeginSignInRequest(obj.f3356a, obj.b, this.f9462a, beginSignInRequest.h, beginSignInRequest.i, obj.f3357c, passkeyJsonRequestOptions, beginSignInRequest.l);
        return doRead(TaskApiCall.builder().setFeatures(new Feature("auth_api_credentials_begin_sign_in", 8L)).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbas
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj2, Object obj3) {
                zbau zbauVar = (zbau) obj2;
                zbal zbalVar = new zbal(zbat.this, (TaskCompletionSource) obj3);
                zbv zbvVar = (zbv) zbauVar.getService();
                BeginSignInRequest beginSignInRequest3 = (BeginSignInRequest) Preconditions.checkNotNull(beginSignInRequest2);
                ApiMetadata a2 = zbaz.a(zbauVar.getContext());
                Parcel I1 = zbvVar.I1();
                int i = zbc.f9469a;
                I1.writeStrongBinder(zbalVar);
                zbc.b(I1, beginSignInRequest3);
                zbc.b(I1, a2);
                zbvVar.f2(1, I1);
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(1553).build());
    }

    public final Task h(GetSignInIntentRequest getSignInIntentRequest) {
        Preconditions.checkNotNull(getSignInIntentRequest);
        Preconditions.checkNotNull(getSignInIntentRequest);
        String str = getSignInIntentRequest.f3366c;
        Preconditions.checkNotNull(str);
        final GetSignInIntentRequest getSignInIntentRequest2 = new GetSignInIntentRequest(str, getSignInIntentRequest.f, this.f9462a, getSignInIntentRequest.h, getSignInIntentRequest.i, getSignInIntentRequest.j, getSignInIntentRequest.k);
        return doRead(TaskApiCall.builder().setFeatures(zbav.d).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbaq
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zbau zbauVar = (zbau) obj;
                zban zbanVar = new zban(zbat.this, (TaskCompletionSource) obj2);
                zbv zbvVar = (zbv) zbauVar.getService();
                GetSignInIntentRequest getSignInIntentRequest3 = (GetSignInIntentRequest) Preconditions.checkNotNull(getSignInIntentRequest2);
                ApiMetadata a2 = zbaz.a(zbauVar.getContext());
                Parcel I1 = zbvVar.I1();
                int i = zbc.f9469a;
                I1.writeStrongBinder(zbanVar);
                zbc.b(I1, getSignInIntentRequest3);
                zbc.b(I1, a2);
                zbvVar.f2(3, I1);
            }
        }).setMethodKey(1555).build());
    }

    public final Task i() {
        getApplicationContext().getSharedPreferences("com.google.android.gms.signin", 0).edit().clear().apply();
        Iterator<GoogleApiClient> it = GoogleApiClient.getAllClients().iterator();
        while (it.hasNext()) {
            it.next().maybeSignOut();
        }
        GoogleApiManager.reportSignOut();
        return doWrite(TaskApiCall.builder().setFeatures(zbav.f9464a).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbap
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zbau zbauVar = (zbau) obj;
                zbat zbatVar = zbat.this;
                zbam zbamVar = new zbam(zbatVar, (TaskCompletionSource) obj2);
                zbv zbvVar = (zbv) zbauVar.getService();
                ApiMetadata a2 = zbaz.a(zbauVar.getContext());
                String str = zbatVar.f9462a;
                Parcel I1 = zbvVar.I1();
                int i = zbc.f9469a;
                I1.writeStrongBinder(zbamVar.asBinder());
                I1.writeString(str);
                zbc.b(I1, a2);
                zbvVar.f2(2, I1);
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(1554).build());
    }

    public zbat(Context context, zbx zbxVar) {
        super(context, (Api<zbx>) b, zbxVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.f9462a = zbaw.a();
    }
}
