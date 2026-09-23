package com.google.api.client.auth.oauth2;

import com.google.api.client.util.Beta;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.store.DataStore;

@Beta
/* loaded from: classes3.dex */
public final class DataStoreCredentialRefreshListener implements CredentialRefreshListener {

    /* renamed from: a, reason: collision with root package name */
    public final DataStore f12073a;
    public final String b;

    public DataStoreCredentialRefreshListener(String str, DataStore dataStore) {
        this.b = (String) Preconditions.checkNotNull(str);
        this.f12073a = (DataStore) Preconditions.checkNotNull(dataStore);
    }

    @Override // com.google.api.client.auth.oauth2.CredentialRefreshListener
    public final void a(Credential credential) {
        this.f12073a.set(this.b, new StoredCredential(credential));
    }

    @Override // com.google.api.client.auth.oauth2.CredentialRefreshListener
    public final void b(Credential credential) {
        this.f12073a.set(this.b, new StoredCredential(credential));
    }
}
