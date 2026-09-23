package org.jsoup.helper;

import java.io.UnsupportedEncodingException;
import java.net.IDN;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import org.jsoup.internal.StringUtil;

/* loaded from: classes4.dex */
final class UrlBuilder {

    /* renamed from: a, reason: collision with root package name */
    public URL f22542a;
    public StringBuilder b;

    public UrlBuilder(URL url) {
        this.f22542a = url;
        if (url.getQuery() != null) {
            StringBuilder borrowBuilder = StringUtil.borrowBuilder();
            borrowBuilder.append(this.f22542a.getQuery());
            this.b = borrowBuilder;
        }
    }

    public static void a(StringBuilder sb, String str, boolean z) {
        Object obj;
        int i = 0;
        while (i < str.length()) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt == 32) {
                if (z) {
                    obj = '+';
                } else {
                    obj = "%20";
                }
                sb.append(obj);
            } else if (codePointAt == 37) {
                if (i < str.length() - 2) {
                    int i2 = i + 1;
                    if (d(str.charAt(i2))) {
                        int i3 = i + 2;
                        if (d(str.charAt(i3))) {
                            sb.append('%');
                            sb.append(str.charAt(i2));
                            sb.append(str.charAt(i3));
                            i = i3;
                        }
                    }
                }
                sb.append("%25");
            } else if (codePointAt <= 127 && "<>\"{}|\\^[]`".indexOf(codePointAt) == -1) {
                sb.append((char) codePointAt);
            } else {
                sb.append(URLEncoder.encode(new String(Character.toChars(codePointAt)), DataUtil.UTF_8.name()));
                if (Character.charCount(codePointAt) == 2) {
                    i++;
                }
            }
            i++;
        }
    }

    public static String c(String str) {
        try {
            return URLDecoder.decode(str, DataUtil.UTF_8.name());
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public static boolean d(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return true;
        }
        if (c2 < 'A' || c2 > 'F') {
            return c2 >= 'a' && c2 <= 'f';
        }
        return true;
    }

    public final URL b() {
        try {
            URI uri = new URI(this.f22542a.getProtocol(), this.f22542a.getUserInfo(), IDN.toASCII(c(this.f22542a.getHost())), this.f22542a.getPort(), null, null, null);
            StringBuilder borrowBuilder = StringUtil.borrowBuilder();
            borrowBuilder.append(uri.toASCIIString());
            a(borrowBuilder, this.f22542a.getPath(), false);
            if (this.b != null) {
                borrowBuilder.append('?');
                a(borrowBuilder, StringUtil.releaseBuilder(this.b), true);
            }
            if (this.f22542a.getRef() != null) {
                borrowBuilder.append('#');
                a(borrowBuilder, this.f22542a.getRef(), false);
            }
            URL url = new URL(StringUtil.releaseBuilder(borrowBuilder));
            this.f22542a = url;
            return url;
        } catch (UnsupportedEncodingException | MalformedURLException | URISyntaxException unused) {
            return this.f22542a;
        }
    }
}
