package org.apache.commons.text.translate;

import j$.util.stream.Stream;
import java.io.StringWriter;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class AggregateTranslator extends CharSequenceTranslator {
    public final ArrayList b;

    public AggregateTranslator(CharSequenceTranslator... charSequenceTranslatorArr) {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        Stream.CC.of(charSequenceTranslatorArr).filter(new Object()).forEach(new b(0, arrayList));
    }

    @Override // org.apache.commons.text.translate.CharSequenceTranslator
    public final int a(CharSequence charSequence, int i, StringWriter stringWriter) {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            int a2 = ((CharSequenceTranslator) obj).a(charSequence, i, stringWriter);
            if (a2 != 0) {
                return a2;
            }
        }
        return 0;
    }
}
