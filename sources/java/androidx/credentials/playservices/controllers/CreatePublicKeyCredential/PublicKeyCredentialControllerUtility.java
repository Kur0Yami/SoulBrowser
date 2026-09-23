package androidx.credentials.playservices.controllers.CreatePublicKeyCredential;

import android.content.pm.PackageInfo;
import androidx.annotation.RequiresApi;
import androidx.credentials.exceptions.domerrors.DomError;
import androidx.credentials.exceptions.domerrors.EncodingError;
import androidx.credentials.exceptions.domerrors.UnknownError;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.fido.fido2.api.common.ErrorCode;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/PublicKeyCredentialControllerUtility;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "GetGMSVersion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PublicKeyCredentialControllerUtility {

    /* renamed from: a, reason: collision with root package name */
    public static final LinkedHashMap f907a = MapsKt.linkedMapOf(TuplesKt.to(ErrorCode.UNKNOWN_ERR, new UnknownError()), TuplesKt.to(ErrorCode.ABORT_ERR, new DomError("androidx.credentials.TYPE_ABORT_ERROR")), TuplesKt.to(ErrorCode.ATTESTATION_NOT_PRIVATE_ERR, new DomError("androidx.credentials.TYPE_NOT_READABLE_ERROR")), TuplesKt.to(ErrorCode.CONSTRAINT_ERR, new DomError("androidx.credentials.TYPE_CONSTRAINT_ERROR")), TuplesKt.to(ErrorCode.DATA_ERR, new DomError("androidx.credentials.TYPE_DATA_ERROR")), TuplesKt.to(ErrorCode.INVALID_STATE_ERR, new DomError("androidx.credentials.TYPE_INVALID_STATE_ERROR")), TuplesKt.to(ErrorCode.ENCODING_ERR, new EncodingError()), TuplesKt.to(ErrorCode.NETWORK_ERR, new DomError("androidx.credentials.TYPE_NETWORK_ERROR")), TuplesKt.to(ErrorCode.NOT_ALLOWED_ERR, new DomError("androidx.credentials.TYPE_NOT_ALLOWED_ERROR")), TuplesKt.to(ErrorCode.NOT_SUPPORTED_ERR, new DomError("androidx.credentials.TYPE_NOT_SUPPORTED_ERROR")), TuplesKt.to(ErrorCode.SECURITY_ERR, new DomError("androidx.credentials.TYPE_SECURITY_ERROR")), TuplesKt.to(ErrorCode.TIMEOUT_ERR, new DomError("androidx.credentials.TYPE_TIMEOUT_ERROR")));

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/PublicKeyCredentialControllerUtility$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "AUTH_MIN_VERSION_JSON_CREATE", "J", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "FLAGS", "I", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "TAG", "Ljava/lang/String;", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    @RequiresApi
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/PublicKeyCredentialControllerUtility$GetGMSVersion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class GetGMSVersion {
        public static final long a(PackageInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            return info.getLongVersionCode();
        }
    }
}
