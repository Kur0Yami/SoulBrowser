package androidx.credentials.provider.utils;

import androidx.credentials.provider.BeginGetCredentialOption;
import androidx.credentials.provider.a;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Landroid/service/credentials/BeginGetCredentialOption;", "kotlin.jvm.PlatformType", "option", "Landroidx/credentials/provider/BeginGetCredentialOption;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class BeginGetCredentialUtil$Companion$convertToFrameworkRequest$1 extends Lambda implements Function1<BeginGetCredentialOption, android.service.credentials.BeginGetCredentialOption> {
    static {
        new Lambda(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final android.service.credentials.BeginGetCredentialOption invoke(BeginGetCredentialOption beginGetCredentialOption) {
        BeginGetCredentialOption option = beginGetCredentialOption;
        Intrinsics.checkNotNullExpressionValue(option, "option");
        a.h();
        return a.d(option.f921a, option.f922c, option.b);
    }
}
