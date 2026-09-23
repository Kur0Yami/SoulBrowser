package net.dankito.readability4j.processor;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.dankito.readability4j.model.ArticleGrabberOptions;
import net.dankito.readability4j.model.ReadabilityObject;
import net.dankito.readability4j.model.ReadabilityOptions;
import net.dankito.readability4j.util.RegExUtil;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lnet/dankito/readability4j/processor/ArticleGrabber;", "Lnet/dankito/readability4j/processor/ProcessorBase;", "Companion", "Readability4J"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public class ArticleGrabber extends ProcessorBase {
    public static final List i = Arrays.asList("section", "h2", "h3", "h4", "h5", "h6", "p", "td", "pre");
    public static final List j = Arrays.asList("a", "blockquote", "dl", "div", "img", "ol", "p", "pre", "table", "ul", "select");
    public static final List k = Arrays.asList("div", "article", "section", "p");
    public static final List l = Arrays.asList("align", "background", "bgcolor", "border", "cellpadding", "cellspacing", "frame", "hspace", "rules", "style", "valign", "vspace");
    public static final List m = Arrays.asList("table", "th", "td", "hr", "pre");
    public static final List n = Arrays.asList("object", "embed", "iframe");
    public static final List o = Arrays.asList("col", "colgroup", "tfoot", "thead", "th");
    public static final Logger p = LoggerFactory.e(ArticleGrabber.class);
    public String b;

    /* renamed from: c, reason: collision with root package name */
    public String f21962c;
    public final int d;
    public final int e;
    public final HashMap f = new HashMap();
    public final HashMap g = new HashMap();
    public final RegExUtil h;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lnet/dankito/readability4j/processor/ArticleGrabber$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lorg/slf4j/Logger;", "kotlin.jvm.PlatformType", "log", "Lorg/slf4j/Logger;", "Readability4J"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    public ArticleGrabber(ReadabilityOptions readabilityOptions, RegExUtil regExUtil) {
        this.h = regExUtil;
        this.d = readabilityOptions.f21960a;
        this.e = readabilityOptions.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void h(Element element) {
        if (!Intrinsics.areEqual(element.tagName(), "svg")) {
            if (element.className() != "readability-styled") {
                List PRESENTATIONAL_ATTRIBUTES = l;
                Intrinsics.checkExpressionValueIsNotNull(PRESENTATIONAL_ATTRIBUTES, "PRESENTATIONAL_ATTRIBUTES");
                Iterator it = PRESENTATIONAL_ATTRIBUTES.iterator();
                while (it.hasNext()) {
                    element.removeAttr((String) it.next());
                }
                if (m.contains(element.tagName())) {
                    element.removeAttr("width");
                    element.removeAttr("height");
                }
            }
            Elements children = element.children();
            Intrinsics.checkExpressionValueIsNotNull(children, "e.children()");
            int size = children.size();
            int i2 = 0;
            while (i2 < size) {
                T t = children.get(i2);
                i2++;
                Element child = (Element) t;
                Intrinsics.checkExpressionValueIsNotNull(child, "child");
                h(child);
            }
        }
    }

    public static Element k(Element element, boolean z) {
        if (!z && element.children().size() > 0) {
            return element.child(0);
        }
        Element nextElementSibling = element.nextElementSibling();
        if (nextElementSibling != null) {
            return nextElementSibling;
        }
        Element parent = element.parent();
        while (parent != null && parent.nextElementSibling() == null) {
            parent = parent.parent();
        }
        if (parent != null) {
            return parent.nextElementSibling();
        }
        return null;
    }

    public static ArrayList l(int i2, Element element) {
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        while (element.parent() != null) {
            arrayList.add(element.parent());
            i3++;
            if (i3 == i2) {
                break;
            }
            element = element.parent();
            Intrinsics.checkExpressionValueIsNotNull(element, "next.parent()");
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:120:0x02ad, code lost:
    
        r21 = r5;
        r20 = r7;
        r1 = new java.util.ArrayList();
        r5 = r10.size();
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02bd, code lost:
    
        r22 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x02c1, code lost:
    
        if (r6 >= r5) goto L472;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x02c3, code lost:
    
        r28 = r10.get(r6);
        r6 = r6 + 1;
        r12 = (org.jsoup.nodes.Element) r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x02d1, code lost:
    
        if (r12.parentNode() != null) goto L471;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x02d6, code lost:
    
        r11 = r21;
        r21 = r5;
        r5 = net.dankito.readability4j.processor.ProcessorBase.b(r40, r12, r11, 4);
        r29 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x02e9, code lost:
    
        if (r5.length() >= 25) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x02f6, code lost:
    
        r6 = l(3, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x02ff, code lost:
    
        if (r6.size() != 0) goto L474;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0302, code lost:
    
        r30 = r13;
        r10 = kotlin.text.StringsKt__StringsKt.split$default((java.lang.CharSequence) r5, new char[]{','}, false, 0, 6, (java.lang.Object) null);
        r12 = (1 + 0.0d) + r10.size();
        r10 = r4;
        r4 = java.lang.Math.min(java.lang.Math.floor(r5.length() / 100.0d), 3.0d) + r12;
        r12 = r6.size() - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x033d, code lost:
    
        if (r12 < 0) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x033f, code lost:
    
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0340, code lost:
    
        r25 = r4;
        r4 = (org.jsoup.nodes.Element) r6.get(r13);
        r5 = r4.tagName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x034e, code lost:
    
        if (r5 == null) goto L482;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0354, code lost:
    
        if (kotlin.text.StringsKt.isBlank(r5) == false) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x035f, code lost:
    
        if (r40.m(r4) != null) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0361, code lost:
    
        r1.add(r4);
        r40.r(r4, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0367, code lost:
    
        if (r13 != 0) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0369, code lost:
    
        r5 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0372, code lost:
    
        r4 = r40.m(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0376, code lost:
    
        if (r4 == null) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0378, code lost:
    
        r32 = r10;
        r31 = r11;
        r24 = r6;
        r4.f21959a = (r25 / r5) + r4.f21959a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x038d, code lost:
    
        if (r13 == r12) goto L481;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x038f, code lost:
    
        r13 = r13 + 1;
        r6 = r24;
        r4 = r25;
        r11 = r31;
        r10 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x039a, code lost:
    
        r5 = r21;
        r12 = r22;
        r6 = r6;
        r10 = r29;
        r13 = r30;
        r21 = r31;
        r4 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0387, code lost:
    
        r24 = r6;
        r32 = r10;
        r31 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x036c, code lost:
    
        if (r13 != 1) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x036e, code lost:
    
        r5 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0370, code lost:
    
        r5 = r13 * 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0356, code lost:
    
        r32 = r10;
        r31 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x02eb, code lost:
    
        r5 = r21;
        r12 = r22;
        r6 = r6;
        r10 = r29;
        r21 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x02d3, code lost:
    
        r12 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x03aa, code lost:
    
        r32 = r4;
        r30 = r13;
        r31 = r21;
        r4 = r40.d;
        r5 = new java.util.ArrayList();
        r6 = r1.size();
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x03bc, code lost:
    
        if (r10 >= r6) goto L484;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x03be, code lost:
    
        r11 = r1.get(r10);
        r10 = r10 + 1;
        r11 = (org.jsoup.nodes.Element) r11;
        r12 = r40.m(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x03ca, code lost:
    
        if (r12 == null) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x03cc, code lost:
    
        r21 = r14;
        r29 = r1;
        r13 = (1 - r40.j(r11)) * r12.f21959a;
        r12.f21959a = r13;
        r33 = r6;
        r6 = r20;
        r6.f(r11, java.lang.Double.valueOf(r13), "Candidate: {} with score {}");
        r1 = r4 - 1;
        r20 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x03f1, code lost:
    
        if (r1 < 0) goto L486;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x03f3, code lost:
    
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x03f8, code lost:
    
        if (r5.size() <= r12) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x03fa, code lost:
    
        r10 = (org.jsoup.nodes.Element) r5.get(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0402, code lost:
    
        if (r10 == null) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0404, code lost:
    
        r34 = r10;
        r10 = r40.m(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0412, code lost:
    
        if (r34 == null) goto L490;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0414, code lost:
    
        r34 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0416, code lost:
    
        if (r10 == null) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x041c, code lost:
    
        if (r34 <= r10.f21959a) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0426, code lost:
    
        r5.add(r12, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x042d, code lost:
    
        if (r5.size() <= r4) goto L488;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x042f, code lost:
    
        r5.remove(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x043d, code lost:
    
        r10 = r20;
        r14 = r21;
        r1 = r29;
        r20 = r6;
        r6 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x041f, code lost:
    
        if (r12 == r1) goto L487;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0421, code lost:
    
        r12 = r12 + 1;
        r13 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x040f, code lost:
    
        r34 = r10;
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0401, code lost:
    
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0433, code lost:
    
        r29 = r1;
        r33 = r6;
        r21 = r14;
        r6 = r20;
        r20 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0449, code lost:
    
        r21 = r14;
        r6 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0451, code lost:
    
        if (r5.size() <= 0) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0453, code lost:
    
        r4 = (org.jsoup.nodes.Element) r5.get(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x045c, code lost:
    
        if (r4 == null) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0466, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r4.tagName(), "body") == false) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x046a, code lost:
    
        r1 = new java.util.ArrayList();
        r10 = r40.m(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0473, code lost:
    
        if (r10 == null) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0475, code lost:
    
        r11 = new java.util.ArrayList();
        r12 = r5.size();
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x047f, code lost:
    
        if (r13 >= r12) goto L492;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x0481, code lost:
    
        r14 = r5.get(r13);
        r13 = r13 + 1;
        r20 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0490, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual((org.jsoup.nodes.Element) r14, r4) != false) goto L494;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x0492, code lost:
    
        r11.add(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x0495, code lost:
    
        r5 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x0498, code lost:
    
        r5 = r11.size();
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x049d, code lost:
    
        if (r12 >= r5) goto L495;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x049f, code lost:
    
        r13 = r11.get(r12);
        r12 = r12 + 1;
        r13 = (org.jsoup.nodes.Element) r13;
        r14 = r40.m(r13);
        r20 = r4;
        r29 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x04af, code lost:
    
        if (r14 == null) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x04b1, code lost:
    
        r33 = r14.f21959a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x04c0, code lost:
    
        if ((r33 / r10.f21959a) < 0.75d) goto L497;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x04c2, code lost:
    
        r1.add(l(0, r13));
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x04ca, code lost:
    
        r4 = r20;
        r5 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x04b6, code lost:
    
        r33 = 0.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x04cf, code lost:
    
        r20 = r4;
        r5 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x04d6, code lost:
    
        if (r1.size() < 3) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x04d8, code lost:
    
        r4 = r20.parent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x04dc, code lost:
    
        if (r4 == null) goto L500;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x04e2, code lost:
    
        if (r4.tagName() == "body") goto L499;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x04e4, code lost:
    
        r10 = 0;
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x04ea, code lost:
    
        if (r10 >= r1.size()) goto L501;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x04ec, code lost:
    
        if (r11 >= r5) goto L502;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x04f8, code lost:
    
        if (((java.util.List) r1.get(r10)).contains(r4) == false) goto L504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x04fa, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x04fc, code lost:
    
        r10 = r10 + 1;
        r5 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0500, code lost:
    
        if (r11 < r5) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x0503, code lost:
    
        r4 = r4.parent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x050e, code lost:
    
        if (r40.m(r4) != null) goto L213;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x0510, code lost:
    
        r40.r(r4, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0513, code lost:
    
        r1 = r4.parent();
        r5 = r40.m(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x051b, code lost:
    
        if (r5 == null) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x051d, code lost:
    
        r10 = r5.f21959a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x0525, code lost:
    
        r12 = r10 / 3.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0527, code lost:
    
        if (r1 == null) goto L506;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x0531, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1.tagName(), "body") != false) goto L505;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x0533, code lost:
    
        r5 = r40.m(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x0537, code lost:
    
        if (r5 != null) goto L507;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x053e, code lost:
    
        r14 = r4;
        r4 = r5.f21959a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0543, code lost:
    
        if (r4 >= r12) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x0548, code lost:
    
        if (r4 <= r10) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x054c, code lost:
    
        r1 = r1.parent();
        r10 = r4;
        r4 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x054a, code lost:
    
        r4 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0555, code lost:
    
        r1 = r4.parent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x0559, code lost:
    
        r39 = r4;
        r4 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x055e, code lost:
    
        if (r4 == null) goto L516;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x0568, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r4.tagName(), "body") != false) goto L515;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0573, code lost:
    
        if (r4.children().size() != 1) goto L514;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0575, code lost:
    
        r1 = r4.parent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x057e, code lost:
    
        if (r40.m(r39) != null) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x0580, code lost:
    
        r40.r(r39, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0583, code lost:
    
        r4 = new kotlin.Pair(r39, java.lang.Boolean.FALSE);
        r10 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x05c5, code lost:
    
        r1 = (org.jsoup.nodes.Element) r4.getFirst();
        r4 = ((java.lang.Boolean) r4.getSecond()).booleanValue();
        r5 = r41.createElement("div");
        r11 = r40.m(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x05df, code lost:
    
        if (r11 != null) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x05e1, code lost:
    
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, "articleContent");
        r18 = r4;
        r15 = " ";
        r13 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x06fc, code lost:
    
        r6.j(r5.html(), "Article content pre-prep: {}");
        h(r5);
        r7 = r5.getElementsByTag("table");
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, "root.getElementsByTag(\"table\")");
        r8 = r7.size();
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x0718, code lost:
    
        if (r11 >= r8) goto L518;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x071a, code lost:
    
        r12 = r7.get(r11);
        r11 = r11 + 1;
        r12 = (org.jsoup.nodes.Element) r12;
        r20 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x0730, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r12.attr("role"), "presentation") == false) goto L312;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0749, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r12.attr("datatable"), "0") == false) goto L315;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x0753, code lost:
    
        r14 = r12.attr("summary");
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r14, "summary");
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0760, code lost:
    
        if (kotlin.text.StringsKt.isBlank(r14) != false) goto L318;
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x076a, code lost:
    
        r14 = r12.getElementsByTag("caption");
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x0775, code lost:
    
        if (r14.size() <= 0) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x0782, code lost:
    
        if (((org.jsoup.nodes.Element) r14.get(0)).childNodeSize() <= 0) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x0784, code lost:
    
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r12, "table");
        r40.s(r12, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x0739, code lost:
    
        r7 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x078c, code lost:
    
        r14 = net.dankito.readability4j.processor.ArticleGrabber.o;
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r14, "DATA_TABLE_DESCENDANTS");
        r7 = r14.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x079b, code lost:
    
        if (r7.hasNext() == false) goto L528;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x07ab, code lost:
    
        if (r12.getElementsByTag((java.lang.String) r7.next()).size() <= 0) goto L529;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x07ad, code lost:
    
        r6.e("Data table because found data-y descendant");
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r12, "table");
        r40.s(r12, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x07c3, code lost:
    
        if (r12.getElementsByTag("table").size() <= 0) goto L517;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x07ce, code lost:
    
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r12, "table");
        r7 = r12.getElementsByTag("tr");
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, "trs");
        r14 = r7.size();
        r25 = r8;
        r8 = 0;
        r11 = 0;
        r24 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x07c5, code lost:
    
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r12, "table");
        r40.s(r12, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x0762, code lost:
    
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r12, "table");
        r40.s(r12, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x074b, code lost:
    
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r12, "table");
        r40.s(r12, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x0732, code lost:
    
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r12, "table");
        r40.s(r12, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x08af, code lost:
    
        r31 = r13;
        r40.g(r5, "form", r2);
        r40.g(r5, "fieldset", r2);
        r40.f("object", r5);
        r40.f("embed", r5);
        r40.f("footer", r5);
        r40.f("link", r5);
        r7 = new kotlin.text.Regex("share");
        r8 = r5.children();
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r8, "articleContent.children()");
        r11 = r8.size();
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x08e4, code lost:
    
        if (r12 >= r11) goto L534;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x08e6, code lost:
    
        r13 = r8.get(r12);
        r12 = r12 + 1;
        r13 = (org.jsoup.nodes.Element) r13;
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r13, "topCandidate");
        r20 = r8;
        r8 = k(r13, true);
        r13 = k(r13, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x08ff, code lost:
    
        if (r13 == null) goto L535;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x0905, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r13, r8) != false) goto L536;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x0907, code lost:
    
        r14 = new java.lang.StringBuilder();
        r23 = r8;
        r14.append(r13.className());
        r14.append(r15);
        r14.append(r13.id());
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x0927, code lost:
    
        if (r7.containsMatchIn(r14.toString()) == false) goto L371;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x0929, code lost:
    
        r8 = r7.getPattern();
        r16 = k(r13, true);
        net.dankito.readability4j.processor.ProcessorBase.d(r13, r8);
        r13 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x093e, code lost:
    
        r8 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x0938, code lost:
    
        r13 = k(r13, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x0941, code lost:
    
        r8 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x0945, code lost:
    
        r7 = r5.getElementsByTag(r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x0950, code lost:
    
        if (r7.size() != 1) goto L388;
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x0952, code lost:
    
        r12 = r42.f21957a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x0956, code lost:
    
        if (r12 == null) goto L389;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x095c, code lost:
    
        if (r12.length() <= 0) goto L389;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x095e, code lost:
    
        r13 = (((org.jsoup.nodes.Element) r7.get(0)).text().length() - r12.length()) / r12.length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x0982, code lost:
    
        if (java.lang.Math.abs(r13) >= 0.5d) goto L389;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x098a, code lost:
    
        if (r13 <= 0) goto L385;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x098c, code lost:
    
        r7 = ((org.jsoup.nodes.Element) r7.get(0)).text();
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, "h2[0].text()");
        r7 = kotlin.text.StringsKt__StringsKt.contains$default(r7, r12, false, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x09af, code lost:
    
        if (r7 == false) goto L389;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x09b1, code lost:
    
        r40.f(r30, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x099e, code lost:
    
        r7 = ((org.jsoup.nodes.Element) r7.get(0)).text();
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, "h2[0].text()");
        r7 = kotlin.text.StringsKt__StringsKt.contains$default(r12, r7, false, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x09b7, code lost:
    
        r40.f("iframe", r5);
        r40.f("input", r5);
        r40.f("textarea", r5);
        r40.f("select", r5);
        r40.f("button", r5);
        r7 = java.util.Arrays.asList(r21, r30);
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, "Arrays.asList(\"h1\", \"h2\")");
        r7 = r7.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x09e7, code lost:
    
        if (r7.hasNext() == false) goto L539;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x09e9, code lost:
    
        r8 = (java.lang.String) r7.next();
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r8, "it");
        net.dankito.readability4j.processor.ProcessorBase.e(r5, r8, new net.dankito.readability4j.processor.ArticleGrabber$cleanHeaders$$inlined$forEach$lambda$1(r40, r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x09fd, code lost:
    
        r40.g(r5, "table", r2);
        r40.g(r5, "ul", r2);
        r40.g(r5, "div", r2);
        net.dankito.readability4j.processor.ProcessorBase.e(r5, "p", new net.dankito.readability4j.processor.ArticleGrabber$prepArticle$3(r40));
        r4 = r5.select(r22);
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, "articleContent.select(\"br\")");
        r7 = r4.size();
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x0a20, code lost:
    
        if (r8 >= r7) goto L540;
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x0a22, code lost:
    
        r12 = r4.get(r8);
        r8 = r8 + 1;
        r12 = (org.jsoup.nodes.Element) r12;
        r14 = r32;
        r13 = net.dankito.readability4j.processor.ProcessorBase.c(r12.nextSibling(), r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x0a34, code lost:
    
        if (r13 == null) goto L542;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x0a3e, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r13.tagName(), "p") == false) goto L543;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x0a40, code lost:
    
        r12.remove();
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x0a43, code lost:
    
        r32 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:417:0x0a46, code lost:
    
        r14 = r32;
        r6.j(r5.html(), "Article content post-prep: {}");
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x0a57, code lost:
    
        if (r18 == false) goto L404;
     */
    /* JADX WARN: Code restructure failed: missing block: B:419:0x0a59, code lost:
    
        r1.attr("id", "readability-page-1");
        r1.addClass("page");
        r8 = r41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x0a90, code lost:
    
        r6.j(r5.html(), "Article content after paging: {}");
        r3 = new java.util.ArrayList();
        r4 = net.dankito.readability4j.processor.ProcessorBase.a(r5, r14, true).length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x0aa9, code lost:
    
        if (r4 >= r40.e) goto L431;
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x0aab, code lost:
    
        r7 = r17;
        r10.html(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x0ab2, code lost:
    
        if (r2.f21955a == false) goto L413;
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x0ab4, code lost:
    
        r2.f21955a = false;
        r3.add(new kotlin.Pair(r5, java.lang.Integer.valueOf(r4)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x0aea, code lost:
    
        r9 = 0;
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x0b39, code lost:
    
        if (r19 == false) goto L441;
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x0b3b, code lost:
    
        r3 = new org.jsoup.nodes.Element[2];
        r3[r9] = r1.parent();
        r3[1] = r1;
        r2 = kotlin.collections.SetsKt.mutableSetOf(r3);
        r1 = r1.parent();
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, "topCandidate.parent()");
        r2.addAll(l(r9, r1));
        r2.add(r8.body());
        r2.add(r8.selectFirst("html"));
        r1 = kotlin.collections.CollectionsKt___CollectionsKt.filterNotNull(r2);
        r1 = r1.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x0b78, code lost:
    
        if (r1.hasNext() == false) goto L544;
     */
    /* JADX WARN: Code restructure failed: missing block: B:432:0x0b7a, code lost:
    
        r2 = ((org.jsoup.nodes.Element) r1.next()).attr("dir");
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, "articleDir");
     */
    /* JADX WARN: Code restructure failed: missing block: B:433:0x0b8f, code lost:
    
        if (kotlin.text.StringsKt.isBlank(r2) != false) goto L546;
     */
    /* JADX WARN: Code restructure failed: missing block: B:435:0x0b91, code lost:
    
        r40.f21962c = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x0b94, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:441:0x0ac7, code lost:
    
        if (r2.b == false) goto L416;
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x0ac9, code lost:
    
        r2.b = false;
        r3.add(new kotlin.Pair(r5, java.lang.Integer.valueOf(r4)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x0ada, code lost:
    
        if (r2.f21956c == false) goto L420;
     */
    /* JADX WARN: Code restructure failed: missing block: B:445:0x0adc, code lost:
    
        r2.f21956c = false;
        r3.add(new kotlin.Pair(r5, java.lang.Integer.valueOf(r4)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:0x0aee, code lost:
    
        r3.add(new kotlin.Pair(r5, java.lang.Integer.valueOf(r4)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:447:0x0aff, code lost:
    
        if (r3.size() <= 1) goto L423;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x0b01, code lost:
    
        kotlin.collections.CollectionsKt.sortWith(r3, new java.lang.Object());
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x0b0d, code lost:
    
        if (r3.isEmpty() != false) goto L451;
     */
    /* JADX WARN: Code restructure failed: missing block: B:451:0x0b0f, code lost:
    
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x0b20, code lost:
    
        if (((java.lang.Number) ((kotlin.Pair) r3.get(0)).getSecond()).intValue() > 0) goto L428;
     */
    /* JADX WARN: Code restructure failed: missing block: B:453:0x0b23, code lost:
    
        r5 = (org.jsoup.nodes.Element) ((kotlin.Pair) r3.get(0)).getFirst();
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x0b30, code lost:
    
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x0b33, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x0b35, code lost:
    
        r7 = r17;
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:459:0x0a62, code lost:
    
        r8 = r41;
        r9 = r8.createElement("div");
        r9.attr("id", "readability-page-1");
        r9.addClass("page");
        r3 = new java.util.ArrayList(r5.childNodes());
        r4 = r3.size();
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x0a7c, code lost:
    
        if (r7 >= r4) goto L547;
     */
    /* JADX WARN: Code restructure failed: missing block: B:461:0x0a7e, code lost:
    
        r12 = r3.get(r7);
        r7 = r7 + 1;
        r12 = (org.jsoup.nodes.Node) r12;
        r12.remove();
        r9.appendChild(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:463:0x0a8d, code lost:
    
        r5.appendChild(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:465:0x05eb, code lost:
    
        r15 = " ";
        r7 = java.lang.Math.max(10.0d, r11.f21959a * 0.2d);
        r13 = r1.parent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:466:0x05ff, code lost:
    
        if (r13 == null) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:467:0x0601, code lost:
    
        r13 = r13.children();
     */
    /* JADX WARN: Code restructure failed: missing block: B:468:0x0605, code lost:
    
        if (r13 == null) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:469:0x060d, code lost:
    
        r14 = new java.util.ArrayList(r13);
        r13 = r14.size();
        r18 = r4;
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:470:0x0619, code lost:
    
        if (r4 >= r13) goto L548;
     */
    /* JADX WARN: Code restructure failed: missing block: B:471:0x061b, code lost:
    
        r20 = r14.get(r4);
        r4 = r4 + 1;
        r4 = (org.jsoup.nodes.Element) r20;
        r33 = r7;
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, "sibling");
        r7 = r40.m(r4);
        r20 = r13;
        r8 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:472:0x0635, code lost:
    
        if (r7 == null) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:473:0x0637, code lost:
    
        r13 = java.lang.Double.valueOf(r7.f21959a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:474:0x0644, code lost:
    
        r6.f(r4, r13, "Looking at sibling node: {} with score {}");
     */
    /* JADX WARN: Code restructure failed: missing block: B:475:0x0649, code lost:
    
        if (r7 == null) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:476:0x064b, code lost:
    
        r13 = java.lang.String.valueOf(r7.f21959a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:477:0x0651, code lost:
    
        if (r13 == null) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:478:0x0656, code lost:
    
        r6.j(r13, "Sibling has score {}");
     */
    /* JADX WARN: Code restructure failed: missing block: B:479:0x065f, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r4, r1) == false) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:480:0x0661, code lost:
    
        r29 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:481:0x0663, code lost:
    
        r13 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:482:0x06cc, code lost:
    
        r6.j(r4, "Appending node: {}");
     */
    /* JADX WARN: Code restructure failed: missing block: B:483:0x06db, code lost:
    
        if (net.dankito.readability4j.processor.ArticleGrabber.k.contains(r4.tagName()) != false) goto L302;
     */
    /* JADX WARN: Code restructure failed: missing block: B:484:0x06dd, code lost:
    
        r6.j(r4, "Altering sibling: {} to div.");
        r4.tagName("div");
     */
    /* JADX WARN: Code restructure failed: missing block: B:485:0x06e5, code lost:
    
        r5.appendChild(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:487:0x06eb, code lost:
    
        r31 = r13;
        r13 = r20;
        r4 = r4;
        r14 = r29;
        r7 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:489:0x0672, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r4.className(), r1.className()) == false) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x067a, code lost:
    
        if (r1.className() == com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:492:0x067c, code lost:
    
        r13 = (r11.f21959a * 0.2d) + 0.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:493:0x0685, code lost:
    
        r29 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:494:0x0687, code lost:
    
        if (r7 == null) goto L286;
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x068e, code lost:
    
        if ((r7.f21959a + r13) < r33) goto L286;
     */
    /* JADX WARN: Code restructure failed: missing block: B:498:0x0699, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r4.tagName(), "p") == false) goto L303;
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x069b, code lost:
    
        r7 = r40.j(r4);
        r13 = r31;
        r7 = net.dankito.readability4j.processor.ProcessorBase.b(r40, r4, r13, 4);
        r8 = r7.length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:500:0x06ae, code lost:
    
        if (r8 <= 80) goto L293;
     */
    /* JADX WARN: Code restructure failed: missing block: B:502:0x06b4, code lost:
    
        if (r7 >= 0.25d) goto L293;
     */
    /* JADX WARN: Code restructure failed: missing block: B:503:0x06b7, code lost:
    
        if (r8 >= 80) goto L550;
     */
    /* JADX WARN: Code restructure failed: missing block: B:504:0x06b9, code lost:
    
        if (r8 <= 0) goto L551;
     */
    /* JADX WARN: Code restructure failed: missing block: B:506:0x06bd, code lost:
    
        if (r7 != 0.0d) goto L552;
     */
    /* JADX WARN: Code restructure failed: missing block: B:508:0x06ca, code lost:
    
        if (new kotlin.text.Regex("\\.( |$)").containsMatchIn(r7) == false) goto L553;
     */
    /* JADX WARN: Code restructure failed: missing block: B:513:0x06e9, code lost:
    
        r13 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:515:0x0683, code lost:
    
        r13 = 0.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:516:0x0654, code lost:
    
        r13 = "Unknown";
     */
    /* JADX WARN: Code restructure failed: missing block: B:517:0x063e, code lost:
    
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:519:0x06f7, code lost:
    
        r13 = r31;
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, "articleContent");
     */
    /* JADX WARN: Code restructure failed: missing block: B:520:0x0608, code lost:
    
        r13 = new org.jsoup.select.Elements();
     */
    /* JADX WARN: Code restructure failed: missing block: B:524:0x0554, code lost:
    
        r4 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:526:0x0539, code lost:
    
        r1 = r1.parent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:529:0x0553, code lost:
    
        r14 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:531:0x0522, code lost:
    
        r10 = 0.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:535:0x0508, code lost:
    
        r4 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x058d, code lost:
    
        r1 = new org.jsoup.nodes.Element("div");
        r4 = new java.util.ArrayList(r18.childNodes());
        r5 = r4.size();
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:537:0x05a0, code lost:
    
        if (r10 >= r5) goto L555;
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x05a2, code lost:
    
        r11 = r4.get(r10);
        r10 = r10 + 1;
        r11 = (org.jsoup.nodes.Node) r11;
        r6.j(r11, "Moving child out: {}");
        r11.remove();
        r1.appendChild(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x05b6, code lost:
    
        r10 = r18;
        r10.appendChild(r1);
        r40.r(r1, r2);
        r4 = new kotlin.Pair(r1, java.lang.Boolean.TRUE);
     */
    /* JADX WARN: Code restructure failed: missing block: B:541:0x045b, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0824  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02aa  */
    /* JADX WARN: Type inference failed for: r1v62, types: [org.jsoup.nodes.Element] */
    /* JADX WARN: Type inference failed for: r2v0, types: [net.dankito.readability4j.model.ArticleGrabberOptions, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v17, types: [org.jsoup.nodes.Element] */
    /* JADX WARN: Type inference failed for: r3v20, types: [org.jsoup.nodes.Element] */
    /* JADX WARN: Type inference failed for: r3v21, types: [org.jsoup.nodes.Element] */
    /* JADX WARN: Type inference failed for: r40v0, types: [net.dankito.readability4j.processor.ArticleGrabber, net.dankito.readability4j.processor.ProcessorBase] */
    /* JADX WARN: Type inference failed for: r4v40, types: [java.lang.Object, java.util.Comparator] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.jsoup.nodes.Element n(final net.dankito.readability4j.processor.ArticleGrabber r40, org.jsoup.nodes.Document r41, net.dankito.readability4j.model.ArticleMetadata r42) {
        /*
            Method dump skipped, instructions count: 2978
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.dankito.readability4j.processor.ArticleGrabber.n(net.dankito.readability4j.processor.ArticleGrabber, org.jsoup.nodes.Document, net.dankito.readability4j.model.ArticleMetadata):org.jsoup.nodes.Element");
    }

    public static boolean o(Element element, String str, int i2, Function1 function1) {
        String lowerCase = str.toLowerCase();
        Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase()");
        for (int i3 = 0; element.parent() != null && (i2 <= 0 || i3 <= i2); i3++) {
            if (Intrinsics.areEqual(element.parent().tagName(), lowerCase)) {
                if (function1 != null) {
                    Element parent = element.parent();
                    Intrinsics.checkExpressionValueIsNotNull(parent, "parent.parent()");
                    if (((Boolean) ((ArticleGrabber$cleanConditionally$1$isDataTable$1) function1).invoke(parent)).booleanValue()) {
                        return true;
                    }
                } else {
                    return true;
                }
            }
            element = element.parent();
            Intrinsics.checkExpressionValueIsNotNull(element, "parent.parent()");
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean q(Element element) {
        Elements children = element.children();
        Intrinsics.checkExpressionValueIsNotNull(children, "element.children()");
        int size = children.size();
        int i2 = 0;
        while (i2 < size) {
            T t = children.get(i2);
            i2++;
            Element node = (Element) t;
            if (!j.contains(node.tagName())) {
                Intrinsics.checkExpressionValueIsNotNull(node, "node");
                if (q(node)) {
                    return true;
                }
            } else {
                return true;
            }
        }
        return false;
    }

    public final void f(String str, Element element) {
        final boolean contains = n.contains(str);
        ProcessorBase.e(element, str, new Function1<Element, Boolean>() { // from class: net.dankito.readability4j.processor.ArticleGrabber$clean$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Code restructure failed: missing block: B:11:0x0062, code lost:
            
                if (r0.g.matcher(r10).find() != false) goto L15;
             */
            @Override // kotlin.jvm.functions.Function1
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Boolean invoke(org.jsoup.nodes.Element r10) {
                /*
                    r9 = this;
                    org.jsoup.nodes.Element r10 = (org.jsoup.nodes.Element) r10
                    net.dankito.readability4j.processor.ArticleGrabber r0 = net.dankito.readability4j.processor.ArticleGrabber.this
                    net.dankito.readability4j.util.RegExUtil r0 = r0.h
                    boolean r1 = r2
                    if (r1 == 0) goto L65
                    org.jsoup.nodes.Attributes r1 = r10.attributes()
                    java.lang.String r2 = "element.attributes()"
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2)
                    java.util.ArrayList r3 = new java.util.ArrayList
                    r2 = 10
                    int r2 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r1, r2)
                    r3.<init>(r2)
                    java.util.Iterator r1 = r1.iterator()
                L22:
                    boolean r2 = r1.hasNext()
                    if (r2 == 0) goto L36
                    java.lang.Object r2 = r1.next()
                    org.jsoup.nodes.Attribute r2 = (org.jsoup.nodes.Attribute) r2
                    java.lang.String r2 = r2.getValue()
                    r3.add(r2)
                    goto L22
                L36:
                    r7 = 0
                    r8 = 62
                    java.lang.String r4 = "|"
                    r5 = 0
                    r6 = 0
                    java.lang.String r1 = kotlin.collections.CollectionsKt.n(r3, r4, r5, r6, r7, r8)
                    java.util.regex.Pattern r2 = r0.g
                    java.util.regex.Matcher r1 = r2.matcher(r1)
                    boolean r1 = r1.find()
                    r2 = 0
                    if (r1 == 0) goto L4f
                    goto L66
                L4f:
                    java.lang.String r10 = r10.html()
                    java.lang.String r1 = "element.html()"
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r10, r1)
                    java.util.regex.Pattern r0 = r0.g
                    java.util.regex.Matcher r10 = r0.matcher(r10)
                    boolean r10 = r10.find()
                    if (r10 == 0) goto L65
                    goto L66
                L65:
                    r2 = 1
                L66:
                    java.lang.Boolean r10 = java.lang.Boolean.valueOf(r2)
                    return r10
                */
                throw new UnsupportedOperationException("Method not decompiled: net.dankito.readability4j.processor.ArticleGrabber$clean$1.invoke(java.lang.Object):java.lang.Object");
            }
        });
    }

    public final void g(Element element, String str, ArticleGrabberOptions articleGrabberOptions) {
        boolean z;
        if (!articleGrabberOptions.f21956c) {
            return;
        }
        if (!Intrinsics.areEqual(str, "ul") && !Intrinsics.areEqual(str, "ol")) {
            z = false;
        } else {
            z = true;
        }
        ProcessorBase.e(element, str, new ArticleGrabber$cleanConditionally$1(this, articleGrabberOptions, z));
    }

    public final int i(Element element, ArticleGrabberOptions articleGrabberOptions) {
        RegExUtil regExUtil = this.h;
        Pattern pattern = regExUtil.f21974c;
        Pattern pattern2 = regExUtil.d;
        int i2 = 0;
        if (!articleGrabberOptions.b) {
            return 0;
        }
        String className = element.className();
        Intrinsics.checkExpressionValueIsNotNull(className, "e.className()");
        if (!StringsKt.isBlank(className)) {
            String className2 = element.className();
            Intrinsics.checkExpressionValueIsNotNull(className2, "e.className()");
            if (pattern2.matcher(className2).find()) {
                i2 = -25;
            }
            String className3 = element.className();
            Intrinsics.checkExpressionValueIsNotNull(className3, "e.className()");
            if (pattern.matcher(className3).find()) {
                i2 += 25;
            }
        }
        String id = element.id();
        Intrinsics.checkExpressionValueIsNotNull(id, "e.id()");
        if (!StringsKt.isBlank(id)) {
            String id2 = element.id();
            Intrinsics.checkExpressionValueIsNotNull(id2, "e.id()");
            if (pattern2.matcher(id2).find()) {
                i2 -= 25;
            }
            String id3 = element.id();
            Intrinsics.checkExpressionValueIsNotNull(id3, "e.id()");
            if (pattern.matcher(id3).find()) {
                return i2 + 25;
            }
            return i2;
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final double j(Element element) {
        RegExUtil regExUtil = this.h;
        int length = ProcessorBase.b(this, element, regExUtil, 4).length();
        if (length == 0) {
            return 0.0d;
        }
        Elements elementsByTag = element.getElementsByTag("a");
        Intrinsics.checkExpressionValueIsNotNull(elementsByTag, "element.getElementsByTag(\"a\")");
        int size = elementsByTag.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            T t = elementsByTag.get(i3);
            i3++;
            Element linkNode = (Element) t;
            Intrinsics.checkExpressionValueIsNotNull(linkNode, "linkNode");
            i2 += ProcessorBase.b(this, linkNode, regExUtil, 4).length();
        }
        return i2 / length;
    }

    public final ReadabilityObject m(Element element) {
        return (ReadabilityObject) this.f.get(element);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
    
        if (r1.equals("h5") != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
    
        if (r1.equals("h4") != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0046, code lost:
    
        if (r1.equals("h3") != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004f, code lost:
    
        if (r1.equals("h2") != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
    
        if (r1.equals("h1") != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
    
        if (r1.equals("blockquote") != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a6, code lost:
    
        r0.f21959a += 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006a, code lost:
    
        if (r1.equals("form") != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00e2, code lost:
    
        r0.f21959a -= 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0074, code lost:
    
        if (r1.equals("pre") != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008c, code lost:
    
        if (r1.equals("ul") != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0095, code lost:
    
        if (r1.equals("th") != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a4, code lost:
    
        if (r1.equals("td") != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b3, code lost:
    
        if (r1.equals("ol") != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bc, code lost:
    
        if (r1.equals("li") != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c5, code lost:
    
        if (r1.equals("dt") != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ce, code lost:
    
        if (r1.equals("dl") != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d7, code lost:
    
        if (r1.equals("dd") != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e0, code lost:
    
        if (r1.equals("address") != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002a, code lost:
    
        if (r1.equals("h6") != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0097, code lost:
    
        r0.f21959a -= 5;
     */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, net.dankito.readability4j.model.ReadabilityObject] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void r(org.jsoup.nodes.Element r6, net.dankito.readability4j.model.ArticleGrabberOptions r7) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.dankito.readability4j.processor.ArticleGrabber.r(org.jsoup.nodes.Element, net.dankito.readability4j.model.ArticleGrabberOptions):void");
    }

    public final void s(Element element, boolean z) {
        this.g.put(element, Boolean.valueOf(z));
    }
}
