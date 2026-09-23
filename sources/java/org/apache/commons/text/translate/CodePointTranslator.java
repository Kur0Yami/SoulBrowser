package org.apache.commons.text.translate;

import java.io.StringWriter;

/* loaded from: classes4.dex */
public abstract class CodePointTranslator extends CharSequenceTranslator {
    @Override // org.apache.commons.text.translate.CharSequenceTranslator
    public final int a(CharSequence charSequence, int i, StringWriter stringWriter) {
        return c(Character.codePointAt(charSequence, i), stringWriter) ? 1 : 0;
    }

    public abstract boolean c(int i, StringWriter stringWriter);
}
