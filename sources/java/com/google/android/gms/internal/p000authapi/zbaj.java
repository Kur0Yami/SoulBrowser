package com.google.android.gms.internal.p000authapi;

import android.app.Activity;
import android.os.Parcel;
import com.google.android.gms.auth.api.identity.CredentialSavingClient;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.auth.api.identity.zbk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final class zbaj extends GoogleApi implements CredentialSavingClient {
    public static final Api b = new Api("Auth.Api.Identity.CredentialSaving.API", new Api.AbstractClientBuilder(), new Api.ClientKey());

    /* renamed from: a, reason: collision with root package name */
    public final String f9455a;

    public zbaj(Activity activity, zbk zbkVar) {
        super(activity, (Api<zbk>) b, zbkVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.f9455a = zbaw.a();
    }

    public final Task g(SavePasswordRequest savePasswordRequest) {
        Preconditions.checkNotNull(savePasswordRequest);
        Preconditions.checkNotNull(savePasswordRequest);
        final SavePasswordRequest savePasswordRequest2 = new SavePasswordRequest(savePasswordRequest.f3370c, this.f9455a, savePasswordRequest.g);
        return doRead(TaskApiCall.builder().setFeatures(zbav.f9465c).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbah
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zbg zbgVar = (zbg) obj;
                zbag zbagVar = new zbag(zbaj.this, (TaskCompletionSource) obj2);
                zbm zbmVar = (zbm) zbgVar.getService();
                SavePasswordRequest savePasswordRequest3 = (SavePasswordRequest) Preconditions.checkNotNull(savePasswordRequest2);
                ApiMetadata a2 = zbaz.a(zbgVar.getContext());
                Parcel I1 = zbmVar.I1();
                int i = zbc.f9469a;
                I1.writeStrongBinder(zbagVar);
                zbc.b(I1, savePasswordRequest3);
                zbc.b(I1, a2);
                zbmVar.f2(2, I1);
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(1536).build());
    }
}
