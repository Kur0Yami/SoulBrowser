package org.apache.commons.lang3;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.io.StringWriter;
import java.io.UncheckedIOException;
import kotlin.text.Typography;
import org.apache.commons.lang3.text.translate.AggregateTranslator;
import org.apache.commons.lang3.text.translate.CharSequenceTranslator;
import org.apache.commons.lang3.text.translate.EntityArrays;
import org.apache.commons.lang3.text.translate.LookupTranslator;
import org.apache.commons.lang3.text.translate.NumericEntityEscaper;
import org.apache.commons.lang3.text.translate.NumericEntityUnescaper;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

@Deprecated
/* loaded from: classes4.dex */
public class StringEscapeUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final AggregateTranslator f22355a;

    /* loaded from: classes4.dex */
    public static final class CsvEscaper extends CharSequenceTranslator {
        public static final String b = String.valueOf(Typography.quote);

        /* renamed from: c, reason: collision with root package name */
        public static final char[] f22356c = {',', Typography.quote, '\r', '\n'};

        @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
        public final int a(CharSequence charSequence, int i, StringWriter stringWriter) {
            if (i == 0) {
                if (StringUtils.b(charSequence.toString(), f22356c)) {
                    stringWriter.write(charSequence.toString());
                } else {
                    stringWriter.write(34);
                    String charSequence2 = charSequence.toString();
                    StringBuilder sb = new StringBuilder();
                    String str = b;
                    sb.append(str);
                    sb.append(str);
                    stringWriter.write(Strings.b.a(charSequence2, str, sb.toString()));
                    stringWriter.write(34);
                }
                return Character.codePointCount(charSequence, 0, charSequence.length());
            }
            throw new IllegalStateException("CsvEscaper should never reach the [1] index");
        }
    }

    /* loaded from: classes4.dex */
    public static final class CsvUnescaper extends CharSequenceTranslator {
        public static final String b = String.valueOf(Typography.quote);

        /* renamed from: c, reason: collision with root package name */
        public static final char[] f22357c = {',', Typography.quote, '\r', '\n'};

        @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
        public final int a(CharSequence charSequence, int i, StringWriter stringWriter) {
            if (i == 0) {
                if (charSequence.charAt(0) == '\"' && charSequence.charAt(charSequence.length() - 1) == '\"') {
                    String charSequence2 = charSequence.subSequence(1, charSequence.length() - 1).toString();
                    if (StringUtils.a(charSequence2, f22357c)) {
                        StringBuilder sb = new StringBuilder();
                        String str = b;
                        stringWriter.write(Strings.b.a(charSequence2, android.support.v4.media.a.p(sb, str, str), str));
                    } else {
                        stringWriter.write(charSequence.toString());
                    }
                    return Character.codePointCount(charSequence, 0, charSequence.length());
                }
                stringWriter.write(charSequence.toString());
                return Character.codePointCount(charSequence, 0, charSequence.length());
            }
            throw new IllegalStateException("CsvUnescaper should never reach the [1] index");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        LookupTranslator lookupTranslator = new LookupTranslator(new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"});
        String[][] strArr = EntityArrays.i;
        CharSequenceTranslator[] charSequenceTranslatorArr = {new LookupTranslator((String[][]) strArr.clone())};
        CharSequenceTranslator[] charSequenceTranslatorArr2 = new CharSequenceTranslator[2];
        charSequenceTranslatorArr2[0] = lookupTranslator;
        System.arraycopy(charSequenceTranslatorArr, 0, charSequenceTranslatorArr2, 1, 1);
        AggregateTranslator aggregateTranslator = new AggregateTranslator(charSequenceTranslatorArr2);
        CharSequenceTranslator[] charSequenceTranslatorArr3 = {new Object()};
        CharSequenceTranslator[] charSequenceTranslatorArr4 = new CharSequenceTranslator[2];
        charSequenceTranslatorArr4[0] = aggregateTranslator;
        System.arraycopy(charSequenceTranslatorArr3, 0, charSequenceTranslatorArr4, 1, 1);
        new AggregateTranslator(charSequenceTranslatorArr4);
        new AggregateTranslator(new LookupTranslator(new String[]{"'", "\\'"}, new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"}, new String[]{"/", "\\/"}), new LookupTranslator((String[][]) strArr.clone()), new Object());
        f22355a = new AggregateTranslator(new LookupTranslator(new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"}, new String[]{"/", "\\/"}), new LookupTranslator((String[][]) strArr.clone()), new Object());
        String[][] strArr2 = EntityArrays.e;
        LookupTranslator lookupTranslator2 = new LookupTranslator((String[][]) strArr2.clone());
        String[][] strArr3 = EntityArrays.g;
        new AggregateTranslator(lookupTranslator2, new LookupTranslator((String[][]) strArr3.clone()));
        new AggregateTranslator(new LookupTranslator((String[][]) strArr2.clone()), new LookupTranslator((String[][]) strArr3.clone()), new LookupTranslator(new String[]{WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0001", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0002", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0003", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0004", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0005", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0006", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0007", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\b", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u000b", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\f", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u000e", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u000f", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0010", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0011", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0012", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0013", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0014", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0015", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0016", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0017", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0018", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u0019", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u001a", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u001b", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u001c", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u001d", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u001e", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u001f", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\ufffe", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\uffff", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}), new NumericEntityEscaper(127, 132), new NumericEntityEscaper(134, 159), new Object());
        new AggregateTranslator(new LookupTranslator((String[][]) strArr2.clone()), new LookupTranslator((String[][]) strArr3.clone()), new LookupTranslator(new String[]{WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\u000b", "&#11;"}, new String[]{"\f", "&#12;"}, new String[]{"\ufffe", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, new String[]{"\uffff", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}), new NumericEntityEscaper(1, 8), new NumericEntityEscaper(14, 31), new NumericEntityEscaper(127, 132), new NumericEntityEscaper(134, 159), new Object());
        LookupTranslator lookupTranslator3 = new LookupTranslator((String[][]) strArr2.clone());
        String[][] strArr4 = EntityArrays.f22397a;
        new AggregateTranslator(lookupTranslator3, new LookupTranslator((String[][]) strArr4.clone()));
        new AggregateTranslator(new LookupTranslator((String[][]) strArr2.clone()), new LookupTranslator((String[][]) strArr4.clone()), new LookupTranslator((String[][]) EntityArrays.f22398c.clone()));
        new AggregateTranslator(new Object(), new Object(), new LookupTranslator((String[][]) EntityArrays.j.clone()), new LookupTranslator(new String[]{"\\\\", "\\"}, new String[]{"\\\"", "\""}, new String[]{"\\'", "'"}, new String[]{"\\", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}));
        String[][] strArr5 = EntityArrays.f;
        LookupTranslator lookupTranslator4 = new LookupTranslator((String[][]) strArr5.clone());
        String[][] strArr6 = EntityArrays.b;
        new AggregateTranslator(lookupTranslator4, new LookupTranslator((String[][]) strArr6.clone()), new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]));
        new AggregateTranslator(new LookupTranslator((String[][]) strArr5.clone()), new LookupTranslator((String[][]) strArr6.clone()), new LookupTranslator((String[][]) EntityArrays.d.clone()), new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]));
        new AggregateTranslator(new LookupTranslator((String[][]) strArr5.clone()), new LookupTranslator((String[][]) EntityArrays.h.clone()), new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]));
    }

    public static final String a(String str) {
        AggregateTranslator aggregateTranslator = f22355a;
        aggregateTranslator.getClass();
        if (str == null) {
            return null;
        }
        try {
            StringWriter stringWriter = new StringWriter(str.length() * 2);
            int length = str.length();
            int i = 0;
            while (i < length) {
                int a2 = aggregateTranslator.a(str, i, stringWriter);
                if (a2 == 0) {
                    char charAt = str.charAt(i);
                    stringWriter.write(charAt);
                    int i2 = i + 1;
                    if (Character.isHighSurrogate(charAt) && i2 < length) {
                        char charAt2 = str.charAt(i2);
                        if (Character.isLowSurrogate(charAt2)) {
                            stringWriter.write(charAt2);
                            i += 2;
                        }
                    }
                    i = i2;
                } else {
                    for (int i3 = 0; i3 < a2; i3++) {
                        i += Character.charCount(Character.codePointAt(str, i));
                    }
                }
            }
            return stringWriter.toString();
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }
}
