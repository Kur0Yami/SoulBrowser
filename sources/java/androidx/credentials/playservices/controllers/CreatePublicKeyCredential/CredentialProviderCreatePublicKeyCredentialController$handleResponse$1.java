package androidx.credentials.playservices.controllers.CreatePublicKeyCredential;

import android.os.CancellationSignal;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "s", "Landroid/os/CancellationSignal;", "f", "Lkotlin/Function0;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes.dex */
final class CredentialProviderCreatePublicKeyCredentialController$handleResponse$1 extends Lambda implements Function2<CancellationSignal, Function0<? extends Unit>, Unit> {

    /* renamed from: c, reason: collision with root package name */
    public static final CredentialProviderCreatePublicKeyCredentialController$handleResponse$1 f897c = new Lambda(2);

    @Override // kotlin.jvm.functions.Function2
    public final Unit invoke(CancellationSignal cancellationSignal, Function0<? extends Unit> function0) {
        Function0<? extends Unit> f = function0;
        Intrinsics.checkNotNullParameter(f, "f");
        int i = CredentialProviderController.d;
        int i2 = CredentialProviderCreatePublicKeyCredentialController.j;
        CredentialProviderController.b(cancellationSignal, f);
        return Unit.INSTANCE;
    }
}
