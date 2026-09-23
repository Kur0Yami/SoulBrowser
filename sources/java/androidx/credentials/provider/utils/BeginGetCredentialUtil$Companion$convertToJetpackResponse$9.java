package androidx.credentials.provider.utils;

import androidx.credentials.provider.AuthenticationAction;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/credentials/provider/AuthenticationAction;", "kotlin.jvm.PlatformType", "entry", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class BeginGetCredentialUtil$Companion$convertToJetpackResponse$9 extends Lambda implements Function1<AuthenticationAction, AuthenticationAction> {
    static {
        new Lambda(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final AuthenticationAction invoke(AuthenticationAction authenticationAction) {
        AuthenticationAction authenticationAction2 = authenticationAction;
        Intrinsics.checkNotNull(authenticationAction2);
        return authenticationAction2;
    }
}
