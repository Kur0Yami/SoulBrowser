package org.apache.commons.text.translate;

import java.io.StringWriter;
import kotlin.text.Typography;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Strings;

/* loaded from: classes4.dex */
public final class CsvTranslators {

    /* renamed from: a, reason: collision with root package name */
    public static final String f22509a;
    public static final String b;

    /* renamed from: c, reason: collision with root package name */
    public static final char[] f22510c;

    /* loaded from: classes4.dex */
    public static class CsvEscaper extends SinglePassTranslator {
        @Override // org.apache.commons.text.translate.SinglePassTranslator
        public final void c(CharSequence charSequence, StringWriter stringWriter) {
            String charSequence2 = charSequence.toString();
            if (StringUtils.b(charSequence2, CsvTranslators.f22510c)) {
                stringWriter.write(charSequence2);
                return;
            }
            stringWriter.write(34);
            stringWriter.write(Strings.b.a(charSequence2, CsvTranslators.f22509a, CsvTranslators.b));
            stringWriter.write(34);
        }
    }

    /* loaded from: classes4.dex */
    public static class CsvUnescaper extends SinglePassTranslator {
        @Override // org.apache.commons.text.translate.SinglePassTranslator
        public final void c(CharSequence charSequence, StringWriter stringWriter) {
            if (charSequence.charAt(0) == '\"' && charSequence.charAt(charSequence.length() - 1) == '\"') {
                String charSequence2 = charSequence.subSequence(1, charSequence.length() - 1).toString();
                if (StringUtils.a(charSequence2, CsvTranslators.f22510c)) {
                    stringWriter.write(Strings.b.a(charSequence2, CsvTranslators.b, CsvTranslators.f22509a));
                    return;
                }
                stringWriter.write(charSequence2);
                return;
            }
            stringWriter.write(charSequence.toString());
        }
    }

    static {
        String valueOf = String.valueOf(Typography.quote);
        f22509a = valueOf;
        b = android.support.v4.media.a.k(valueOf, valueOf);
        f22510c = new char[]{',', Typography.quote, '\r', '\n'};
    }
}
