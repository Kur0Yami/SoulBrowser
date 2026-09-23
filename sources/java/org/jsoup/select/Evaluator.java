package org.jsoup.select;

import java.util.Iterator;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.LeafNode;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.PseudoTextElement;
import org.jsoup.nodes.TextNode;
import org.jsoup.nodes.XmlDeclaration;
import org.jsoup.parser.ParseSettings;

/* loaded from: classes4.dex */
public abstract class Evaluator {

    /* loaded from: classes4.dex */
    public static final class AllElements extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 10;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return true;
        }

        public String toString() {
            return "*";
        }
    }

    /* loaded from: classes4.dex */
    public static final class Attribute extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22621a;

        public Attribute(String str) {
            this.f22621a = str;
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 2;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.f22621a);
        }

        public String toString() {
            return android.support.v4.media.a.l("[", this.f22621a, "]");
        }
    }

    /* loaded from: classes4.dex */
    public static final class AttributeStarting extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22623a;

        public AttributeStarting(String str) {
            Validate.notNull(str);
            this.f22623a = Normalizer.lowerCase(str);
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 6;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Iterator<org.jsoup.nodes.Attribute> it = element2.attributes().asList().iterator();
            while (it.hasNext()) {
                if (Normalizer.lowerCase(it.next().getKey()).startsWith(this.f22623a)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return android.support.v4.media.a.l("[^", this.f22623a, "]");
        }
    }

    /* loaded from: classes4.dex */
    public static final class AttributeWithValue extends AttributeKeyPair {
        public AttributeWithValue(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 3;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            String str = this.f22622a;
            if (element2.hasAttr(str)) {
                if (this.b.equalsIgnoreCase(element2.attr(str).trim())) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public String toString() {
            return android.support.v4.media.a.n("[", this.f22622a, "=", this.b, "]");
        }
    }

    /* loaded from: classes4.dex */
    public static final class AttributeWithValueContaining extends AttributeKeyPair {
        public AttributeWithValueContaining(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 6;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            String str = this.f22622a;
            if (element2.hasAttr(str) && Normalizer.lowerCase(element2.attr(str)).contains(this.b)) {
                return true;
            }
            return false;
        }

        public String toString() {
            return android.support.v4.media.a.n("[", this.f22622a, "*=", this.b, "]");
        }
    }

    /* loaded from: classes4.dex */
    public static final class AttributeWithValueEnding extends AttributeKeyPair {
        public AttributeWithValueEnding(String str, String str2) {
            super(str, str2, false);
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 4;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            String str = this.f22622a;
            if (element2.hasAttr(str) && Normalizer.lowerCase(element2.attr(str)).endsWith(this.b)) {
                return true;
            }
            return false;
        }

        public String toString() {
            return android.support.v4.media.a.n("[", this.f22622a, "$=", this.b, "]");
        }
    }

    /* loaded from: classes4.dex */
    public static final class AttributeWithValueMatching extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22624a;
        public final Pattern b;

        public AttributeWithValueMatching(String str, Pattern pattern) {
            this.f22624a = Normalizer.normalize(str);
            this.b = pattern;
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 8;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            String str = this.f22624a;
            if (element2.hasAttr(str) && this.b.matcher(element2.attr(str)).find()) {
                return true;
            }
            return false;
        }

        public String toString() {
            return android.support.v4.media.a.n("[", this.f22624a, "~=", this.b.toString(), "]");
        }
    }

    /* loaded from: classes4.dex */
    public static final class AttributeWithValueNot extends AttributeKeyPair {
        public AttributeWithValueNot(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 3;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return !this.b.equalsIgnoreCase(element2.attr(this.f22622a));
        }

        public String toString() {
            return android.support.v4.media.a.n("[", this.f22622a, "!=", this.b, "]");
        }
    }

    /* loaded from: classes4.dex */
    public static final class AttributeWithValueStarting extends AttributeKeyPair {
        public AttributeWithValueStarting(String str, String str2) {
            super(str, str2, false);
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 4;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            String str = this.f22622a;
            if (element2.hasAttr(str) && Normalizer.lowerCase(element2.attr(str)).startsWith(this.b)) {
                return true;
            }
            return false;
        }

        public String toString() {
            return android.support.v4.media.a.n("[", this.f22622a, "^=", this.b, "]");
        }
    }

    /* loaded from: classes4.dex */
    public static final class Class extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22625a;

        public Class(String str) {
            this.f22625a = str;
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 8;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasClass(this.f22625a);
        }

        public String toString() {
            return android.support.v4.media.a.C(".", this.f22625a);
        }
    }

    /* loaded from: classes4.dex */
    public static final class ContainsData extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22626a;

        public ContainsData(String str) {
            this.f22626a = Normalizer.lowerCase(str);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return Normalizer.lowerCase(element2.data()).contains(this.f22626a);
        }

        public String toString() {
            return android.support.v4.media.a.l(":containsData(", this.f22626a, ")");
        }
    }

    /* loaded from: classes4.dex */
    public static final class ContainsOwnText extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22627a;

        public ContainsOwnText(String str) {
            this.f22627a = Normalizer.lowerCase(StringUtil.normaliseWhitespace(str));
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return Normalizer.lowerCase(element2.ownText()).contains(this.f22627a);
        }

        public String toString() {
            return android.support.v4.media.a.l(":containsOwn(", this.f22627a, ")");
        }
    }

    /* loaded from: classes4.dex */
    public static final class ContainsText extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22628a;

        public ContainsText(String str) {
            this.f22628a = Normalizer.lowerCase(StringUtil.normaliseWhitespace(str));
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 10;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return Normalizer.lowerCase(element2.text()).contains(this.f22628a);
        }

        public String toString() {
            return android.support.v4.media.a.l(":contains(", this.f22628a, ")");
        }
    }

    /* loaded from: classes4.dex */
    public static final class ContainsWholeOwnText extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22629a;

        public ContainsWholeOwnText(String str) {
            this.f22629a = str;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.wholeOwnText().contains(this.f22629a);
        }

        public String toString() {
            return android.support.v4.media.a.l(":containsWholeOwnText(", this.f22629a, ")");
        }
    }

    /* loaded from: classes4.dex */
    public static final class ContainsWholeText extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22630a;

        public ContainsWholeText(String str) {
            this.f22630a = str;
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 10;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.wholeText().contains(this.f22630a);
        }

        public String toString() {
            return android.support.v4.media.a.l(":containsWholeText(", this.f22630a, ")");
        }
    }

    /* loaded from: classes4.dex */
    public static final class Id extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22632a;

        public Id(String str) {
            this.f22632a = str;
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 2;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return this.f22632a.equals(element2.id());
        }

        public String toString() {
            return android.support.v4.media.a.C("#", this.f22632a);
        }
    }

    /* loaded from: classes4.dex */
    public static final class IndexEquals extends IndexEvaluator {
        public IndexEquals(int i) {
            super(i);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element2.elementSiblingIndex() == this.f22633a) {
                return true;
            }
            return false;
        }

        public String toString() {
            return String.format(":eq(%d)", Integer.valueOf(this.f22633a));
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class IndexEvaluator extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final int f22633a;

        public IndexEvaluator(int i) {
            this.f22633a = i;
        }
    }

    /* loaded from: classes4.dex */
    public static final class IndexGreaterThan extends IndexEvaluator {
        public IndexGreaterThan(int i) {
            super(i);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element2.elementSiblingIndex() > this.f22633a) {
                return true;
            }
            return false;
        }

        public String toString() {
            return String.format(":gt(%d)", Integer.valueOf(this.f22633a));
        }
    }

    /* loaded from: classes4.dex */
    public static final class IndexLessThan extends IndexEvaluator {
        public IndexLessThan(int i) {
            super(i);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element != element2 && element2.elementSiblingIndex() < this.f22633a) {
                return true;
            }
            return false;
        }

        public String toString() {
            return String.format(":lt(%d)", Integer.valueOf(this.f22633a));
        }
    }

    /* loaded from: classes4.dex */
    public static final class IsEmpty extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (Node firstChild = element2.firstChild(); firstChild != null; firstChild = firstChild.nextSibling()) {
                if (firstChild instanceof TextNode) {
                    if (!((TextNode) firstChild).isBlank()) {
                        return false;
                    }
                } else if (!(firstChild instanceof Comment) && !(firstChild instanceof XmlDeclaration) && !(firstChild instanceof DocumentType)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return ":empty";
        }
    }

    /* loaded from: classes4.dex */
    public static final class IsFirstChild extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element parent = element2.parent();
            if (parent != null && !(parent instanceof Document) && element2 == parent.firstElementChild()) {
                return true;
            }
            return false;
        }

        public String toString() {
            return ":first-child";
        }
    }

    /* loaded from: classes4.dex */
    public static final class IsFirstOfType extends IsNthOfType {
        public IsFirstOfType() {
            super(0, 1);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public String toString() {
            return ":first-of-type";
        }
    }

    /* loaded from: classes4.dex */
    public static final class IsLastChild extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element parent = element2.parent();
            if (parent != null && !(parent instanceof Document) && element2 == parent.lastElementChild()) {
                return true;
            }
            return false;
        }

        public String toString() {
            return ":last-child";
        }
    }

    /* loaded from: classes4.dex */
    public static final class IsLastOfType extends IsNthLastOfType {
        public IsLastOfType() {
            super(0, 1);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public String toString() {
            return ":last-of-type";
        }
    }

    /* loaded from: classes4.dex */
    public static final class IsNthChild extends CssNthEvaluator {
        public IsNthChild(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public final int e(Element element) {
            return element.elementSiblingIndex() + 1;
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public final String f() {
            return "nth-child";
        }
    }

    /* loaded from: classes4.dex */
    public static final class IsNthLastChild extends CssNthEvaluator {
        public IsNthLastChild(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public final int e(Element element) {
            if (element.parent() == null) {
                return 0;
            }
            return element.parent().childrenSize() - element.elementSiblingIndex();
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public final String f() {
            return "nth-last-child";
        }
    }

    /* loaded from: classes4.dex */
    public static class IsNthLastOfType extends CssNthEvaluator {
        public IsNthLastOfType(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public final int e(Element element) {
            int i = 0;
            if (element.parent() == null) {
                return 0;
            }
            for (Element element2 = element; element2 != null; element2 = element2.nextElementSibling()) {
                if (element2.normalName().equals(element.normalName())) {
                    i++;
                }
            }
            return i;
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public final String f() {
            return "nth-last-of-type";
        }
    }

    /* loaded from: classes4.dex */
    public static class IsNthOfType extends CssNthEvaluator {
        public IsNthOfType(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public final int e(Element element) {
            Element parent = element.parent();
            if (parent == null) {
                return 0;
            }
            int childNodeSize = parent.childNodeSize();
            int i = 0;
            for (int i2 = 0; i2 < childNodeSize; i2++) {
                Node childNode = parent.childNode(i2);
                if (childNode.normalName().equals(element.normalName())) {
                    i++;
                }
                if (childNode == element) {
                    return i;
                }
            }
            return i;
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public final String f() {
            return "nth-of-type";
        }
    }

    /* loaded from: classes4.dex */
    public static final class IsOnlyChild extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element parent = element2.parent();
            if (parent != null && !(parent instanceof Document) && element2.siblingElements().isEmpty()) {
                return true;
            }
            return false;
        }

        public String toString() {
            return ":only-child";
        }
    }

    /* loaded from: classes4.dex */
    public static final class IsOnlyOfType extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element parent = element2.parent();
            if (parent != null && !(parent instanceof Document)) {
                int i = 0;
                for (Element firstElementChild = parent.firstElementChild(); firstElementChild != null; firstElementChild = firstElementChild.nextElementSibling()) {
                    if (firstElementChild.normalName().equals(element2.normalName())) {
                        i++;
                    }
                    if (i > 1) {
                        break;
                    }
                }
                if (i == 1) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return ":only-of-type";
        }
    }

    /* loaded from: classes4.dex */
    public static final class IsRoot extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 1;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element instanceof Document) {
                element = element.firstElementChild();
            }
            if (element2 == element) {
                return true;
            }
            return false;
        }

        public String toString() {
            return ":root";
        }
    }

    @Deprecated
    /* loaded from: classes4.dex */
    public static final class MatchText extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public static boolean f22634a = false;

        public MatchText() {
            if (!f22634a) {
                f22634a = true;
                System.err.println("WARNING: :matchText selector is deprecated and will be removed in a future version. Use Element#selectNodes(String, Class) with selector ::textnode and class TextNode instead.");
            }
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return -1;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element2 instanceof PseudoTextElement) {
                return true;
            }
            for (TextNode textNode : element2.textNodes()) {
                PseudoTextElement pseudoTextElement = new PseudoTextElement(org.jsoup.parser.Tag.valueOf(element2.tagName(), element2.tag().namespace(), ParseSettings.preserveCase), element2.baseUri(), element2.attributes());
                textNode.replaceWith(pseudoTextElement);
                pseudoTextElement.appendChild(textNode);
            }
            return false;
        }

        public String toString() {
            return ":matchText";
        }
    }

    /* loaded from: classes4.dex */
    public static final class Matches extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final Pattern f22635a;

        public Matches(Pattern pattern) {
            this.f22635a = pattern;
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 8;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return this.f22635a.matcher(element2.text()).find();
        }

        public String toString() {
            return ":matches(" + this.f22635a + ")";
        }
    }

    /* loaded from: classes4.dex */
    public static final class MatchesOwn extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final Pattern f22636a;

        public MatchesOwn(Pattern pattern) {
            this.f22636a = pattern;
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 7;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return this.f22636a.matcher(element2.ownText()).find();
        }

        public String toString() {
            return ":matchesOwn(" + this.f22636a + ")";
        }
    }

    /* loaded from: classes4.dex */
    public static final class MatchesWholeOwnText extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final Pattern f22637a;

        public MatchesWholeOwnText(Pattern pattern) {
            this.f22637a = pattern;
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 7;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return this.f22637a.matcher(element2.wholeOwnText()).find();
        }

        public String toString() {
            return ":matchesWholeOwnText(" + this.f22637a + ")";
        }
    }

    /* loaded from: classes4.dex */
    public static final class MatchesWholeText extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final Pattern f22638a;

        public MatchesWholeText(Pattern pattern) {
            this.f22638a = pattern;
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 8;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return this.f22638a.matcher(element2.wholeText()).find();
        }

        public String toString() {
            return ":matchesWholeText(" + this.f22638a + ")";
        }
    }

    /* loaded from: classes4.dex */
    public static final class Tag extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22639a;

        public Tag(String str) {
            this.f22639a = str;
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 1;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.nameIs(this.f22639a);
        }

        public String toString() {
            return this.f22639a;
        }
    }

    /* loaded from: classes4.dex */
    public static final class TagEndsWith extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22640a;

        public TagEndsWith(String str) {
            this.f22640a = str;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.normalName().endsWith(this.f22640a);
        }

        public String toString() {
            return android.support.v4.media.a.C("*|", this.f22640a);
        }
    }

    /* loaded from: classes4.dex */
    public static final class TagStartsWith extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22641a;

        public TagStartsWith(String str) {
            this.f22641a = str;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.normalName().startsWith(this.f22641a);
        }

        public String toString() {
            return android.support.v4.media.a.k(this.f22641a, "|*");
        }
    }

    public int a() {
        return 5;
    }

    public Predicate<Element> asPredicate(Element element) {
        return new b(this, element, 1);
    }

    public final boolean b(Element element, Node node) {
        if (node instanceof Element) {
            return matches(element, (Element) node);
        }
        if ((node instanceof LeafNode) && d()) {
            return matches(element, (LeafNode) node);
        }
        return false;
    }

    public void c() {
    }

    public boolean d() {
        return false;
    }

    public abstract boolean matches(Element element, Element element2);

    public boolean matches(Element element, LeafNode leafNode) {
        return false;
    }

    /* loaded from: classes4.dex */
    public static abstract class CssNthEvaluator extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final int f22631a;
        public final int b;

        public CssNthEvaluator(int i, int i2) {
            this.f22631a = i;
            this.b = i2;
        }

        public abstract int e(Element element);

        public abstract String f();

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element parent = element2.parent();
            if (parent != null && !(parent instanceof Document)) {
                int e = e(element2);
                int i = this.b;
                int i2 = this.f22631a;
                if (i2 == 0) {
                    if (e == i) {
                        return true;
                    }
                    return false;
                }
                int i3 = e - i;
                if (i3 * i2 >= 0 && i3 % i2 == 0) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public String toString() {
            String str;
            int i = this.b;
            int i2 = this.f22631a;
            if (i2 == 0) {
                str = ":%s(%3$d)";
            } else if (i == 0) {
                str = ":%s(%2$dn)";
            } else {
                str = ":%s(%2$dn%3$+d)";
            }
            return String.format(str, f(), Integer.valueOf(i2), Integer.valueOf(i));
        }

        public CssNthEvaluator(int i) {
            this(0, i);
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class AttributeKeyPair extends Evaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22622a;
        public final String b;

        public AttributeKeyPair(String str, String str2, boolean z) {
            Validate.notEmpty(str);
            Validate.notEmpty(str2);
            this.f22622a = Normalizer.normalize(str);
            boolean z2 = (str2.startsWith("'") && str2.endsWith("'")) || (str2.startsWith("\"") && str2.endsWith("\""));
            str2 = z2 ? android.support.v4.media.a.d(1, 1, str2) : str2;
            if (!z && z2) {
                this.b = Normalizer.lowerCase(str2);
            } else {
                this.b = Normalizer.normalize(str2);
            }
        }

        public AttributeKeyPair(String str, String str2) {
            this(str, str2, true);
        }
    }
}
