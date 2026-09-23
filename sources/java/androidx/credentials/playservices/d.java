package androidx.credentials.playservices;

import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.ClearCredentialProviderConfigurationException;
import androidx.credentials.exceptions.CreateCredentialException;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f916c;
    public final /* synthetic */ CredentialManagerCallback f;

    public /* synthetic */ d(CredentialManagerCallback credentialManagerCallback, int i) {
        this.f916c = i;
        this.f = credentialManagerCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f916c) {
            case 0:
                this.f.a(new ClearCredentialProviderConfigurationException());
                return;
            case 1:
                this.f.onResult(null);
                return;
            case 2:
                this.f.onResult(null);
                return;
            default:
                this.f.a(new CreateCredentialException("androidx.credentials.TYPE_CREATE_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION", "createCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
                return;
        }
    }
}
