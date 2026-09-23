package org.apache.commons.text.translate;

import java.io.IOException;
import java.io.StringWriter;
import java.io.UncheckedIOException;

/* loaded from: classes4.dex */
public abstract class CharSequenceTranslator {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f22508a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public abstract int a(CharSequence charSequence, int i, StringWriter stringWriter);

    public final String b(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        try {
            StringWriter stringWriter = new StringWriter(charSequence.length() * 2);
            int length = charSequence.length();
            int i = 0;
            while (i < length) {
                int a2 = a(charSequence, i, stringWriter);
                if (a2 == 0) {
                    char charAt = charSequence.charAt(i);
                    stringWriter.write(charAt);
                    int i2 = i + 1;
                    if (Character.isHighSurrogate(charAt) && i2 < length) {
                        char charAt2 = charSequence.charAt(i2);
                        if (Character.isLowSurrogate(charAt2)) {
                            stringWriter.write(charAt2);
                            i += 2;
                        }
                    }
                    i = i2;
                } else {
                    for (int i3 = 0; i3 < a2; i3++) {
                        i += Character.charCount(Character.codePointAt(charSequence, i));
                    }
                }
            }
            return stringWriter.toString();
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }
}
