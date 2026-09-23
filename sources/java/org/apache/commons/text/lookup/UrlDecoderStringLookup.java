package org.apache.commons.text.lookup;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

/* loaded from: classes4.dex */
final class UrlDecoderStringLookup extends AbstractStringLookup {
    public static final UrlDecoderStringLookup b = new Object();

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        if (str == null) {
            return null;
        }
        String name = StandardCharsets.UTF_8.name();
        try {
            return URLDecoder.decode(str, name);
        } catch (UnsupportedEncodingException e) {
            throw IllegalArgumentExceptions.a(e, "%s: source=%s, encoding=%s", e, str, name);
        }
    }
}
