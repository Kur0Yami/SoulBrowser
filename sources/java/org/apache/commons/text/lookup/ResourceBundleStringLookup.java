package org.apache.commons.text.lookup;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

/* loaded from: classes4.dex */
final class ResourceBundleStringLookup extends AbstractStringLookup {
    public static final ResourceBundleStringLookup b = new Object();

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        if (str != null) {
            String[] split2 = str.split(AbstractStringLookup.f22475a);
            if (split2.length == 2) {
                String str2 = split2[0];
                String str3 = split2[1];
                try {
                    return ResourceBundle.getBundle(str2).getString(str3);
                } catch (MissingResourceException unused) {
                    return null;
                } catch (Exception e) {
                    throw IllegalArgumentExceptions.a(e, "Error looking up resource bundle [%s] and key [%s].", str2, str3);
                }
            }
            throw IllegalArgumentExceptions.b("Bad resource bundle key format [%s]; expected format is BundleName:KeyName.", str);
        }
        return null;
    }

    public final String toString() {
        return android.support.v4.media.a.p(new StringBuilder(), super.toString(), " [bundleName=null]");
    }
}
