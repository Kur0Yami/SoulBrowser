package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.RevocationBoundService;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import org.json.JSONException;

/* loaded from: classes.dex */
public abstract class zbo extends com.google.android.gms.internal.p000authapi.zbb implements zbp {
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.common.api.GoogleApi, com.google.android.gms.auth.api.signin.GoogleSignInClient] */
    @Override // com.google.android.gms.internal.p000authapi.zbb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        boolean z;
        PendingResult execute;
        boolean z2;
        PendingResult execute2;
        String e;
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            zbt zbtVar = (zbt) this;
            zbtVar.f2();
            zbn.a(zbtVar.f3395c).b();
            return true;
        }
        zbt zbtVar2 = (zbt) this;
        zbtVar2.f2();
        RevocationBoundService revocationBoundService = zbtVar2.f3395c;
        Storage a2 = Storage.a(revocationBoundService);
        GoogleSignInAccount b = a2.b();
        GoogleSignInOptions googleSignInOptions = GoogleSignInOptions.o;
        if (b != null) {
            String e2 = a2.e("defaultGoogleSignInAccount");
            if (!TextUtils.isEmpty(e2) && (e = a2.e(Storage.g("googleSignInOptions", e2))) != null) {
                try {
                    googleSignInOptions = GoogleSignInOptions.F(e);
                } catch (JSONException unused) {
                }
            }
            googleSignInOptions = null;
        }
        ?? googleApi = new GoogleApi(revocationBoundService, (Api<GoogleSignInOptions>) Auth.f3340a, (GoogleSignInOptions) Preconditions.checkNotNull(googleSignInOptions), new GoogleApi.Settings.Builder().setMapper(new ApiExceptionMapper()).build());
        if (b != null) {
            GoogleApiClient asGoogleApiClient = googleApi.asGoogleApiClient();
            Context applicationContext = googleApi.getApplicationContext();
            if (googleApi.g() == 3) {
                z2 = true;
            } else {
                z2 = false;
            }
            zbm.f3393a.d("Revoking access", new Object[0]);
            String e3 = Storage.a(applicationContext).e("refreshToken");
            zbm.a(applicationContext);
            if (z2) {
                if (e3 == null) {
                    Logger logger = zbb.g;
                    execute2 = PendingResults.immediateFailedResult(new Status(4), null);
                } else {
                    zbb zbbVar = new zbb(e3);
                    new Thread(zbbVar).start();
                    execute2 = zbbVar.f;
                }
            } else {
                execute2 = asGoogleApiClient.execute(new zbl(asGoogleApiClient));
            }
            PendingResultUtil.toVoidTask(execute2);
        } else {
            GoogleApiClient asGoogleApiClient2 = googleApi.asGoogleApiClient();
            Context applicationContext2 = googleApi.getApplicationContext();
            if (googleApi.g() == 3) {
                z = true;
            } else {
                z = false;
            }
            zbm.f3393a.d("Signing out", new Object[0]);
            zbm.a(applicationContext2);
            if (z) {
                execute = PendingResults.immediatePendingResult(Status.RESULT_SUCCESS, asGoogleApiClient2);
            } else {
                execute = asGoogleApiClient2.execute(new zbl(asGoogleApiClient2));
            }
            PendingResultUtil.toVoidTask(execute);
        }
        return true;
    }
}
