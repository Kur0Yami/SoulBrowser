package androidx.credentials.provider;

import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/credentials/provider/SigningInfoCompat;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SigningInfoCompat {

    /* renamed from: a, reason: collision with root package name */
    public final List f930a;
    public final List b;

    /* renamed from: c, reason: collision with root package name */
    public final Collection f931c;
    public final int d;
    public final boolean e;
    public final boolean f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/SigningInfoCompat$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public static SigningInfoCompat a(SigningInfo signingInfo) {
            List emptyList;
            Collection emptySet;
            int i;
            List emptyList2;
            Intrinsics.checkNotNullParameter(signingInfo, "signingInfo");
            Signature[] apkContentsSigners = signingInfo.getApkContentsSigners();
            if (apkContentsSigners == null || (emptyList = ArraysKt.filterNotNull(apkContentsSigners)) == null) {
                emptyList = CollectionsKt.emptyList();
            }
            List list = emptyList;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 35) {
                emptySet = signingInfo.getPublicKeys();
                if (emptySet == null) {
                    emptySet = SetsKt.emptySet();
                }
            } else {
                emptySet = SetsKt.emptySet();
            }
            Collection collection = emptySet;
            if (i2 >= 35) {
                i = signingInfo.getSchemeVersion();
            } else {
                i = 0;
            }
            int i3 = i;
            Signature[] signingCertificateHistory = signingInfo.getSigningCertificateHistory();
            if (signingCertificateHistory == null || (emptyList2 = ArraysKt.filterNotNull(signingCertificateHistory)) == null) {
                emptyList2 = CollectionsKt.emptyList();
            }
            return new SigningInfoCompat(emptyList2, list, collection, i3, signingInfo.hasPastSigningCertificates(), signingInfo.hasMultipleSigners());
        }
    }

    public SigningInfoCompat(List signingCertificateHistory, List apkContentsSigners, Collection publicKeys, int i, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(signingCertificateHistory, "signingCertificateHistory");
        Intrinsics.checkNotNullParameter(apkContentsSigners, "apkContentsSigners");
        Intrinsics.checkNotNullParameter(publicKeys, "publicKeys");
        this.f930a = signingCertificateHistory;
        this.b = apkContentsSigners;
        this.f931c = publicKeys;
        this.d = i;
        this.e = z;
        this.f = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SigningInfoCompat)) {
            return false;
        }
        SigningInfoCompat signingInfoCompat = (SigningInfoCompat) obj;
        if (Intrinsics.areEqual(this.f930a, signingInfoCompat.f930a) && Intrinsics.areEqual(this.b, signingInfoCompat.b) && Intrinsics.areEqual(this.f931c, signingInfoCompat.f931c) && this.d == signingInfoCompat.d && this.e == signingInfoCompat.e && this.f == signingInfoCompat.f) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = (((this.f931c.hashCode() + ((this.b.hashCode() + (this.f930a.hashCode() * 31)) * 31)) * 31) + this.d) * 31;
        int i2 = 1237;
        if (this.e) {
            i = 1231;
        } else {
            i = 1237;
        }
        int i3 = (hashCode + i) * 31;
        if (this.f) {
            i2 = 1231;
        }
        return i3 + i2;
    }
}
