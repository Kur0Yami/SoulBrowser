package androidx.credentials.playservices.controllers.CreatePublicKeyCredential;

import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.domerrors.EncodingError;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialDomException;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f910c;
    public final /* synthetic */ CredentialProviderCreatePublicKeyCredentialController f;
    public final /* synthetic */ JSONException g;

    public /* synthetic */ c(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, JSONException jSONException, int i) {
        this.f910c = i;
        this.f = credentialProviderCreatePublicKeyCredentialController;
        this.g = jSONException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CreatePublicKeyCredentialDomException createPublicKeyCredentialDomException;
        switch (this.f910c) {
            case 0:
                CredentialManagerCallback credentialManagerCallback = this.f.f;
                if (credentialManagerCallback == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("callback");
                    credentialManagerCallback = null;
                }
                credentialManagerCallback.a(new CreatePublicKeyCredentialDomException(new EncodingError(), this.g.getMessage()));
                return;
            default:
                CredentialManagerCallback credentialManagerCallback2 = this.f.f;
                if (credentialManagerCallback2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("callback");
                    credentialManagerCallback2 = null;
                }
                String message = this.g.getMessage();
                if (message != null && message.length() > 0) {
                    createPublicKeyCredentialDomException = new CreatePublicKeyCredentialDomException(new EncodingError(), message);
                } else {
                    createPublicKeyCredentialDomException = new CreatePublicKeyCredentialDomException(new EncodingError(), "Unknown error");
                }
                credentialManagerCallback2.a(createPublicKeyCredentialDomException);
                return;
        }
    }
}
