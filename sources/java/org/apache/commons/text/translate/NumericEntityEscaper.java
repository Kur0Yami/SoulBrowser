package org.apache.commons.text.translate;

import java.io.StringWriter;
import java.util.Comparator;
import org.apache.commons.lang3.Range;

/* loaded from: classes4.dex */
public class NumericEntityEscaper extends CodePointTranslator {
    public final boolean b = true;

    /* renamed from: c, reason: collision with root package name */
    public final Range f22514c;

    public NumericEntityEscaper(int i, int i2) {
        this.f22514c = new Range(Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override // org.apache.commons.text.translate.CodePointTranslator
    public final boolean c(int i, StringWriter stringWriter) {
        boolean z;
        Integer valueOf = Integer.valueOf(i);
        Range range = this.f22514c;
        Comparator comparator = range.f22351c;
        if (comparator.compare(valueOf, range.h) > -1 && comparator.compare(valueOf, range.g) < 1) {
            z = true;
        } else {
            z = false;
        }
        if (this.b != z) {
            return false;
        }
        stringWriter.write("&#");
        stringWriter.write(Integer.toString(i, 10));
        stringWriter.write(59);
        return true;
    }
}
