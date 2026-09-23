package com.google.android.gms.auth.api.signin.internal;

import androidx.loader.app.LoaderManager;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes.dex */
final class zbv implements LoaderManager.LoaderCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SignInHubActivity f3396a;

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final /* synthetic */ void a(Object obj) {
        SignInHubActivity signInHubActivity = this.f3396a;
        signInHubActivity.setResult(signInHubActivity.H, signInHubActivity.I);
        signInHubActivity.finish();
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final zbc b() {
        return new zbc(this.f3396a, GoogleApiClient.getAllClients());
    }
}
