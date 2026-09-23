package androidx.credentials.provider;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/credentials/provider/BeginGetPasswordOption;", "Landroidx/credentials/provider/BeginGetCredentialOption;", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BeginGetPasswordOption extends BeginGetCredentialOption {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/BeginGetPasswordOption$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        /* JADX WARN: Code restructure failed: missing block: B:3:0x0014, code lost:
        
            r1 = kotlin.collections.CollectionsKt___CollectionsKt.toSet(r1);
         */
        /* JADX WARN: Type inference failed for: r2v0, types: [androidx.credentials.provider.BeginGetCredentialOption, androidx.credentials.provider.BeginGetPasswordOption] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static androidx.credentials.provider.BeginGetPasswordOption a(java.lang.String r4, android.os.Bundle r5) {
            /*
                java.lang.String r0 = "data"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                java.lang.String r0 = "id"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                java.lang.String r1 = "androidx.credentials.BUNDLE_KEY_ALLOWED_USER_IDS"
                java.util.ArrayList r1 = r5.getStringArrayList(r1)
                androidx.credentials.provider.BeginGetPasswordOption r2 = new androidx.credentials.provider.BeginGetPasswordOption
                if (r1 == 0) goto L1a
                java.util.Set r1 = kotlin.collections.CollectionsKt.x(r1)
                if (r1 != 0) goto L1e
            L1a:
                java.util.Set r1 = kotlin.collections.SetsKt.emptySet()
            L1e:
                java.lang.String r3 = "allowedUserIds"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r3)
                java.lang.String r1 = "candidateQueryData"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r1)
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                java.lang.String r0 = "android.credentials.TYPE_PASSWORD_CREDENTIAL"
                r2.<init>(r4, r5, r0)
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.provider.BeginGetPasswordOption.Companion.a(java.lang.String, android.os.Bundle):androidx.credentials.provider.BeginGetPasswordOption");
        }
    }
}
