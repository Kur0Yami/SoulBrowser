package com.google.api.client.util.escape;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
final class PercentEncodedEscaper extends Escaper {
    static final Pattern PCT_ENCODE_PATTERN = Pattern.compile("%[0-9A-Fa-f]{2}");
    private final Escaper escaper;

    public PercentEncodedEscaper(Escaper escaper) {
        if (escaper != null) {
            this.escaper = escaper;
            return;
        }
        throw new NullPointerException("Escaper cannot be null");
    }

    @Override // com.google.api.client.util.escape.Escaper
    public String escape(String str) {
        if (str != null && !str.isEmpty()) {
            Matcher matcher = PCT_ENCODE_PATTERN.matcher(str);
            StringBuilder sb = new StringBuilder();
            int i = 0;
            while (matcher.find()) {
                sb.append(this.escaper.escape(str.substring(i, matcher.start())));
                sb.append(str.substring(matcher.start(), matcher.end()));
                i = matcher.end();
            }
            if (i < str.length()) {
                sb.append(this.escaper.escape(str.substring(i)));
            }
            return sb.toString();
        }
        return str;
    }
}
