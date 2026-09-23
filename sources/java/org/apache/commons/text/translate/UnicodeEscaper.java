package org.apache.commons.text.translate;

import java.io.StringWriter;
import java.util.Locale;

/* loaded from: classes4.dex */
public class UnicodeEscaper extends CodePointTranslator {
    public final int b;

    public UnicodeEscaper(int i) {
        this.b = i;
    }

    @Override // org.apache.commons.text.translate.CodePointTranslator
    public final boolean c(int i, StringWriter stringWriter) {
        if (i >= 32 && i <= this.b) {
            return false;
        }
        if (i > 65535) {
            stringWriter.write(d(i));
            return true;
        }
        stringWriter.write("\\u");
        char[] cArr = CharSequenceTranslator.f22508a;
        stringWriter.write(cArr[(i >> 12) & 15]);
        stringWriter.write(cArr[(i >> 8) & 15]);
        stringWriter.write(cArr[(i >> 4) & 15]);
        stringWriter.write(cArr[i & 15]);
        return true;
    }

    public String d(int i) {
        return "\\u" + Integer.toHexString(i).toUpperCase(Locale.ENGLISH);
    }
}
