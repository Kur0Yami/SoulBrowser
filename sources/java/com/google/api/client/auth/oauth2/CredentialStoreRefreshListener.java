package com.google.api.client.auth.oauth2;

import com.google.api.client.util.Beta;
import com.google.api.client.util.Preconditions;

@Beta
@Deprecated
/* loaded from: classes3.dex */
public final class CredentialStoreRefreshListener implements CredentialRefreshListener {

    /* renamed from: a, reason: collision with root package name */
    public final CredentialStore f12072a;

    public CredentialStoreRefreshListener(String str, CredentialStore credentialStore) {
        this.f12072a = (CredentialStore) Preconditions.checkNotNull(credentialStore);
    }

    @Override // com.google.api.client.auth.oauth2.CredentialRefreshListener
    public final void a(Credential credential) {
        this.f12072a.a();
    }

    @Override // com.google.api.client.auth.oauth2.CredentialRefreshListener
    public final void b(Credential credential) {
        this.f12072a.a();
    }
}
