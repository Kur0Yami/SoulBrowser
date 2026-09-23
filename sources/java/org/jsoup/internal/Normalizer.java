package org.jsoup.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Locale;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Document;

/* loaded from: classes4.dex */
public final class Normalizer {
    public static String lowerCase(String str) {
        if (str != null) {
            return str.toLowerCase(Locale.ROOT);
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public static String normalize(String str) {
        return lowerCase(str).trim();
    }

    public static String xmlSafeTagName(String str) {
        return Attribute.getValidKey(str, Document.OutputSettings.Syntax.xml);
    }

    @Deprecated
    public static String normalize(String str, boolean z) {
        return z ? lowerCase(str) : normalize(str);
    }
}
