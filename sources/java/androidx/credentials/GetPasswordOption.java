package androidx.credentials;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/credentials/GetPasswordOption;", "Landroidx/credentials/CredentialOption;", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GetPasswordOption extends CredentialOption {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/GetPasswordOption$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "BUNDLE_KEY_ALLOWED_USER_IDS", "Ljava/lang/String;", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        /* JADX WARN: Code restructure failed: missing block: B:4:0x001d, code lost:
        
            if (r0 == null) goto L6;
         */
        /* JADX WARN: Type inference failed for: r1v0, types: [androidx.credentials.GetPasswordOption, androidx.credentials.CredentialOption] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static androidx.credentials.GetPasswordOption a(android.os.Bundle r8, android.os.Bundle r9, java.util.Set r10) {
            /*
                java.lang.String r0 = "data"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
                java.lang.String r0 = "allowedProviders"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
                java.lang.String r0 = "candidateQueryData"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
                java.lang.String r0 = "androidx.credentials.BUNDLE_KEY_ALLOWED_USER_IDS"
                java.util.ArrayList r0 = r8.getStringArrayList(r0)
                androidx.credentials.GetPasswordOption r1 = new androidx.credentials.GetPasswordOption
                if (r0 == 0) goto L1f
                java.util.Set r0 = kotlin.collections.CollectionsKt.x(r0)
                if (r0 != 0) goto L22
            L1f:
                kotlin.collections.SetsKt.emptySet()
            L22:
                java.lang.String r0 = "androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED"
                r2 = 0
                boolean r5 = r8.getBoolean(r0, r2)
                java.lang.String r0 = "androidx.credentials.BUNDLE_KEY_TYPE_PRIORITY_VALUE"
                r2 = 1000(0x3e8, float:1.401E-42)
                int r7 = r8.getInt(r0, r2)
                java.lang.String r2 = "android.credentials.TYPE_PASSWORD_CREDENTIAL"
                r3 = r8
                r4 = r9
                r6 = r10
                r1.<init>(r2, r3, r4, r5, r6, r7)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.GetPasswordOption.Companion.a(android.os.Bundle, android.os.Bundle, java.util.Set):androidx.credentials.GetPasswordOption");
        }
    }
}
