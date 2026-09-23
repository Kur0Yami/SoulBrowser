package org.jsoup.safety;

import j$.util.Map;
import j$.util.Objects;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Functions;
import org.jsoup.internal.Normalizer;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Element;

/* loaded from: classes4.dex */
public class Safelist {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f22616a;
    public final HashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f22617c;
    public final HashMap d;
    public boolean e;

    /* loaded from: classes4.dex */
    public static class AttributeKey extends TypedValue {
        /* JADX WARN: Type inference failed for: r0v0, types: [org.jsoup.safety.Safelist$TypedValue, org.jsoup.safety.Safelist$AttributeKey] */
        public static AttributeKey a(String str) {
            return new TypedValue(Normalizer.lowerCase(str));
        }
    }

    /* loaded from: classes4.dex */
    public static class AttributeValue extends TypedValue {
    }

    /* loaded from: classes4.dex */
    public static class Protocol extends TypedValue {
    }

    /* loaded from: classes4.dex */
    public static class TagName extends TypedValue {
        /* JADX WARN: Type inference failed for: r0v0, types: [org.jsoup.safety.Safelist$TypedValue, org.jsoup.safety.Safelist$TagName] */
        public static TagName a(String str) {
            return new TypedValue(Normalizer.lowerCase(str));
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class TypedValue {

        /* renamed from: a, reason: collision with root package name */
        public final String f22618a;

        public TypedValue(String str) {
            Validate.notNull(str);
            this.f22618a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return Objects.equals(this.f22618a, ((TypedValue) obj).f22618a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f22618a.hashCode();
        }

        public final String toString() {
            return this.f22618a;
        }
    }

    public Safelist() {
        this.f22616a = new HashSet();
        this.b = new HashMap();
        this.f22617c = new HashMap();
        this.d = new HashMap();
        this.e = false;
    }

    public static Safelist basic() {
        return new Safelist().addTags("a", "b", "blockquote", "br", "cite", "code", "dd", "dl", "dt", "em", "i", "li", "ol", "p", "pre", "q", "small", "span", "strike", "strong", "sub", "sup", "u", "ul").addAttributes("a", "href").addAttributes("blockquote", "cite").addAttributes("q", "cite").addProtocols("a", "href", "ftp", "http", "https", "mailto").addProtocols("blockquote", "cite", "http", "https").addProtocols("cite", "cite", "http", "https").addEnforcedAttribute("a", "rel", "nofollow");
    }

    public static Safelist basicWithImages() {
        return basic().addTags("img").addAttributes("img", "align", "alt", "height", "src", "title", "width").addProtocols("img", "src", "http", "https");
    }

    public static Safelist none() {
        return new Safelist();
    }

    public static Safelist relaxed() {
        return new Safelist().addTags("a", "b", "blockquote", "br", "caption", "cite", "code", "col", "colgroup", "dd", "div", "dl", "dt", "em", "h1", "h2", "h3", "h4", "h5", "h6", "i", "img", "li", "ol", "p", "pre", "q", "small", "span", "strike", "strong", "sub", "sup", "table", "tbody", "td", "tfoot", "th", "thead", "tr", "u", "ul").addAttributes("a", "href", "title").addAttributes("blockquote", "cite").addAttributes("col", "span", "width").addAttributes("colgroup", "span", "width").addAttributes("img", "align", "alt", "height", "src", "title", "width").addAttributes("ol", "start", "type").addAttributes("q", "cite").addAttributes("table", "summary", "width").addAttributes("td", "abbr", "axis", "colspan", "rowspan", "width").addAttributes("th", "abbr", "axis", "colspan", "rowspan", "scope", "width").addAttributes("ul", "type").addProtocols("a", "href", "ftp", "http", "https", "mailto").addProtocols("blockquote", "cite", "http", "https").addProtocols("cite", "cite", "http", "https").addProtocols("img", "src", "http", "https").addProtocols("q", "cite", "http", "https");
    }

    public static Safelist simpleText() {
        return new Safelist().addTags("b", "em", "i", "strong", "u");
    }

    public Safelist addAttributes(String str, String... strArr) {
        boolean z;
        Validate.notEmpty(str);
        Validate.notNull(strArr);
        if (strArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        Validate.isTrue(z, "No attribute names supplied.");
        addTags(str);
        TagName a2 = TagName.a(str);
        HashSet hashSet = new HashSet();
        for (String str2 : strArr) {
            Validate.notEmpty(str2);
            hashSet.add(AttributeKey.a(str2));
        }
        ((Set) Map.EL.computeIfAbsent(this.b, a2, Functions.setFunction())).addAll(hashSet);
        return this;
    }

    public Safelist addEnforcedAttribute(String str, String str2, String str3) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notEmpty(str3);
        TagName a2 = TagName.a(str);
        this.f22616a.add(a2);
        ((java.util.Map) Map.EL.computeIfAbsent(this.f22617c, a2, Functions.mapFunction())).put(AttributeKey.a(str2), new TypedValue(str3));
        return this;
    }

    public Safelist addProtocols(String str, String str2, String... strArr) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notNull(strArr);
        Set set = (Set) Map.EL.computeIfAbsent((java.util.Map) Map.EL.computeIfAbsent(this.d, TagName.a(str), Functions.mapFunction()), AttributeKey.a(str2), Functions.setFunction());
        for (String str3 : strArr) {
            Validate.notEmpty(str3);
            set.add(new TypedValue(str3));
        }
        return this;
    }

    public Safelist addTags(String... strArr) {
        Validate.notNull(strArr);
        for (String str : strArr) {
            Validate.notEmpty(str);
            Validate.isFalse(str.equalsIgnoreCase("noscript"), "noscript is unsupported in Safelists, due to incompatibilities between parsers with and without script-mode enabled");
            this.f22616a.add(TagName.a(str));
        }
        return this;
    }

    public Attributes getEnforcedAttributes(String str) {
        Attributes attributes = new Attributes();
        TagName a2 = TagName.a(str);
        HashMap hashMap = this.f22617c;
        if (hashMap.containsKey(a2)) {
            for (Map.Entry entry : ((java.util.Map) hashMap.get(a2)).entrySet()) {
                attributes.put(((AttributeKey) entry.getKey()).f22618a, ((AttributeValue) entry.getValue()).f22618a);
            }
        }
        return attributes;
    }

    public boolean isSafeAttribute(String str, Element element, Attribute attribute) {
        TagName a2 = TagName.a(str);
        AttributeKey a3 = AttributeKey.a(attribute.getKey());
        Set set = (Set) this.b.get(a2);
        if (set != null && set.contains(a3)) {
            HashMap hashMap = this.d;
            if (hashMap.containsKey(a2)) {
                java.util.Map map = (java.util.Map) hashMap.get(a2);
                if (map.containsKey(a3)) {
                    Set set2 = (Set) map.get(a3);
                    String absUrl = element.absUrl(attribute.getKey());
                    if (absUrl.length() == 0) {
                        absUrl = attribute.getValue();
                    }
                    if (!this.e) {
                        attribute.setValue(absUrl);
                    }
                    Iterator it = set2.iterator();
                    while (it.hasNext()) {
                        String str2 = ((Protocol) it.next()).f22618a;
                        if (str2.equals("#")) {
                            if (absUrl.startsWith("#") && !absUrl.matches(".*\\s.*")) {
                                return true;
                            }
                        } else {
                            if (Normalizer.lowerCase(absUrl).startsWith(str2.concat(":"))) {
                                return true;
                            }
                        }
                    }
                    return false;
                }
                return true;
            }
            return true;
        }
        if (((java.util.Map) this.f22617c.get(a2)) != null) {
            Attributes enforcedAttributes = getEnforcedAttributes(str);
            String key = attribute.getKey();
            if (enforcedAttributes.hasKeyIgnoreCase(key)) {
                return enforcedAttributes.getIgnoreCase(key).equals(attribute.getValue());
            }
        }
        if (!str.equals(":all") && isSafeAttribute(":all", element, attribute)) {
            return true;
        }
        return false;
    }

    public boolean isSafeTag(String str) {
        return this.f22616a.contains(TagName.a(str));
    }

    public Safelist preserveRelativeLinks(boolean z) {
        this.e = z;
        return this;
    }

    public Safelist removeAttributes(String str, String... strArr) {
        boolean z;
        Validate.notEmpty(str);
        Validate.notNull(strArr);
        if (strArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        Validate.isTrue(z, "No attribute names supplied.");
        TagName a2 = TagName.a(str);
        HashSet hashSet = new HashSet();
        for (String str2 : strArr) {
            Validate.notEmpty(str2);
            hashSet.add(AttributeKey.a(str2));
        }
        boolean contains = this.f22616a.contains(a2);
        HashMap hashMap = this.b;
        if (contains && hashMap.containsKey(a2)) {
            Set set = (Set) hashMap.get(a2);
            set.removeAll(hashSet);
            if (set.isEmpty()) {
                hashMap.remove(a2);
            }
        }
        if (str.equals(":all")) {
            Iterator it = hashMap.entrySet().iterator();
            while (it.hasNext()) {
                Set set2 = (Set) ((Map.Entry) it.next()).getValue();
                set2.removeAll(hashSet);
                if (set2.isEmpty()) {
                    it.remove();
                }
            }
        }
        return this;
    }

    public Safelist removeEnforcedAttribute(String str, String str2) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        TagName a2 = TagName.a(str);
        if (this.f22616a.contains(a2)) {
            HashMap hashMap = this.f22617c;
            if (hashMap.containsKey(a2)) {
                AttributeKey a3 = AttributeKey.a(str2);
                java.util.Map map = (java.util.Map) hashMap.get(a2);
                map.remove(a3);
                if (map.isEmpty()) {
                    hashMap.remove(a2);
                }
            }
        }
        return this;
    }

    public Safelist removeProtocols(String str, String str2, String... strArr) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notNull(strArr);
        TagName a2 = TagName.a(str);
        AttributeKey a3 = AttributeKey.a(str2);
        HashMap hashMap = this.d;
        Validate.isTrue(hashMap.containsKey(a2), "Cannot remove a protocol that is not set.");
        java.util.Map map = (java.util.Map) hashMap.get(a2);
        Validate.isTrue(map.containsKey(a3), "Cannot remove a protocol that is not set.");
        Set set = (Set) map.get(a3);
        for (String str3 : strArr) {
            Validate.notEmpty(str3);
            set.remove(new TypedValue(str3));
        }
        if (set.isEmpty()) {
            map.remove(a3);
            if (map.isEmpty()) {
                hashMap.remove(a2);
            }
        }
        return this;
    }

    public Safelist removeTags(String... strArr) {
        Validate.notNull(strArr);
        for (String str : strArr) {
            Validate.notEmpty(str);
            TagName a2 = TagName.a(str);
            if (this.f22616a.remove(a2)) {
                this.b.remove(a2);
                this.f22617c.remove(a2);
                this.d.remove(a2);
            }
        }
        return this;
    }

    public boolean preserveRelativeLinks() {
        return this.e;
    }

    public Safelist(Safelist safelist) {
        this();
        this.f22616a.addAll(safelist.f22616a);
        for (Map.Entry entry : safelist.b.entrySet()) {
            this.b.put((TagName) entry.getKey(), new HashSet((Collection) entry.getValue()));
        }
        for (Map.Entry entry2 : safelist.f22617c.entrySet()) {
            this.f22617c.put((TagName) entry2.getKey(), new HashMap((java.util.Map) entry2.getValue()));
        }
        for (Map.Entry entry3 : safelist.d.entrySet()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry entry4 : ((java.util.Map) entry3.getValue()).entrySet()) {
                hashMap.put((AttributeKey) entry4.getKey(), new HashSet((Collection) entry4.getValue()));
            }
            this.d.put((TagName) entry3.getKey(), hashMap);
        }
        this.e = safelist.e;
    }
}
