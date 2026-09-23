package org.jsoup.select;

import java.util.regex.Pattern;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.LeafNode;
import org.jsoup.nodes.Node;

/* loaded from: classes4.dex */
abstract class NodeEvaluator extends Evaluator {

    /* loaded from: classes4.dex */
    public static class BlankValue extends NodeEvaluator {
        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 4;
        }

        @Override // org.jsoup.select.NodeEvaluator
        public final boolean e(Node node) {
            return StringUtil.isBlank(node.nodeValue());
        }

        public final String toString() {
            return ":blank";
        }
    }

    /* loaded from: classes4.dex */
    public static class ContainsValue extends NodeEvaluator {

        /* renamed from: a, reason: collision with root package name */
        public final String f22642a;

        public ContainsValue(String str) {
            this.f22642a = Normalizer.lowerCase(StringUtil.normaliseWhitespace(str));
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 6;
        }

        @Override // org.jsoup.select.NodeEvaluator
        public final boolean e(Node node) {
            return Normalizer.lowerCase(node.nodeValue()).contains(this.f22642a);
        }

        public final String toString() {
            return android.support.v4.media.a.l(":contains(", this.f22642a, ")");
        }
    }

    /* loaded from: classes4.dex */
    public static class InstanceType extends NodeEvaluator {

        /* renamed from: a, reason: collision with root package name */
        public final Class f22643a;
        public final String b;

        public InstanceType(Class cls, String str) {
            this.f22643a = cls;
            this.b = "::".concat(str);
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 1;
        }

        @Override // org.jsoup.select.NodeEvaluator
        public final boolean e(Node node) {
            return this.f22643a.isInstance(node);
        }

        public final String toString() {
            return this.b;
        }
    }

    /* loaded from: classes4.dex */
    public static class MatchesValue extends NodeEvaluator {

        /* renamed from: a, reason: collision with root package name */
        public final Pattern f22644a;

        public MatchesValue(Pattern pattern) {
            this.f22644a = pattern;
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 8;
        }

        @Override // org.jsoup.select.NodeEvaluator
        public final boolean e(Node node) {
            return this.f22644a.matcher(node.nodeValue()).find();
        }

        public final String toString() {
            return ":matches(" + this.f22644a + ")";
        }
    }

    @Override // org.jsoup.select.Evaluator
    public final boolean d() {
        return true;
    }

    public abstract boolean e(Node node);

    @Override // org.jsoup.select.Evaluator
    public final boolean matches(Element element, Element element2) {
        return e(element2);
    }

    @Override // org.jsoup.select.Evaluator
    public final boolean matches(Element element, LeafNode leafNode) {
        return e(leafNode);
    }
}
