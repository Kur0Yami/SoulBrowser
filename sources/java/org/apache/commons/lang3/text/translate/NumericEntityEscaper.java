package org.apache.commons.lang3.text.translate;

import java.io.StringWriter;

@Deprecated
/* loaded from: classes4.dex */
public class NumericEntityEscaper extends CodePointTranslator {
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f22400c;

    public NumericEntityEscaper(int i, int i2) {
        this.b = i;
        this.f22400c = i2;
    }

    @Override // org.apache.commons.lang3.text.translate.CodePointTranslator
    public final boolean b(int i, StringWriter stringWriter) {
        if (i >= this.b && i <= this.f22400c) {
            stringWriter.write("&#");
            stringWriter.write(Integer.toString(i, 10));
            stringWriter.write(59);
            return true;
        }
        return false;
    }
}
