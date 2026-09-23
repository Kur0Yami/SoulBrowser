package org.jsoup.nodes;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.QuietAppendable;
import org.jsoup.internal.SharedConstants;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Range;
import org.jsoup.parser.Parser;

/* loaded from: classes4.dex */
public class Attribute implements Map.Entry<String, String>, Cloneable {
    public static final String[] h = {"allowfullscreen", "async", "autofocus", "checked", "compact", "declare", "default", "defer", "disabled", "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", "open", "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};
    public static final Pattern i = Pattern.compile("[^-a-zA-Z0-9_:.]+");
    public static final Pattern j = Pattern.compile("[\\x00-\\x1f\\x7f-\\x9f \"'/=]+");

    /* renamed from: c, reason: collision with root package name */
    public String f22560c;
    public String f;
    public Attributes g;

    public Attribute(String str, String str2) {
        this(str, str2, null);
    }

    public static void a(String str, String str2, QuietAppendable quietAppendable, Document.OutputSettings outputSettings) {
        quietAppendable.append(str);
        if (outputSettings.syntax() == Document.OutputSettings.Syntax.html) {
            if (str2 != null) {
                if ((str2.isEmpty() || str2.equalsIgnoreCase(str)) && isBooleanAttribute(str)) {
                    return;
                }
            } else {
                return;
            }
        }
        quietAppendable.append("=\"");
        if (str2 == null) {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        char[] cArr = Entities.f22571a;
        Entities.c(str2, quietAppendable, outputSettings.escapeMode(), outputSettings.charset(), 2);
        quietAppendable.append(Typography.quote);
    }

    public static boolean b(String str) {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt <= 31 || ((charAt >= 127 && charAt <= 159) || charAt == ' ' || charAt == '\"' || charAt == '\'' || charAt == '/' || charAt == '=')) {
                return false;
            }
        }
        return true;
    }

    public static boolean c(String str) {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        char charAt = str.charAt(0);
        if ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && charAt != '_' && charAt != ':')) {
            return false;
        }
        for (int i2 = 1; i2 < length; i2++) {
            char charAt2 = str.charAt(i2);
            if ((charAt2 < 'a' || charAt2 > 'z') && ((charAt2 < 'A' || charAt2 > 'Z') && ((charAt2 < '0' || charAt2 > '9') && charAt2 != '-' && charAt2 != '_' && charAt2 != ':' && charAt2 != '.'))) {
                return false;
            }
        }
        return true;
    }

    public static Attribute createFromEncoded(String str, String str2) {
        char[] cArr = Entities.f22571a;
        return new Attribute(str, Parser.unescapeEntities(str2, true), null);
    }

    public static String getValidKey(String str, Document.OutputSettings.Syntax syntax) {
        if (syntax == Document.OutputSettings.Syntax.xml && !c(str)) {
            String replaceAll = i.matcher(str).replaceAll("_");
            if (!c(replaceAll)) {
                return null;
            }
            return replaceAll;
        }
        if (syntax == Document.OutputSettings.Syntax.html && !b(str)) {
            String replaceAll2 = j.matcher(str).replaceAll("_");
            if (!b(replaceAll2)) {
                return null;
            }
            return replaceAll2;
        }
        return str;
    }

    public static boolean isBooleanAttribute(String str) {
        if (Arrays.binarySearch(h, Normalizer.lowerCase(str)) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Attribute attribute = (Attribute) obj;
            if (Objects.equals(this.f22560c, attribute.f22560c) && Objects.equals(this.f, attribute.f)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasDeclaredValue() {
        if (this.f != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return Objects.hash(this.f22560c, this.f);
    }

    public String html() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        QuietAppendable wrap = QuietAppendable.wrap(borrowBuilder);
        Document.OutputSettings outputSettings = new Document.OutputSettings();
        String str = this.f22560c;
        String str2 = this.f;
        String validKey = getValidKey(str, outputSettings.syntax());
        if (validKey != null) {
            a(validKey, str2, wrap, outputSettings);
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public String localName() {
        int indexOf = this.f22560c.indexOf(58);
        if (indexOf == -1) {
            return this.f22560c;
        }
        return this.f22560c.substring(indexOf + 1);
    }

    public String namespace() {
        Attributes attributes = this.g;
        if (attributes != null) {
            String str = (String) attributes.userData(SharedConstants.XmlnsAttr + prefix());
            if (str != null) {
                return str;
            }
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public String prefix() {
        int indexOf = this.f22560c.indexOf(58);
        if (indexOf == -1) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return this.f22560c.substring(0, indexOf);
    }

    public void setKey(String str) {
        int i2;
        Validate.notNull(str);
        String trim = str.trim();
        Validate.notEmpty(trim);
        Attributes attributes = this.g;
        if (attributes != null && (i2 = attributes.i(this.f22560c)) != -1) {
            Attributes attributes2 = this.g;
            String[] strArr = attributes2.f;
            String str2 = strArr[i2];
            strArr[i2] = trim;
            Map map = (Map) attributes2.userData(SharedConstants.AttrRangeKey);
            if (map != null) {
                map.put(trim, (Range.AttributeRange) map.remove(str2));
            }
        }
        this.f22560c = trim;
    }

    public Range.AttributeRange sourceRange() {
        Attributes attributes = this.g;
        if (attributes == null) {
            return Range.AttributeRange.f22581c;
        }
        return attributes.sourceRange(this.f22560c);
    }

    public String toString() {
        return html();
    }

    public Attribute(String str, String str2, Attributes attributes) {
        Validate.notNull(str);
        String trim = str.trim();
        Validate.notEmpty(trim);
        this.f22560c = trim;
        this.f = str2;
        this.g = attributes;
    }

    public Attribute clone() {
        try {
            return (Attribute) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // java.util.Map.Entry
    public String getKey() {
        return this.f22560c;
    }

    @Override // java.util.Map.Entry
    public String getValue() {
        String str = this.f;
        return str == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str;
    }

    @Override // java.util.Map.Entry
    public String setValue(String str) {
        int i2;
        String str2 = this.f;
        Attributes attributes = this.g;
        if (attributes != null && (i2 = attributes.i(this.f22560c)) != -1) {
            str2 = this.g.get(this.f22560c);
            this.g.g[i2] = str;
        }
        this.f = str;
        return str2 == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str2;
    }
}
