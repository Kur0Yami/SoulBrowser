package org.apache.commons.lang3.text.translate;

import java.util.Locale;

@Deprecated
/* loaded from: classes4.dex */
public class JavaUnicodeEscaper extends UnicodeEscaper {
    @Override // org.apache.commons.lang3.text.translate.UnicodeEscaper
    public final String c(int i) {
        char[] chars = Character.toChars(i);
        StringBuilder sb = new StringBuilder("\\u");
        String hexString = Integer.toHexString(chars[0]);
        Locale locale = Locale.ENGLISH;
        sb.append(hexString.toUpperCase(locale));
        sb.append("\\u");
        sb.append(Integer.toHexString(chars[1]).toUpperCase(locale));
        return sb.toString();
    }
}
