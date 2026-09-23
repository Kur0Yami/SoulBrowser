package androidx.credentials.playservices.controllers.CreatePublicKeyCredential;

import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.domerrors.UnknownError;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialDomException;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f911c;
    public final /* synthetic */ CredentialProviderCreatePublicKeyCredentialController f;
    public final /* synthetic */ Throwable g;

    public /* synthetic */ d(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, Throwable th, int i) {
        this.f911c = i;
        this.f = credentialProviderCreatePublicKeyCredentialController;
        this.g = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f911c) {
            case 0:
                CredentialManagerCallback credentialManagerCallback = this.f.f;
                if (credentialManagerCallback == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("callback");
                    credentialManagerCallback = null;
                }
                credentialManagerCallback.a(new CreatePublicKeyCredentialDomException(new UnknownError(), this.g.getMessage()));
                return;
            default:
                CredentialManagerCallback credentialManagerCallback2 = this.f.f;
                if (credentialManagerCallback2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("callback");
                    credentialManagerCallback2 = null;
                }
                credentialManagerCallback2.a(new CreateCredentialUnknownException(this.g.getMessage()));
                return;
        }
    }
}
