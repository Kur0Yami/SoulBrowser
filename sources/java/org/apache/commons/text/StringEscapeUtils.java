package org.apache.commons.text;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.text.translate.AggregateTranslator;
import org.apache.commons.text.translate.CharSequenceTranslator;
import org.apache.commons.text.translate.EntityArrays;
import org.apache.commons.text.translate.LookupTranslator;
import org.apache.commons.text.translate.NumericEntityEscaper;
import org.apache.commons.text.translate.NumericEntityUnescaper;
import org.apache.commons.text.translate.UnicodeEscaper;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* loaded from: classes4.dex */
public class StringEscapeUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final AggregateTranslator f22469a;
    public static final AggregateTranslator b;

    /* renamed from: c, reason: collision with root package name */
    public static final AggregateTranslator f22470c;
    public static final AggregateTranslator d;

    /* loaded from: classes4.dex */
    public static final class Builder {
        public final String toString() {
            throw null;
        }
    }

    /* loaded from: classes4.dex */
    public static class XsiUnescaper extends CharSequenceTranslator {
        @Override // org.apache.commons.text.translate.CharSequenceTranslator
        public final int a(CharSequence charSequence, int i, StringWriter stringWriter) {
            if (i == 0) {
                String charSequence2 = charSequence.toString();
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    int indexOf = charSequence2.indexOf(92, i2);
                    if (indexOf == -1) {
                        break;
                    }
                    if (indexOf > i3) {
                        stringWriter.write(charSequence2.substring(i3, indexOf));
                    }
                    i3 = indexOf + 1;
                    i2 = indexOf + 2;
                }
                if (i3 < charSequence2.length()) {
                    stringWriter.write(charSequence2.substring(i3));
                }
                return Character.codePointCount(charSequence, 0, charSequence.length());
            }
            throw new IllegalStateException("XsiUnescaper should never reach the [1] index");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        HashMap hashMap = new HashMap();
        hashMap.put("\"", "\\\"");
        hashMap.put("\\", "\\\\");
        LookupTranslator lookupTranslator = new LookupTranslator(DesugarCollections.unmodifiableMap(hashMap));
        Map map = EntityArrays.i;
        new AggregateTranslator(lookupTranslator, new LookupTranslator(map), new UnicodeEscaper(127));
        HashMap hashMap2 = new HashMap();
        hashMap2.put("'", "\\'");
        hashMap2.put("\"", "\\\"");
        hashMap2.put("\\", "\\\\");
        hashMap2.put("/", "\\/");
        new AggregateTranslator(new LookupTranslator(DesugarCollections.unmodifiableMap(hashMap2)), new LookupTranslator(map), new UnicodeEscaper(127));
        HashMap hashMap3 = new HashMap();
        hashMap3.put("\"", "\\\"");
        hashMap3.put("\\", "\\\\");
        hashMap3.put("/", "\\/");
        new AggregateTranslator(new LookupTranslator(DesugarCollections.unmodifiableMap(hashMap3)), new LookupTranslator(map), new UnicodeEscaper(126));
        HashMap hashMap4 = new HashMap();
        hashMap4.put(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0001", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0002", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0003", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0004", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0005", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0006", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0007", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\b", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u000b", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\f", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u000e", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u000f", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0010", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0011", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0012", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0013", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0014", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0015", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0016", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0017", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0018", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u0019", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u001a", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u001b", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u001c", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u001d", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u001e", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\u001f", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\ufffe", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap4.put("\uffff", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        Map map2 = EntityArrays.e;
        LookupTranslator lookupTranslator2 = new LookupTranslator(map2);
        Map map3 = EntityArrays.g;
        f22469a = new AggregateTranslator(lookupTranslator2, new LookupTranslator(map3), new LookupTranslator(DesugarCollections.unmodifiableMap(hashMap4)), new NumericEntityEscaper(127, 132), new NumericEntityEscaper(134, 159), new Object());
        HashMap hashMap5 = new HashMap();
        hashMap5.put(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap5.put("\u000b", "&#11;");
        hashMap5.put("\f", "&#12;");
        hashMap5.put("\ufffe", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap5.put("\uffff", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        new AggregateTranslator(new LookupTranslator(map2), new LookupTranslator(map3), new LookupTranslator(DesugarCollections.unmodifiableMap(hashMap5)), new NumericEntityEscaper(1, 8), new NumericEntityEscaper(14, 31), new NumericEntityEscaper(127, 132), new NumericEntityEscaper(134, 159), new Object());
        LookupTranslator lookupTranslator3 = new LookupTranslator(map2);
        Map map4 = EntityArrays.f22511a;
        new AggregateTranslator(lookupTranslator3, new LookupTranslator(map4));
        b = new AggregateTranslator(new LookupTranslator(map2), new LookupTranslator(map4), new LookupTranslator(EntityArrays.f22512c));
        HashMap hashMap6 = new HashMap();
        hashMap6.put("|", "\\|");
        hashMap6.put("&", "\\&");
        hashMap6.put(";", "\\;");
        hashMap6.put("<", "\\<");
        hashMap6.put(">", "\\>");
        hashMap6.put("(", "\\(");
        hashMap6.put(")", "\\)");
        hashMap6.put("$", "\\$");
        hashMap6.put("`", "\\`");
        hashMap6.put("\\", "\\\\");
        hashMap6.put("\"", "\\\"");
        hashMap6.put("'", "\\'");
        hashMap6.put(" ", "\\ ");
        hashMap6.put("\t", "\\\t");
        hashMap6.put("\r\n", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap6.put("\n", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap6.put("*", "\\*");
        hashMap6.put("?", "\\?");
        hashMap6.put("[", "\\[");
        hashMap6.put("#", "\\#");
        hashMap6.put("~", "\\~");
        hashMap6.put("=", "\\=");
        hashMap6.put("%", "\\%");
        new LookupTranslator(DesugarCollections.unmodifiableMap(hashMap6));
        HashMap hashMap7 = new HashMap();
        hashMap7.put("\\\\", "\\");
        hashMap7.put("\\\"", "\"");
        hashMap7.put("\\'", "'");
        hashMap7.put("\\", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        f22470c = new AggregateTranslator(new Object(), new Object(), new LookupTranslator(EntityArrays.j), new LookupTranslator(DesugarCollections.unmodifiableMap(hashMap7)));
        Map map5 = EntityArrays.f;
        LookupTranslator lookupTranslator4 = new LookupTranslator(map5);
        Map map6 = EntityArrays.b;
        new AggregateTranslator(lookupTranslator4, new LookupTranslator(map6), new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]));
        new AggregateTranslator(new LookupTranslator(map5), new LookupTranslator(map6), new LookupTranslator(EntityArrays.d), new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]));
        d = new AggregateTranslator(new LookupTranslator(map5), new LookupTranslator(EntityArrays.h), new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]));
    }
}
