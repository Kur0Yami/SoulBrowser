package androidx.credentials.provider.utils;

import androidx.credentials.provider.CreateEntry;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "entry", "Landroidx/credentials/provider/CreateEntry;", "invoke", "(Landroidx/credentials/provider/CreateEntry;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class BeginCreateCredentialUtil$Companion$convertToJetpackResponse$2 extends Lambda implements Function1<CreateEntry, Boolean> {
    static {
        new Lambda(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(CreateEntry createEntry) {
        boolean z;
        if (createEntry != null) {
            z = true;
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
