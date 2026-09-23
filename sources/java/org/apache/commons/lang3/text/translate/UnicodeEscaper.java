package org.apache.commons.lang3.text.translate;

import java.io.StringWriter;
import java.util.Locale;

@Deprecated
/* loaded from: classes4.dex */
public class UnicodeEscaper extends CodePointTranslator {
    @Override // org.apache.commons.lang3.text.translate.CodePointTranslator
    public final boolean b(int i, StringWriter stringWriter) {
        if (i >= 32 && i <= 127) {
            return false;
        }
        if (i > 65535) {
            stringWriter.write(c(i));
            return true;
        }
        stringWriter.write("\\u");
        char[] cArr = CharSequenceTranslator.f22396a;
        stringWriter.write(cArr[(i >> 12) & 15]);
        stringWriter.write(cArr[(i >> 8) & 15]);
        stringWriter.write(cArr[(i >> 4) & 15]);
        stringWriter.write(cArr[i & 15]);
        return true;
    }

    public String c(int i) {
        return "\\u" + Integer.toHexString(i).toUpperCase(Locale.ENGLISH);
    }
}
