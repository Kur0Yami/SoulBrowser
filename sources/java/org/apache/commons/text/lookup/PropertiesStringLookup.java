package org.apache.commons.text.lookup;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.Properties;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes4.dex */
final class PropertiesStringLookup extends AbstractPathFencedLookup {

    /* renamed from: c, reason: collision with root package name */
    public static final PropertiesStringLookup f22483c = new AbstractPathFencedLookup();

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.commons.text.lookup.PropertiesStringLookup, org.apache.commons.text.lookup.AbstractPathFencedLookup] */
    static {
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        if (str == null) {
            return null;
        }
        String[] split2 = str.split("::");
        if (split2.length >= 2) {
            String str2 = split2[0];
            if (!StringUtils.c(str)) {
                int indexOf = str.indexOf("::");
                if (indexOf == -1) {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                } else {
                    str = str.substring(indexOf + 2);
                }
            }
            try {
                Properties properties = new Properties();
                InputStream newInputStream = Files.newInputStream(this.b.a(str2), new OpenOption[0]);
                try {
                    properties.load(newInputStream);
                    if (newInputStream != null) {
                        newInputStream.close();
                    }
                    return properties.getProperty(str);
                } finally {
                }
            } catch (Exception e) {
                throw IllegalArgumentExceptions.a(e, "Error looking up properties [%s] and key [%s].", str2, str);
            }
        }
        throw IllegalArgumentExceptions.b("Bad properties key format [%s]; expected format is %s.", str, "DocumentPath::Key");
    }
}
