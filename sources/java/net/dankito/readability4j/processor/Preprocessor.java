package net.dankito.readability4j.processor;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.dankito.readability4j.util.RegExUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lnet/dankito/readability4j/processor/Preprocessor;", "Lnet/dankito/readability4j/processor/ProcessorBase;", "Companion", "Readability4J"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public class Preprocessor extends ProcessorBase {

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f21970c = LoggerFactory.e(Preprocessor.class);
    public final RegExUtil b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lnet/dankito/readability4j/processor/Preprocessor$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lorg/slf4j/Logger;", "kotlin.jvm.PlatformType", "log", "Lorg/slf4j/Logger;", "Readability4J"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    public Preprocessor(RegExUtil regExUtil) {
        this.b = regExUtil;
    }

    public static void g(Node node) {
        int i = 0;
        while (i < node.childNodeSize()) {
            Node child = node.childNode(i);
            if (Intrinsics.areEqual(child.nodeName(), "#comment")) {
                Intrinsics.checkExpressionValueIsNotNull(child, "child");
                ProcessorBase.d(child, "removeComments");
            } else {
                Intrinsics.checkExpressionValueIsNotNull(child, "child");
                g(child);
                i++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f(Document document) {
        Element c2;
        f21970c.e("Starting to prepare document");
        ProcessorBase.e(document, "script", Preprocessor$removeScripts$1.f21971c);
        Elements elementsByTag = document.getElementsByTag("noscript");
        Intrinsics.checkExpressionValueIsNotNull(elementsByTag, "document.getElementsByTag(\"noscript\")");
        int size = elementsByTag.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            T t = elementsByTag.get(i2);
            i2++;
            Element noscript = (Element) t;
            Intrinsics.checkExpressionValueIsNotNull(noscript, "noscript");
            Elements images = noscript.select("img");
            if (images.size() > 0) {
                ArrayList arrayList = new ArrayList(images);
                Intrinsics.checkExpressionValueIsNotNull(images, "images");
                int size2 = images.size();
                int i3 = 0;
                while (i3 < size2) {
                    T t2 = images.get(i3);
                    i3++;
                    Element element = (Element) t2;
                    String source = element.attr("src");
                    Intrinsics.checkExpressionValueIsNotNull(source, "source");
                    if (!StringsKt.isBlank(source)) {
                        if (document.select("img[src=" + source + ']').size() > 0) {
                            arrayList.remove(element);
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    noscript.unwrap();
                }
            }
            ProcessorBase.d(noscript, "removeScripts('noscript')");
        }
        ProcessorBase.e(document, "style", null);
        ProcessorBase.e(document, "form", null);
        g(document);
        Elements select = document.body().select("br");
        Intrinsics.checkExpressionValueIsNotNull(select, "document.body().select(\"br\")");
        int size3 = select.size();
        int i4 = 0;
        while (i4 < size3) {
            T t3 = select.get(i4);
            i4++;
            Element element2 = (Element) t3;
            Node nextSibling = element2.nextSibling();
            RegExUtil regExUtil = this.b;
            Element c3 = ProcessorBase.c(nextSibling, regExUtil);
            boolean z = false;
            while (c3 != null && Intrinsics.areEqual(c3.nodeName(), "br")) {
                Node nextSibling2 = c3.nextSibling();
                ProcessorBase.d(c3, "replaceBrs");
                c3 = ProcessorBase.c(nextSibling2, regExUtil);
                z = true;
            }
            if (z) {
                Element createElement = element2.ownerDocument().createElement("p");
                element2.replaceWith(createElement);
                Node nextSibling3 = createElement.nextSibling();
                while (nextSibling3 != null && (!Intrinsics.areEqual(nextSibling3.nodeName(), "br") || (c2 = ProcessorBase.c(nextSibling3, regExUtil)) == null || !Intrinsics.areEqual(c2.tagName(), "br"))) {
                    Node nextSibling4 = nextSibling3.nextSibling();
                    createElement.appendChild(nextSibling3);
                    nextSibling3 = nextSibling4;
                }
            }
        }
        Elements elementsByTag2 = document.getElementsByTag("font");
        Intrinsics.checkExpressionValueIsNotNull(elementsByTag2, "parentElement.getElementsByTag(tagName)");
        int size4 = elementsByTag2.size();
        while (i < size4) {
            T t4 = elementsByTag2.get(i);
            i++;
            ((Element) t4).tagName("span");
        }
    }
}
