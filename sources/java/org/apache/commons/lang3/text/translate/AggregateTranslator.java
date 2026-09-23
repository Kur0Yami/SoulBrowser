package org.apache.commons.lang3.text.translate;

import java.io.StringWriter;

@Deprecated
/* loaded from: classes4.dex */
public class AggregateTranslator extends CharSequenceTranslator {
    public final CharSequenceTranslator[] b;

    public AggregateTranslator(CharSequenceTranslator... charSequenceTranslatorArr) {
        this.b = (CharSequenceTranslator[]) ((Object[]) charSequenceTranslatorArr.clone());
    }

    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public final int a(CharSequence charSequence, int i, StringWriter stringWriter) {
        for (CharSequenceTranslator charSequenceTranslator : this.b) {
            int a2 = charSequenceTranslator.a(charSequence, i, stringWriter);
            if (a2 != 0) {
                return a2;
            }
        }
        return 0;
    }
}
