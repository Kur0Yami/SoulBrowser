package net.dankito.readability4j.processor;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lnet/dankito/readability4j/processor/Postprocessor;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "Readability4J"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public class Postprocessor {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f21968a = Pattern.compile("^[a-zA-Z][a-zA-Z0-9\\+\\-\\.]*:");
    public static final List b = Arrays.asList("readability-styled", "page");

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f21969c = LoggerFactory.e(Postprocessor.class);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lnet/dankito/readability4j/processor/Postprocessor$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lorg/slf4j/Logger;", "kotlin.jvm.PlatformType", "log", "Lorg/slf4j/Logger;", "Readability4J"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Element element, Set set) {
        Set<String> mutableSet;
        Set<String> classNames = element.classNames();
        Intrinsics.checkExpressionValueIsNotNull(classNames, "node.classNames()");
        ArrayList arrayList = new ArrayList();
        for (Object obj : classNames) {
            if (set.contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            element.classNames(mutableSet);
        } else {
            element.removeAttr("class");
        }
        Elements children = element.children();
        Intrinsics.checkExpressionValueIsNotNull(children, "node.children()");
        int size = children.size();
        int i = 0;
        while (i < size) {
            T t = children.get(i);
            i++;
            Element child = (Element) t;
            Intrinsics.checkExpressionValueIsNotNull(child, "child");
            a(child, set);
        }
    }

    public static String d(String str, String str2, String str3, String str4) {
        int indexOf$default;
        if (!f21968a.matcher(str).find() && str.length() > 2) {
            String substring = str.substring(0, 2);
            Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            if (Intrinsics.areEqual(substring, "//")) {
                StringBuilder v = a.v(str2, "://");
                String substring2 = str.substring(2);
                Intrinsics.checkExpressionValueIsNotNull(substring2, "(this as java.lang.String).substring(startIndex)");
                v.append(substring2);
                return v.toString();
            }
            if (str.charAt(0) != '/') {
                indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, "./", 0, false, 6, (Object) null);
                if (indexOf$default == 0) {
                    StringBuilder t = a.t(str4);
                    String substring3 = str.substring(2);
                    Intrinsics.checkExpressionValueIsNotNull(substring3, "(this as java.lang.String).substring(startIndex)");
                    t.append(substring3);
                    return t.toString();
                }
                if (str.charAt(0) == '#') {
                    return str;
                }
                return a.k(str4, str);
            }
            return a.k(str3, str);
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void b(Document document, Element element, String str, String str2, String str3) {
        int indexOf$default;
        Elements elementsByTag = element.getElementsByTag("a");
        Intrinsics.checkExpressionValueIsNotNull(elementsByTag, "element.getElementsByTag(\"a\")");
        int size = elementsByTag.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            T t = elementsByTag.get(i2);
            i2++;
            Element element2 = (Element) t;
            String href = element2.attr("href");
            Intrinsics.checkExpressionValueIsNotNull(href, "href");
            if (!StringsKt.isBlank(href)) {
                indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) href, "javascript:", 0, false, 6, (Object) null);
                if (indexOf$default == 0) {
                    element2.replaceWith(new TextNode(element2.wholeText()));
                } else {
                    element2.attr("href", d(href, str, str2, str3));
                }
            }
        }
        Elements elementsByTag2 = element.getElementsByTag("img");
        Intrinsics.checkExpressionValueIsNotNull(elementsByTag2, "element.getElementsByTag(\"img\")");
        int size2 = elementsByTag2.size();
        while (i < size2) {
            T t2 = elementsByTag2.get(i);
            i++;
            Element img = (Element) t2;
            Intrinsics.checkExpressionValueIsNotNull(img, "img");
            String src = img.attr("src");
            Intrinsics.checkExpressionValueIsNotNull(src, "src");
            if (!StringsKt.isBlank(src)) {
                img.attr("src", d(src, str, str2, str3));
            }
        }
    }

    public void c(Document document, Element element, String str, Collection collection) {
        List flatten;
        Set set;
        String scheme;
        String str2;
        StringBuilder sb;
        String path;
        int lastIndexOf$default;
        int i;
        try {
            URI uri = URI.create(str);
            Intrinsics.checkExpressionValueIsNotNull(uri, "uri");
            scheme = uri.getScheme();
            str2 = uri.getScheme() + "://" + uri.getHost();
            sb = new StringBuilder();
            sb.append(uri.getScheme());
            sb.append("://");
            sb.append(uri.getHost());
            path = uri.getPath();
            Intrinsics.checkExpressionValueIsNotNull(path, "uri.path");
            String path2 = uri.getPath();
            Intrinsics.checkExpressionValueIsNotNull(path2, "uri.path");
            lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) path2, "/", 0, false, 6, (Object) null);
            i = lastIndexOf$default + 1;
        } catch (Exception e) {
            f21969c.d(e, "Could not fix relative urls for " + element + " with base uri " + str);
        }
        if (path != null) {
            String substring = path.substring(0, i);
            Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            sb.append(substring);
            String sb2 = sb.toString();
            Intrinsics.checkExpressionValueIsNotNull(scheme, "scheme");
            b(document, element, scheme, str2, sb2);
            List asList = Arrays.asList(b, collection);
            Intrinsics.checkExpressionValueIsNotNull(asList, "Arrays.asList(CLASSES_TO…itionalClassesToPreserve)");
            flatten = CollectionsKt__IterablesKt.flatten(asList);
            set = CollectionsKt___CollectionsKt.toSet(flatten);
            a(element, set);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }
}
