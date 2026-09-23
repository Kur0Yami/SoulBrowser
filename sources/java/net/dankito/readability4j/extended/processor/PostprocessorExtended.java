package net.dankito.readability4j.extended.processor;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import net.dankito.readability4j.processor.Postprocessor;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lnet/dankito/readability4j/extended/processor/PostprocessorExtended;", "Lnet/dankito/readability4j/processor/Postprocessor;", "Readability4J"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public class PostprocessorExtended extends Postprocessor {
    @Override // net.dankito.readability4j.processor.Postprocessor
    public final void b(Document document, Element element, String str, String str2, String str3) {
        String str4;
        Element first = document.head().select("base").first();
        if (first != null) {
            str4 = first.attr("href");
        } else {
            str4 = null;
        }
        String str5 = str4;
        if (str5 != null) {
            super.b(document, element, str, str2, str5);
        } else {
            super.b(document, element, str, str2, str3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.dankito.readability4j.processor.Postprocessor
    public final void c(Document document, Element element, String str, Collection collection) {
        CharSequence trim;
        Elements select = element.select("img");
        Intrinsics.checkExpressionValueIsNotNull(select, "articleContent.select(\"img\")");
        int size = select.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            T t = select.get(i2);
            i2++;
            Element imgElement = (Element) t;
            Intrinsics.checkExpressionValueIsNotNull(imgElement, "imgElement");
            Iterator it = CollectionsKt.listOf((Object[]) new String[]{"data-src", "data-original", "data-actualsrc", "data-lazy-src", "data-delayed-url", "data-li-src", "data-pagespeed-lazy-src"}).iterator();
            while (true) {
                if (it.hasNext()) {
                    String value = imgElement.attr((String) it.next());
                    Intrinsics.checkExpressionValueIsNotNull(value, "value");
                    if (!StringsKt.isBlank(value)) {
                        imgElement.attr("src", value);
                        break;
                    }
                }
            }
        }
        Elements elementsByTag = element.getElementsByTag("amp-img");
        Intrinsics.checkExpressionValueIsNotNull(elementsByTag, "element.getElementsByTag(\"amp-img\")");
        int size2 = elementsByTag.size();
        while (i < size2) {
            T t2 = elementsByTag.get(i);
            i++;
            Element element2 = (Element) t2;
            if (element2.childNodeSize() == 0) {
                Attributes attributes = new Attributes();
                attributes.put("decoding", "async");
                attributes.put("alt", element2.attr("alt"));
                String attr = element2.attr("srcset");
                Intrinsics.checkExpressionValueIsNotNull(attr, "amp_img.attr(\"srcset\")");
                if (attr != null) {
                    trim = StringsKt__StringsKt.trim((CharSequence) attr);
                    attributes.put("srcset", trim.toString());
                    element2.appendChild(new Element(Tag.valueOf("img"), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, attributes));
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
                }
            }
        }
        super.c(document, element, str, collection);
    }
}
