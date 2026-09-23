package androidx.credentials.provider;

import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005¨\u0006\u0006"}, d2 = {"Landroidx/credentials/provider/BiometricPromptData;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Api35Impl", "ApiMinImpl", "Builder", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BiometricPromptData {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f923a = 0;

    @RequiresApi
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/BiometricPromptData$Api35Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Api35Impl {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/BiometricPromptData$ApiMinImpl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ApiMinImpl {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/BiometricPromptData$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Builder {
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0000X\u0080T¢\u0006\u0006\n\u0004\b\t\u0010\bR\u0014\u0010\n\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Landroidx/credentials/provider/BiometricPromptData$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "ALLOWED_AUTHENTICATOR_VALUES", "Ljava/util/Set;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "BUNDLE_HINT_ALLOWED_AUTHENTICATORS", "Ljava/lang/String;", "BUNDLE_HINT_CRYPTO_OP_ID", "TAG", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public static BiometricPromptData a(Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            try {
                if (bundle.containsKey("androidx.credentials.provider.BUNDLE_HINT_ALLOWED_AUTHENTICATORS")) {
                    if (Build.VERSION.SDK_INT >= 35) {
                        Intrinsics.checkNotNullParameter(bundle, "bundle");
                        return new BiometricPromptData(bundle.getInt("androidx.credentials.provider.BUNDLE_HINT_ALLOWED_AUTHENTICATORS"));
                    }
                    Intrinsics.checkNotNullParameter(bundle, "bundle");
                    return new BiometricPromptData(bundle.getInt("androidx.credentials.provider.BUNDLE_HINT_ALLOWED_AUTHENTICATORS"));
                }
                throw new IllegalArgumentException("Bundle lacks allowed authenticator key.");
            } catch (Exception e) {
                Log.i("BiometricPromptData", "fromSlice failed with: " + e.getMessage());
                return null;
            }
        }
    }

    static {
        SetsKt.setOf((Object[]) new Integer[]{15, Integer.valueOf(KotlinVersion.MAX_COMPONENT_VALUE), 32768, 32783, 33023});
    }

    public BiometricPromptData(int i) {
    }
}
