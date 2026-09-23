package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/webauthn/PublicKeyCredentialDescriptor;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@RestrictTo
/* loaded from: classes.dex */
public final /* data */ class PublicKeyCredentialDescriptor {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PublicKeyCredentialDescriptor) && Intrinsics.areEqual((Object) null, (Object) null) && Intrinsics.areEqual((Object) null, (Object) null) && Intrinsics.areEqual((Object) null, (Object) null);
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "PublicKeyCredentialDescriptor(type=null, id=" + Arrays.toString((byte[]) null) + ", transports=null)";
    }
}
