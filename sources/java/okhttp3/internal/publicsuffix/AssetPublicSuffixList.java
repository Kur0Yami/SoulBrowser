package okhttp3.internal.publicsuffix;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.platform.ContextAwarePlatform;
import okhttp3.internal.platform.Platform;
import okio.Okio;
import okio.Source;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;", "Lokhttp3/internal/publicsuffix/BasePublicSuffixList;", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class AssetPublicSuffixList extends BasePublicSuffixList {
    public final String f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/publicsuffix/AssetPublicSuffixList$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    public AssetPublicSuffixList() {
        Intrinsics.checkNotNullParameter("PublicSuffixDatabase.list", "path");
        this.f = "PublicSuffixDatabase.list";
    }

    @Override // okhttp3.internal.publicsuffix.BasePublicSuffixList
    public final Source b() {
        ContextAwarePlatform contextAwarePlatform;
        Context context;
        Platform platform = Platform.f22173a;
        Object obj = Platform.f22173a;
        AssetManager assetManager = null;
        if (obj != null) {
            contextAwarePlatform = (ContextAwarePlatform) obj;
        } else {
            contextAwarePlatform = null;
        }
        if (contextAwarePlatform != null) {
            context = contextAwarePlatform.getF22169c();
        } else {
            context = null;
        }
        if (context != null) {
            assetManager = context.getAssets();
        }
        if (assetManager == null) {
            if (Build.FINGERPRINT == null) {
                throw new IOException("Platform applicationContext not initialized. Possibly running Android unit test without Robolectric. Android tests should run with Robolectric and call OkHttp.initialize before test");
            }
            throw new IOException("Platform applicationContext not initialized. Startup Initializer possibly disabled, call OkHttp.initialize before test.");
        }
        InputStream open = assetManager.open(this.f);
        Intrinsics.checkNotNullExpressionValue(open, "open(...)");
        return Okio.d(open);
    }
}
