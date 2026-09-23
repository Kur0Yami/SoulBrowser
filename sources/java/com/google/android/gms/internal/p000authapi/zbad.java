package com.google.android.gms.internal.p000authapi;

import android.accounts.Account;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.auth.api.identity.AuthorizationClient;
import com.google.android.gms.auth.api.identity.AuthorizationRequest;
import com.google.android.gms.auth.api.identity.AuthorizationResult;
import com.google.android.gms.auth.api.identity.zba;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final class zbad extends GoogleApi implements AuthorizationClient {
    public static final Api b = new Api("Auth.Api.Identity.Authorization.API", new Api.AbstractClientBuilder(), new Api.ClientKey());

    /* renamed from: a, reason: collision with root package name */
    public final String f9451a;

    public zbad(Activity activity, zba zbaVar) {
        super(activity, (Api<zba>) b, zbaVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.f9451a = zbaw.a();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.auth.api.identity.AuthorizationRequest$Builder] */
    public final Task g(AuthorizationRequest authorizationRequest) {
        boolean z;
        boolean z2;
        AuthorizationRequest.ResourceParameter resourceParameter;
        Preconditions.checkNotNull(authorizationRequest);
        Preconditions.checkNotNull(authorizationRequest);
        ?? obj = new Object();
        obj.b(authorizationRequest.f3350c);
        Bundle bundle = authorizationRequest.m;
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                String string = bundle.getString(str);
                AuthorizationRequest.ResourceParameter[] values = AuthorizationRequest.ResourceParameter.values();
                int length = values.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        resourceParameter = values[i];
                        if (resourceParameter.f3353c.equals(str)) {
                            break;
                        }
                        i++;
                    } else {
                        resourceParameter = null;
                        break;
                    }
                }
                if (string != null && resourceParameter != null) {
                    Preconditions.checkNotNull(resourceParameter, "Resource parameter cannot be null");
                    Preconditions.checkNotNull(string, "Resource parameter value cannot be null");
                    if (obj.i == null) {
                        obj.i = new Bundle();
                    }
                    obj.i.putString(resourceParameter.f3353c, string);
                }
            }
        }
        boolean z3 = authorizationRequest.l;
        String str2 = authorizationRequest.k;
        String str3 = authorizationRequest.j;
        Account account = authorizationRequest.i;
        String str4 = authorizationRequest.f;
        if (str2 != null) {
            obj.g = str2;
        }
        if (str3 != null) {
            obj.f = Preconditions.checkNotEmpty(str3);
        }
        if (account != null) {
            obj.e = (Account) Preconditions.checkNotNull(account);
        }
        if (authorizationRequest.h && str4 != null) {
            Preconditions.checkNotNull(str4);
            String str5 = obj.b;
            if (str5 == null || str5.equals(str4)) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.checkArgument(z2, "two different server client ids provided");
            obj.b = str4;
            obj.d = true;
        }
        if (authorizationRequest.g && str4 != null) {
            Preconditions.checkNotNull(str4);
            String str6 = obj.b;
            if (str6 == null || str6.equals(str4)) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, "two different server client ids provided");
            obj.b = str4;
            obj.f3352c = true;
            obj.h = z3;
        }
        obj.j = authorizationRequest.n;
        obj.g = this.f9451a;
        final AuthorizationRequest a2 = obj.a();
        return doRead(TaskApiCall.builder().setFeatures(zbav.b).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbac
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj2, Object obj3) {
                zbf zbfVar = (zbf) obj2;
                zbx zbxVar = new zbx(zbad.this, (TaskCompletionSource) obj3);
                zbj zbjVar = (zbj) zbfVar.getService();
                AuthorizationRequest authorizationRequest2 = (AuthorizationRequest) Preconditions.checkNotNull(a2);
                ApiMetadata a3 = zbaz.a(zbfVar.getContext());
                Parcel I1 = zbjVar.I1();
                int i2 = zbc.f9469a;
                I1.writeStrongBinder(zbxVar);
                zbc.b(I1, authorizationRequest2);
                zbc.b(I1, a3);
                zbjVar.f2(1, I1);
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(1534).build());
    }

    public final AuthorizationResult h(Intent intent) {
        if (intent != null) {
            Status status = (Status) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "status", Status.CREATOR);
            if (status != null) {
                if (status.isSuccess()) {
                    AuthorizationResult authorizationResult = (AuthorizationResult) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "authorization_result", AuthorizationResult.CREATOR);
                    if (authorizationResult != null) {
                        return authorizationResult;
                    }
                    throw new ApiException(Status.RESULT_INTERNAL_ERROR);
                }
                throw new ApiException(status);
            }
            throw new ApiException(Status.RESULT_CANCELED);
        }
        throw new ApiException(Status.RESULT_INTERNAL_ERROR);
    }
}
