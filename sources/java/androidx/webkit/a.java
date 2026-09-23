package androidx.webkit;

import androidx.webkit.internal.ProfileStoreImpl;
import androidx.webkit.internal.WebViewFeatureInternal;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static ProfileStore a() {
        if (WebViewFeatureInternal.m.d()) {
            return ProfileStoreImpl.a();
        }
        throw WebViewFeatureInternal.a();
    }
}
