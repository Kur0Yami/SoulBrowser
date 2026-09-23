package org.apache.commons.text.lookup;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes4.dex */
final class JavaPlatformStringLookup extends AbstractStringLookup {
    public static final JavaPlatformStringLookup b = new Object();

    public static String c(String str) {
        FunctionStringLookup functionStringLookup = StringLookupFactory.d;
        functionStringLookup.getClass();
        return functionStringLookup.a(str);
    }

    public static String d(String str, String str2) {
        String c2 = c(str2);
        if (StringUtils.c(c2)) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return android.support.v4.media.a.k(str, c2);
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        if (str == null) {
            return null;
        }
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1097462182:
                if (str.equals("locale")) {
                    c2 = 0;
                    break;
                }
                break;
            case 3556:
                if (str.equals("os")) {
                    c2 = 1;
                    break;
                }
                break;
            case 3767:
                if (str.equals("vm")) {
                    c2 = 2;
                    break;
                }
                break;
            case 116909544:
                if (str.equals("hardware")) {
                    c2 = 3;
                    break;
                }
                break;
            case 351608024:
                if (str.equals("version")) {
                    c2 = 4;
                    break;
                }
                break;
            case 1550962648:
                if (str.equals("runtime")) {
                    c2 = 5;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return "default locale: " + Locale.getDefault() + ", platform encoding: " + c("file.encoding");
            case 1:
                return c("os.name") + " " + c("os.version") + d(" ", "sun.os.patch.level") + ", architecture: " + c("os.arch") + d("-", "sun.arch.data.model");
            case 2:
                StringBuilder sb = new StringBuilder();
                sb.append(c("java.vm.name"));
                sb.append(" (build ");
                sb.append(c("java.vm.version"));
                sb.append(", ");
                return android.support.v4.media.a.p(sb, c("java.vm.info"), ")");
            case 3:
                return "processors: " + Runtime.getRuntime().availableProcessors() + ", architecture: " + c("os.arch") + d("-", "sun.arch.data.model") + d(", instruction sets: ", "sun.cpu.isalist");
            case 4:
                return "Java version " + c("java.version");
            case 5:
                return c("java.runtime.name") + " (build " + c("java.runtime.version") + ") from " + c("java.vendor");
            default:
                throw new IllegalArgumentException(str);
        }
    }
}
