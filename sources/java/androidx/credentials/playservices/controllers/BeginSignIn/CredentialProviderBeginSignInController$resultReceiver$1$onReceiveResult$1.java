package androidx.credentials.playservices.controllers.BeginSignIn;

import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes.dex */
final /* synthetic */ class CredentialProviderBeginSignInController$resultReceiver$1$onReceiveResult$1 extends FunctionReferenceImpl implements Function2<String, String, GetCredentialException> {
    @Override // kotlin.jvm.functions.Function2
    public final GetCredentialException invoke(String str, String str2) {
        ((CredentialProviderBaseController.Companion) this.receiver).getClass();
        return CredentialProviderBaseController.Companion.b(str, str2);
    }
}
