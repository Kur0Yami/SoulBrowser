package org.apache.commons.text.lookup;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.BufferedInputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.net.URL;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes4.dex */
final class UrlStringLookup extends AbstractStringLookup {
    public static final UrlStringLookup b = new Object();

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        if (str == null) {
            return null;
        }
        String[] split2 = str.split(AbstractStringLookup.f22475a);
        if (split2.length >= 2) {
            String str2 = split2[0];
            if (!StringUtils.c(str)) {
                int indexOf = str.indexOf(58);
                if (indexOf == -1) {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                } else {
                    str = str.substring(indexOf + 1);
                }
            }
            try {
                URL url = new URL(str);
                StringWriter stringWriter = new StringWriter(8192);
                char[] cArr = new char[8192];
                BufferedInputStream bufferedInputStream = new BufferedInputStream(url.openStream());
                try {
                    InputStreamReader inputStreamReader = new InputStreamReader(bufferedInputStream, str2);
                    while (true) {
                        try {
                            int read = inputStreamReader.read(cArr);
                            if (-1 != read) {
                                stringWriter.write(cArr, 0, read);
                            } else {
                                inputStreamReader.close();
                                bufferedInputStream.close();
                                return stringWriter.toString();
                            }
                        } catch (Throwable th) {
                            try {
                                inputStreamReader.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            } catch (Exception e) {
                throw IllegalArgumentExceptions.a(e, "Error looking up URL [%s] with Charset [%s].", str, str2);
            }
        } else {
            throw IllegalArgumentExceptions.b("Bad URL key format [%s]; expected format is DocumentPath:Key.", str);
        }
    }
}
