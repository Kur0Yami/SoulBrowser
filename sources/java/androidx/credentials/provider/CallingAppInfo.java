package androidx.credentials.provider;

import android.content.pm.SigningInfo;
import android.os.Build;
import androidx.credentials.provider.SigningInfoCompat;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/credentials/provider/CallingAppInfo;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "SignatureVerifier", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCallingAppInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallingAppInfo.kt\nandroidx/credentials/provider/CallingAppInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,339:1\n1#2:340\n*E\n"})
/* loaded from: classes.dex */
public final class CallingAppInfo {

    /* renamed from: a, reason: collision with root package name */
    public final String f924a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final SigningInfoCompat f925c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Landroidx/credentials/provider/CallingAppInfo$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "EXTRA_CREDENTIAL_REQUEST_ORIGIN", "Ljava/lang/String;", "EXTRA_CREDENTIAL_REQUEST_PACKAGE_NAME", "EXTRA_CREDENTIAL_REQUEST_SIGNATURES", "EXTRA_CREDENTIAL_REQUEST_SIGNING_INFO", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCallingAppInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallingAppInfo.kt\nandroidx/credentials/provider/CallingAppInfo$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,339:1\n37#2,2:340\n11335#3:342\n11670#3,3:343\n*S KotlinDebug\n*F\n+ 1 CallingAppInfo.kt\nandroidx/credentials/provider/CallingAppInfo$Companion\n*L\n161#1:340,2\n178#1:342\n178#1:343,3\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SignatureVerifier {
    }

    public CallingAppInfo(String packageName, SigningInfo signingInfo, String str) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(signingInfo, "signingInfo");
        SigningInfoCompat a2 = SigningInfoCompat.Companion.a(signingInfo);
        this.f924a = packageName;
        this.b = str;
        this.f925c = a2;
        if (Build.VERSION.SDK_INT >= 28) {
            Intrinsics.checkNotNull(signingInfo);
        }
        if (packageName.length() > 0) {
        } else {
            throw new IllegalArgumentException("packageName must not be empty");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CallingAppInfo)) {
            return false;
        }
        CallingAppInfo callingAppInfo = (CallingAppInfo) obj;
        if (Intrinsics.areEqual(this.f924a, callingAppInfo.f924a) && Intrinsics.areEqual(this.b, callingAppInfo.b) && Intrinsics.areEqual(this.f925c, callingAppInfo.f925c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.f924a.hashCode() * 31;
        String str = this.b;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return this.f925c.hashCode() + ((hashCode + i) * 31);
    }
}
