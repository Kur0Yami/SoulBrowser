package org.apache.commons.text.translate;

import java.io.StringWriter;

/* loaded from: classes4.dex */
abstract class SinglePassTranslator extends CharSequenceTranslator {
    @Override // org.apache.commons.text.translate.CharSequenceTranslator
    public int a(CharSequence charSequence, int i, StringWriter stringWriter) {
        String simpleName;
        if (i != 0) {
            Class<?> cls = getClass();
            if (cls.isAnonymousClass()) {
                simpleName = cls.getName();
            } else {
                simpleName = cls.getSimpleName();
            }
            throw new IllegalArgumentException(simpleName.concat(".translate(final CharSequence input, final int index, final Writer out) cannot handle a non-zero index."));
        }
        c(charSequence, stringWriter);
        return Character.codePointCount(charSequence, i, charSequence.length());
    }

    public abstract void c(CharSequence charSequence, StringWriter stringWriter);
}
