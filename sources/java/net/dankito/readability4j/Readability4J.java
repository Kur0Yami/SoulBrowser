package net.dankito.readability4j;

import com.google.android.gms.ads.RequestConfiguration;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import net.dankito.readability4j.model.ReadabilityOptions;
import net.dankito.readability4j.processor.ArticleGrabber;
import net.dankito.readability4j.processor.MetadataParser;
import net.dankito.readability4j.processor.Postprocessor;
import net.dankito.readability4j.processor.Preprocessor;
import net.dankito.readability4j.processor.ProcessorBase;
import net.dankito.readability4j.util.RegExUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lnet/dankito/readability4j/Readability4J;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "Readability4J"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public class Readability4J {
    public static final Logger h = LoggerFactory.e(Readability4J.class);

    /* renamed from: a, reason: collision with root package name */
    public final String f21953a;
    public final Document b;

    /* renamed from: c, reason: collision with root package name */
    public final ReadabilityOptions f21954c;
    public final Preprocessor d;
    public final MetadataParser e;
    public final ArticleGrabber f;
    public final Postprocessor g;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lnet/dankito/readability4j/Readability4J$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lorg/slf4j/Logger;", "kotlin.jvm.PlatformType", "log", "Lorg/slf4j/Logger;", "Readability4J"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, net.dankito.readability4j.processor.Postprocessor] */
    public Readability4J(String str, Document document) {
        ReadabilityOptions readabilityOptions = new ReadabilityOptions();
        RegExUtil regExUtil = new RegExUtil();
        Preprocessor preprocessor = new Preprocessor(regExUtil);
        MetadataParser metadataParser = new MetadataParser(regExUtil);
        ArticleGrabber articleGrabber = new ArticleGrabber(readabilityOptions, regExUtil);
        ?? obj = new Object();
        this.f21953a = str;
        this.b = document;
        this.f21954c = readabilityOptions;
        this.d = preprocessor;
        this.e = metadataParser;
        this.f = articleGrabber;
        this.g = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, net.dankito.readability4j.Article] */
    /* JADX WARN: Type inference failed for: r6v0, types: [net.dankito.readability4j.model.ArticleMetadata, java.lang.Object] */
    public final Article a() {
        String str;
        String str2;
        boolean contains$default;
        boolean z;
        int i;
        boolean z2;
        int lastIndexOf$default;
        int indexOf$default;
        int indexOf$default2;
        CharSequence trim;
        Elements elementsByTag;
        Element first;
        CharSequence trim2;
        Element first2;
        String attr;
        CharSequence trim3;
        String replace$default;
        ReadabilityOptions readabilityOptions = this.f21954c;
        readabilityOptions.getClass();
        ?? obj = new Object();
        Preprocessor preprocessor = this.d;
        Document document = this.b;
        preprocessor.f(document);
        MetadataParser metadataParser = this.e;
        metadataParser.getClass();
        RegExUtil regExUtil = metadataParser.b;
        ?? obj2 = new Object();
        obj2.f21957a = null;
        obj2.b = null;
        obj2.f21958c = null;
        HashMap hashMap = new HashMap();
        Pattern compile = Pattern.compile("^\\s*((twitter)\\s*:\\s*)?(description|title)\\s*$", 2);
        Pattern compile2 = Pattern.compile("^\\s*og\\s*:\\s*(description|title)\\s*$", 2);
        Elements select = document.select("meta");
        Intrinsics.checkExpressionValueIsNotNull(select, "document.select(\"meta\")");
        int size = select.size();
        int i2 = 0;
        while (true) {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (i2 >= size) {
                break;
            }
            T t = select.get(i2);
            int i3 = i2 + 1;
            Element element = (Element) t;
            String attr2 = element.attr("name");
            Elements elements = select;
            String attr3 = element.attr("property");
            int i4 = size;
            if (!Intrinsics.areEqual(attr2, "author") && !Intrinsics.areEqual(attr3, "author")) {
                if (!compile.matcher(attr2).find()) {
                    if (compile2.matcher(attr3).find()) {
                        attr2 = attr3;
                    } else {
                        attr2 = null;
                    }
                }
                if (attr2 != null && (attr = element.attr("content")) != null && !StringsKt.isBlank(attr)) {
                    String lowerCase = attr2.toLowerCase();
                    Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase()");
                    String replace = new Regex("\\s").replace(lowerCase, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    trim3 = StringsKt__StringsKt.trim((CharSequence) attr);
                    replace$default = StringsKt__StringsJVMKt.replace$default(trim3.toString(), "  ", " ", false, 4, (Object) null);
                    hashMap.put(replace, replace$default);
                }
            } else {
                obj2.b = element.attr("content");
            }
            select = elements;
            size = i4;
            i2 = i3;
        }
        String str3 = (String) hashMap.get("description");
        if (str3 == null) {
            str3 = (String) hashMap.get("og:description");
        }
        if (str3 == null) {
            str3 = (String) hashMap.get("twitter:description");
        }
        obj2.f21958c = str3;
        try {
            str2 = document.title();
            Intrinsics.checkExpressionValueIsNotNull(str2, "doc.title()");
            try {
                if (StringsKt.isBlank(str2) && (first2 = document.select("#title").first()) != null) {
                    str2 = ProcessorBase.b(metadataParser, first2, regExUtil, 4);
                }
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String str4 = str2;
        if (!new Regex(" [\\|\\-\\/>»] ").containsMatchIn(str2)) {
            contains$default = StringsKt__StringsKt.contains$default(str2, ": ", false, 2, (Object) null);
            if (contains$default) {
                Elements select2 = document.select("h1, h2");
                Intrinsics.checkExpressionValueIsNotNull(select2, "doc.select(\"h1, h2\")");
                ArrayList arrayList = new ArrayList();
                int size2 = select2.size();
                int i5 = 0;
                while (i5 < size2) {
                    T t2 = select2.get(i5);
                    i5++;
                    if (Intrinsics.areEqual(((Element) t2).wholeText(), str2)) {
                        arrayList.add(t2);
                    }
                }
                if (arrayList.size() <= 0) {
                    lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) str4, ':', 0, false, 6, (Object) null);
                    int i6 = lastIndexOf$default + 1;
                    if (str4 != null) {
                        str2 = str4.substring(i6);
                        Intrinsics.checkExpressionValueIsNotNull(str2, "(this as java.lang.String).substring(startIndex)");
                        if (MetadataParser.f(str2) < 3) {
                            indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) str4, ':', 0, false, 6, (Object) null);
                            str2 = str4.substring(indexOf$default2 + 1);
                            Intrinsics.checkExpressionValueIsNotNull(str2, "(this as java.lang.String).substring(startIndex)");
                            z2 = false;
                            i = 4;
                        } else {
                            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str4, ':', 0, false, 6, (Object) null);
                            String substring = str4.substring(0, indexOf$default);
                            Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                            if (MetadataParser.f(substring) > 5) {
                                str2 = str4;
                            }
                            i = 4;
                            z2 = false;
                        }
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                }
            } else if (str2.length() > 150 || str2.length() < 15) {
                Elements elementsByTag2 = document.getElementsByTag("h1");
                if (elementsByTag2.size() == 1) {
                    z = false;
                    T t3 = elementsByTag2.get(0);
                    Intrinsics.checkExpressionValueIsNotNull(t3, "hOnes[0]");
                    i = 4;
                    str2 = ProcessorBase.b(metadataParser, (Element) t3, regExUtil, 4);
                    z2 = z;
                }
            }
            z = false;
            i = 4;
            z2 = z;
        } else {
            boolean containsMatchIn = new Regex(" [\\/>»] ").containsMatchIn(str2);
            RegexOption regexOption = RegexOption.IGNORE_CASE;
            str2 = new Regex("(.*)[\\|\\-\\/>»] .*", regexOption).replace(str4, "$1");
            if (MetadataParser.f(str2) < 3) {
                str2 = new Regex("[^\\|\\-\\/>»]*[\\|\\-\\/>»](.*)", regexOption).replace(str4, "$1");
            }
            z2 = containsMatchIn;
            i = 4;
        }
        if (str2 != null) {
            trim = StringsKt__StringsKt.trim((CharSequence) str2);
            String obj3 = trim.toString();
            int f = MetadataParser.f(obj3);
            if (f > i || (z2 && f == MetadataParser.f(new Regex("[\\|\\-\\/>»]+").replace(str4, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) - 1)) {
                str4 = obj3;
            }
            obj2.f21957a = str4;
            if (str4 == null || StringsKt.isBlank(str4)) {
                String str5 = (String) hashMap.get("og:title");
                if (str5 == null) {
                    str5 = (String) hashMap.get("twitter:title");
                }
                if (str5 != null) {
                    str = str5;
                }
                obj2.f21957a = str;
            }
            Charset charset = document.charset();
            if (charset != null) {
                charset.name();
            }
            ArticleGrabber articleGrabber = this.f;
            Element n = ArticleGrabber.n(articleGrabber, document, obj2);
            h.j(n, "Grabbed: {}");
            if (n != null) {
                this.g.c(document, n, this.f21953a, readabilityOptions.f21961c);
                obj.b = n;
            }
            String str6 = obj2.f21958c;
            if ((str6 == null || StringsKt.isBlank(str6)) && n != null && (elementsByTag = n.getElementsByTag("p")) != null && (first = elementsByTag.first()) != null) {
                String text = first.text();
                Intrinsics.checkExpressionValueIsNotNull(text, "firstParagraph.text()");
                if (text != null) {
                    trim2 = StringsKt__StringsKt.trim((CharSequence) text);
                    obj2.f21958c = trim2.toString();
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
                }
            }
            obj.f21952a = obj2.f21957a;
            String str7 = obj2.b;
            if (str7 == null || StringsKt.isBlank(str7)) {
                String str8 = articleGrabber.b;
            }
            String str9 = articleGrabber.f21962c;
            return obj;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }
}
