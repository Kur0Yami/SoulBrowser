package org.apache.commons.text.lookup;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

/* loaded from: classes4.dex */
final class UrlEncoderStringLookup extends AbstractStringLookup {
    public static final UrlEncoderStringLookup b = new Object();

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        if (str == null) {
            return null;
        }
        String name = StandardCharsets.UTF_8.name();
        try {
            return URLEncoder.encode(str, name);
        } catch (UnsupportedEncodingException e) {
            throw IllegalArgumentExceptions.a(e, "%s: source=%s, encoding=%s", e, str, name);
        }
    }
}
