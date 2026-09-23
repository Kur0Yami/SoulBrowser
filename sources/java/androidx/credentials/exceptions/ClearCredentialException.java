package androidx.credentials.exceptions;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0001\u0003¨\u0006\u0004"}, d2 = {"Landroidx/credentials/exceptions/ClearCredentialException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class ClearCredentialException extends Exception {

    /* renamed from: c, reason: collision with root package name */
    public final String f869c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/credentials/exceptions/ClearCredentialException$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "EXTRA_CLEAR_CREDENTIAL_EXCEPTION_MESSAGE", "Ljava/lang/String;", "EXTRA_CLEAR_CREDENTIAL_EXCEPTION_TYPE", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ClearCredentialException(java.lang.String r2, java.lang.CharSequence r3) {
        /*
            r1 = this;
            java.lang.String r0 = "type"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            if (r3 == 0) goto Lc
            java.lang.String r3 = r3.toString()
            goto Ld
        Lc:
            r3 = 0
        Ld:
            r1.<init>(r3)
            r1.f869c = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.exceptions.ClearCredentialException.<init>(java.lang.String, java.lang.CharSequence):void");
    }

    /* renamed from: a, reason: from getter */
    public String getF869c() {
        return this.f869c;
    }
}
