package org.apache.commons.lang3.text.translate;

import java.io.StringWriter;
import org.apache.commons.lang3.CharUtils;

@Deprecated
/* loaded from: classes4.dex */
public class OctalUnescaper extends CharSequenceTranslator {
    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public final int a(CharSequence charSequence, int i, StringWriter stringWriter) {
        char charAt;
        char charAt2;
        char charAt3;
        int length = (charSequence.length() - i) - 1;
        StringBuilder sb = new StringBuilder();
        if (charSequence.charAt(i) == '\\' && length > 0) {
            int i2 = i + 1;
            char charAt4 = charSequence.charAt(i2);
            int i3 = CharUtils.f22342a;
            if (charAt4 >= '0' && charAt4 <= '7') {
                int i4 = i + 2;
                int i5 = i + 3;
                sb.append(charSequence.charAt(i2));
                if (length > 1 && (charAt = charSequence.charAt(i4)) >= '0' && charAt <= '7') {
                    sb.append(charSequence.charAt(i4));
                    if (length > 2 && (charAt2 = charSequence.charAt(i2)) >= '0' && charAt2 <= '3' && (charAt3 = charSequence.charAt(i5)) >= '0' && charAt3 <= '7') {
                        sb.append(charSequence.charAt(i5));
                    }
                }
                stringWriter.write(Integer.parseInt(sb.toString(), 8));
                return sb.length() + 1;
            }
            return 0;
        }
        return 0;
    }
}
