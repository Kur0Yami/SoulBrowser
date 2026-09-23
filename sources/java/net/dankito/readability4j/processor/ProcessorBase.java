package net.dankito.readability4j.processor;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import net.dankito.readability4j.util.RegExUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lnet/dankito/readability4j/processor/ProcessorBase;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "Readability4J"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public abstract class ProcessorBase {

    /* renamed from: a */
    public static final Logger f21972a = LoggerFactory.e(ProcessorBase.class);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0004X\u0084T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001c\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lnet/dankito/readability4j/processor/ProcessorBase$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "TruncateLogOutput", "Z", "Lorg/slf4j/Logger;", "kotlin.jvm.PlatformType", "log", "Lorg/slf4j/Logger;", "Readability4J"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    public static String a(Element element, RegExUtil regExUtil, boolean z) {
        CharSequence trim;
        String text = element.text();
        Intrinsics.checkExpressionValueIsNotNull(text, "e.text()");
        if (text != null) {
            trim = StringsKt__StringsKt.trim((CharSequence) text);
            String obj = trim.toString();
            if (z && regExUtil != null) {
                String replaceAll = regExUtil.f.matcher(obj).replaceAll(" ");
                Intrinsics.checkExpressionValueIsNotNull(replaceAll, "normalize.matcher(text).replaceAll(\" \")");
                return replaceAll;
            }
            return obj;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    public static /* synthetic */ String b(ProcessorBase processorBase, Element element, RegExUtil regExUtil, int i) {
        boolean z;
        if ((i & 2) != 0) {
            regExUtil = null;
        }
        if ((i & 4) != 0) {
            z = true;
        } else {
            z = false;
        }
        processorBase.getClass();
        return a(element, regExUtil, z);
    }

    public static Element c(Node node, RegExUtil regExUtil) {
        while (node != null && !(node instanceof Element) && (node instanceof TextNode)) {
            String text = ((TextNode) node).text();
            Intrinsics.checkExpressionValueIsNotNull(text, "next.text()");
            if (!regExUtil.h.matcher(text).find()) {
                break;
            }
            node = node.nextSibling();
        }
        if (!(node instanceof Element)) {
            node = null;
        }
        return (Element) node;
    }

    public static void d(Node node, String str) {
        if (node.parent() != null) {
            f21972a.f(str, "\n------\n" + node.outerHtml() + "\n------\n", "{} [{}]");
            node.remove();
        }
    }

    public static void e(Element element, String str, Function1 function1) {
        List<Element> reversed;
        Elements elementsByTag = element.getElementsByTag(str);
        Intrinsics.checkExpressionValueIsNotNull(elementsByTag, "element.getElementsByTag(tagName)");
        reversed = CollectionsKt___CollectionsKt.reversed(elementsByTag);
        for (Element childElement : reversed) {
            if (childElement.parentNode() != null) {
                if (function1 != null) {
                    Intrinsics.checkExpressionValueIsNotNull(childElement, "childElement");
                    if (((Boolean) function1.invoke(childElement)).booleanValue()) {
                    }
                }
                Intrinsics.checkExpressionValueIsNotNull(childElement, "childElement");
                d(childElement, "removeNode('" + str + "')");
            }
        }
    }
}
