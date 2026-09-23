package org.apache.commons.text.translate;

import java.io.StringWriter;

/* loaded from: classes4.dex */
public class OctalUnescaper extends CharSequenceTranslator {
    @Override // org.apache.commons.text.translate.CharSequenceTranslator
    public final int a(CharSequence charSequence, int i, StringWriter stringWriter) {
        int i2;
        char charAt;
        char charAt2;
        char charAt3;
        char charAt4;
        int length = (charSequence.length() - i) - 1;
        StringBuilder sb = new StringBuilder();
        if (charSequence.charAt(i) == '\\' && length > 0 && (charAt = charSequence.charAt((i2 = i + 1))) >= '0' && charAt <= '7') {
            int i3 = i + 2;
            int i4 = i + 3;
            sb.append(charSequence.charAt(i2));
            if (length > 1 && (charAt2 = charSequence.charAt(i3)) >= '0' && charAt2 <= '7') {
                sb.append(charSequence.charAt(i3));
                if (length > 2 && (charAt3 = charSequence.charAt(i2)) >= '0' && charAt3 <= '3' && (charAt4 = charSequence.charAt(i4)) >= '0' && charAt4 <= '7') {
                    sb.append(charSequence.charAt(i4));
                }
            }
            stringWriter.write(Integer.parseInt(sb.toString(), 8));
            return sb.length() + 1;
        }
        return 0;
    }
}
