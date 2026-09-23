package org.apache.commons.lang3.text.translate;

import java.io.StringWriter;

@Deprecated
/* loaded from: classes4.dex */
public abstract class CodePointTranslator extends CharSequenceTranslator {
    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public final int a(CharSequence charSequence, int i, StringWriter stringWriter) {
        return b(Character.codePointAt(charSequence, i), stringWriter) ? 1 : 0;
    }

    public abstract boolean b(int i, StringWriter stringWriter);
}
