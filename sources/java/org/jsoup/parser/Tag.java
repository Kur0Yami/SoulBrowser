package org.jsoup.parser;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import org.jsoup.internal.Normalizer;

/* loaded from: classes4.dex */
public class Tag implements Cloneable {
    public static int Block = 4;
    public static int Data = 256;
    public static int FormSubmittable = 512;
    public static int InlineContainer = 8;
    public static int Known = 1;
    public static int PreserveWhitespace = 64;
    public static int RcData = 128;
    public static int SeenSelfClose = 32;
    public static int SelfClose = 16;
    public static int Void = 2;

    /* renamed from: c, reason: collision with root package name */
    public String f22597c;
    public String f;
    public String g;
    public int h;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Tag(String str, String str2) {
        this(str, Normalizer.normalize(str), str2);
        ParseSettings parseSettings = ParseSettings.htmlDefault;
    }

    public static Tag valueOf(String str, String str2, ParseSettings parseSettings) {
        return TagSet.Html().c(str, null, str2, parseSettings.preserveTagCase());
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Tag clone() {
        try {
            return (Tag) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public final TokeniserState b() {
        if (is(RcData)) {
            return TokeniserState.g;
        }
        if (is(Data)) {
            return TokeniserState.i;
        }
        return null;
    }

    public Tag clear(int i) {
        int i2 = this.h & (~i);
        this.h = i2;
        int i3 = Known;
        if (i != i3) {
            this.h = i2 | i3;
        }
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Tag)) {
            return false;
        }
        Tag tag = (Tag) obj;
        if (Objects.equals(this.f, tag.f) && Objects.equals(this.f22597c, tag.f22597c) && Objects.equals(this.g, tag.g) && this.h == tag.h) {
            return true;
        }
        return false;
    }

    @Deprecated
    public boolean formatAsBlock() {
        if ((this.h & InlineContainer) != 0) {
            return true;
        }
        return false;
    }

    public String getName() {
        return this.f;
    }

    public int hashCode() {
        return Objects.hash(this.f, this.f22597c);
    }

    public boolean is(int i) {
        if ((i & this.h) != 0) {
            return true;
        }
        return false;
    }

    public boolean isBlock() {
        if ((this.h & Block) != 0) {
            return true;
        }
        return false;
    }

    public boolean isEmpty() {
        if ((this.h & Void) != 0) {
            return true;
        }
        return false;
    }

    public boolean isFormSubmittable() {
        if ((this.h & FormSubmittable) != 0) {
            return true;
        }
        return false;
    }

    public boolean isInline() {
        if ((this.h & Block) == 0) {
            return true;
        }
        return false;
    }

    public boolean isKnownTag() {
        return (this.h & Known) != 0;
    }

    public boolean isSelfClosing() {
        int i = this.h;
        if ((SelfClose & i) == 0 && (i & Void) == 0) {
            return false;
        }
        return true;
    }

    public String localName() {
        int indexOf = this.f.indexOf(58);
        if (indexOf == -1) {
            return this.f;
        }
        return this.f.substring(indexOf + 1);
    }

    public String name() {
        return this.f;
    }

    public String namespace() {
        return this.f22597c;
    }

    public String normalName() {
        return this.g;
    }

    public String prefix() {
        int indexOf = this.f.indexOf(58);
        if (indexOf == -1) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return this.f.substring(0, indexOf);
    }

    public boolean preserveWhitespace() {
        if ((this.h & PreserveWhitespace) != 0) {
            return true;
        }
        return false;
    }

    public Tag set(int i) {
        this.h = i | this.h | Known;
        return this;
    }

    public String toString() {
        return this.f;
    }

    public static boolean isKnownTag(String str) {
        return TagSet.d.get(str, Parser.NamespaceHtml) != null;
    }

    public static Tag valueOf(String str) {
        return valueOf(str, Parser.NamespaceHtml, ParseSettings.preserveCase);
    }

    public Tag name(String str) {
        this.f = str;
        ParseSettings parseSettings = ParseSettings.htmlDefault;
        this.g = Normalizer.normalize(str);
        return this;
    }

    public Tag namespace(String str) {
        this.f22597c = str;
        return this;
    }

    public static Tag valueOf(String str, ParseSettings parseSettings) {
        return valueOf(str, Parser.NamespaceHtml, parseSettings);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Tag(String str) {
        this(str, Normalizer.normalize(str), Parser.NamespaceHtml);
        ParseSettings parseSettings = ParseSettings.htmlDefault;
    }

    public Tag(String str, String str2, String str3) {
        this.h = 0;
        this.f = str;
        this.g = str2;
        this.f22597c = str3;
    }
}
