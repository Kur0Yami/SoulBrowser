package androidx.credentials.playservices.controllers.CreatePublicKeyCredential;

import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialException;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f909c;
    public final /* synthetic */ CredentialProviderCreatePublicKeyCredentialController f;
    public final /* synthetic */ CreateCredentialException g;

    public /* synthetic */ b(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, CreateCredentialException createCredentialException, int i) {
        this.f909c = i;
        this.f = credentialProviderCreatePublicKeyCredentialController;
        this.g = createCredentialException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f909c) {
            case 0:
                CredentialManagerCallback credentialManagerCallback = this.f.f;
                if (credentialManagerCallback == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("callback");
                    credentialManagerCallback = null;
                }
                credentialManagerCallback.a(this.g);
                return;
            default:
                CredentialManagerCallback credentialManagerCallback2 = this.f.f;
                if (credentialManagerCallback2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("callback");
                    credentialManagerCallback2 = null;
                }
                credentialManagerCallback2.a(this.g);
                return;
        }
    }
}
