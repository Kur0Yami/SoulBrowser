package com.google.android.gms.common.api.internal;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zaaw implements ResultCallback {
    final /* synthetic */ StatusPendingResult zaa;
    final /* synthetic */ boolean zab;
    final /* synthetic */ GoogleApiClient zac;
    final /* synthetic */ zaaz zad;

    public zaaw(zaaz zaazVar, StatusPendingResult statusPendingResult, boolean z, GoogleApiClient googleApiClient) {
        this.zaa = statusPendingResult;
        this.zab = z;
        this.zac = googleApiClient;
        Objects.requireNonNull(zaazVar);
        this.zad = zaazVar;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void onResult(@NonNull Result result) {
        Status status = (Status) result;
        zaaz zaazVar = this.zad;
        Storage a2 = Storage.a(zaazVar.zak());
        String e = a2.e("defaultGoogleSignInAccount");
        a2.f("defaultGoogleSignInAccount");
        if (!TextUtils.isEmpty(e)) {
            a2.f(Storage.g("googleSignInAccount", e));
            a2.f(Storage.g("googleSignInOptions", e));
        }
        if (status.isSuccess() && zaazVar.isConnected()) {
            zaazVar.disconnect();
            zaazVar.connect();
        }
        this.zaa.setResult(status);
        if (this.zab) {
            this.zac.disconnect();
        }
    }
}
