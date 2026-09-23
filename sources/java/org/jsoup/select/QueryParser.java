package org.jsoup.select;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.StringUtil;
import org.jsoup.parser.TokenQueue;
import org.jsoup.select.CombiningEvaluator;
import org.jsoup.select.Evaluator;
import org.jsoup.select.NodeEvaluator;
import org.jsoup.select.Selector;
import org.jsoup.select.StructuralEvaluator;

/* loaded from: classes4.dex */
public class QueryParser implements AutoCloseable {
    public static final char[] h = {Typography.greater, '+', '~'};
    public static final String[] i = {"=", "!=", "^=", "$=", "*=", "~="};
    public static final char[] j = {',', ')'};
    public static final Pattern k = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);
    public static final Pattern l = Pattern.compile("([+-])?(\\d+)");

    /* renamed from: c, reason: collision with root package name */
    public final TokenQueue f22646c;
    public final String f;
    public boolean g;

    public QueryParser(String str) {
        Validate.notEmpty(str);
        String trim = str.trim();
        this.f = trim;
        this.f22646c = new TokenQueue(trim);
    }

    public static Evaluator a(Evaluator evaluator, Evaluator evaluator2) {
        if (evaluator == null) {
            return evaluator2;
        }
        if (evaluator instanceof CombiningEvaluator.And) {
            ((CombiningEvaluator.And) evaluator).add(evaluator2);
            return evaluator;
        }
        return new CombiningEvaluator.And(Arrays.asList(evaluator, evaluator2));
    }

    public static Evaluator parse(String str) {
        try {
            QueryParser queryParser = new QueryParser(str);
            try {
                Evaluator n = queryParser.n();
                TokenQueue tokenQueue = queryParser.f22646c;
                tokenQueue.consumeWhitespace();
                if (tokenQueue.isEmpty()) {
                    queryParser.close();
                    return n;
                }
                throw new Selector.SelectorParseException("Could not parse query '%s': unexpected token at '%s'", queryParser.f, tokenQueue.remainder());
            } finally {
            }
        } catch (IllegalArgumentException e) {
            throw new Selector.SelectorParseException(e.getMessage());
        }
    }

    public final int b() {
        String trim = d().trim();
        Validate.isTrue(StringUtil.isNumeric(trim), "Index must be numeric");
        return Integer.parseInt(trim);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.f22646c.close();
    }

    public final String d() {
        return this.f22646c.chompBalanced('(', ')');
    }

    public final Evaluator e(boolean z) {
        String str;
        if (z) {
            str = ":containsOwn";
        } else {
            str = ":contains";
        }
        String unescape = TokenQueue.unescape(d());
        Validate.notEmpty(unescape, str.concat("(text) query must not be empty"));
        if (this.g) {
            return new NodeEvaluator.ContainsValue(unescape);
        }
        if (z) {
            return new Evaluator.ContainsOwnText(unescape);
        }
        return new Evaluator.ContainsText(unescape);
    }

    public final Evaluator f(boolean z) {
        String str;
        if (z) {
            str = ":containsWholeOwnText";
        } else {
            str = ":containsWholeText";
        }
        String unescape = TokenQueue.unescape(d());
        Validate.notEmpty(unescape, str.concat("(text) query must not be empty"));
        if (z) {
            return new Evaluator.ContainsWholeOwnText(unescape);
        }
        return new Evaluator.ContainsWholeText(unescape);
    }

    public final Evaluator.CssNthEvaluator i(boolean z, boolean z2) {
        String normalize = Normalizer.normalize(d());
        int i2 = 1;
        int i3 = 2;
        if (!"odd".equals(normalize)) {
            if (!"even".equals(normalize)) {
                Matcher matcher = k.matcher(normalize);
                if (matcher.matches()) {
                    if (matcher.group(3) != null) {
                        i3 = Integer.parseInt(matcher.group(1).replaceFirst("^\\+", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
                    } else {
                        if ("-".equals(matcher.group(2))) {
                            i2 = -1;
                        }
                        i3 = i2;
                    }
                    if (matcher.group(4) != null) {
                        i2 = Integer.parseInt(matcher.group(4).replaceFirst("^\\+", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
                    }
                } else {
                    Matcher matcher2 = l.matcher(normalize);
                    if (matcher2.matches()) {
                        i2 = Integer.parseInt(matcher2.group().replaceFirst("^\\+", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
                        i3 = 0;
                    } else {
                        throw new Selector.SelectorParseException("Could not parse nth-index '%s': unexpected format", normalize);
                    }
                }
            }
            i2 = 0;
        }
        if (z2) {
            if (z) {
                return new Evaluator.IsNthLastOfType(i3, i2);
            }
            return new Evaluator.IsNthOfType(i3, i2);
        }
        if (z) {
            return new Evaluator.IsNthLastChild(i3, i2);
        }
        return new Evaluator.IsNthChild(i3, i2);
    }

    public final Evaluator j(TokenQueue tokenQueue) {
        String consumeToAny = tokenQueue.consumeToAny(i);
        Validate.notEmpty(consumeToAny);
        tokenQueue.consumeWhitespace();
        if (tokenQueue.isEmpty()) {
            if (consumeToAny.startsWith("^")) {
                return new Evaluator.AttributeStarting(consumeToAny.substring(1));
            }
            if (consumeToAny.equals("*")) {
                return new Evaluator.AttributeStarting(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
            return new Evaluator.Attribute(consumeToAny);
        }
        if (tokenQueue.matchChomp('=')) {
            return new Evaluator.AttributeWithValue(consumeToAny, tokenQueue.remainder());
        }
        if (tokenQueue.matchChomp("!=")) {
            return new Evaluator.AttributeWithValueNot(consumeToAny, tokenQueue.remainder());
        }
        if (tokenQueue.matchChomp("^=")) {
            return new Evaluator.AttributeWithValueStarting(consumeToAny, tokenQueue.remainder());
        }
        if (tokenQueue.matchChomp("$=")) {
            return new Evaluator.AttributeWithValueEnding(consumeToAny, tokenQueue.remainder());
        }
        if (tokenQueue.matchChomp("*=")) {
            return new Evaluator.AttributeWithValueContaining(consumeToAny, tokenQueue.remainder());
        }
        if (tokenQueue.matchChomp("~=")) {
            return new Evaluator.AttributeWithValueMatching(consumeToAny, Pattern.compile(tokenQueue.remainder()));
        }
        throw new Selector.SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", this.f, tokenQueue.remainder());
    }

    public final Evaluator k(boolean z) {
        String str;
        if (z) {
            str = ":matchesOwn";
        } else {
            str = ":matches";
        }
        String d = d();
        Validate.notEmpty(d, str.concat("(regex) query must not be empty"));
        Pattern compile = Pattern.compile(d);
        if (this.g) {
            return new NodeEvaluator.MatchesValue(compile);
        }
        if (z) {
            return new Evaluator.MatchesOwn(compile);
        }
        return new Evaluator.Matches(compile);
    }

    public final Evaluator l(boolean z) {
        String str;
        if (z) {
            str = ":matchesWholeOwnText";
        } else {
            str = ":matchesWholeText";
        }
        String d = d();
        Validate.notEmpty(d, str.concat("(regex) query must not be empty"));
        if (z) {
            return new Evaluator.MatchesWholeOwnText(Pattern.compile(d));
        }
        return new Evaluator.MatchesWholeText(Pattern.compile(d));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [org.jsoup.select.Evaluator] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12, types: [org.jsoup.select.Evaluator] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [org.jsoup.select.Evaluator] */
    /* JADX WARN: Type inference failed for: r2v6, types: [org.jsoup.select.Evaluator] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [org.jsoup.select.StructuralEvaluator, org.jsoup.select.StructuralEvaluator$ImmediateParentRun] */
    public final Evaluator m() {
        ?? r2;
        char c2;
        TokenQueue tokenQueue = this.f22646c;
        tokenQueue.consumeWhitespace();
        char[] cArr = h;
        if (tokenQueue.matchesAny(cArr)) {
            r2 = new Object();
        } else {
            r2 = o();
        }
        while (true) {
            if (tokenQueue.consumeWhitespace()) {
                c2 = ' ';
            } else {
                c2 = 0;
            }
            if (tokenQueue.matchesAny(cArr)) {
                c2 = tokenQueue.consume();
            } else if (tokenQueue.matchesAny(j)) {
                break;
            }
            if (c2 == 0) {
                break;
            }
            Evaluator o = o();
            if (c2 != ' ') {
                if (c2 != '+') {
                    if (c2 != '>') {
                        if (c2 == '~') {
                            r2 = a(new StructuralEvaluator(r2), o);
                        } else {
                            throw new Selector.SelectorParseException("Unknown combinator '%s'", Character.valueOf(c2));
                        }
                    } else {
                        if (r2 instanceof StructuralEvaluator.ImmediateParentRun) {
                            r2 = (StructuralEvaluator.ImmediateParentRun) r2;
                        } else {
                            r2 = new StructuralEvaluator.ImmediateParentRun(r2);
                        }
                        r2.d.add(o);
                        r2.e = o.a() + r2.e;
                        r2.b |= o.d();
                    }
                } else {
                    r2 = a(new StructuralEvaluator(r2), o);
                }
            } else {
                r2 = a(new StructuralEvaluator(r2), o);
            }
        }
        return r2;
    }

    public final Evaluator n() {
        Evaluator m = m();
        while (this.f22646c.matchChomp(',')) {
            Evaluator m2 = m();
            if (m instanceof CombiningEvaluator.Or) {
                ((CombiningEvaluator.Or) m).add(m2);
            } else {
                m = new CombiningEvaluator.Or(m, m2);
            }
        }
        return m;
    }

    public final Evaluator o() {
        Evaluator tag;
        Evaluator evaluator;
        TokenQueue tokenQueue = this.f22646c;
        tokenQueue.consumeWhitespace();
        if (!tokenQueue.matchesWord() && !tokenQueue.matches("*|")) {
            if (tokenQueue.matchChomp('*')) {
                evaluator = new Evaluator.AllElements();
            } else {
                evaluator = null;
            }
        } else {
            String normalize = Normalizer.normalize(tokenQueue.consumeElementSelector());
            Validate.notEmpty(normalize);
            if (normalize.startsWith("*|")) {
                String substring = normalize.substring(2);
                tag = new CombiningEvaluator.Or(new Evaluator.Tag(substring), new Evaluator.TagEndsWith(android.support.v4.media.a.C(":", substring)));
            } else if (normalize.endsWith("|*")) {
                tag = new Evaluator.TagStartsWith(normalize.substring(0, normalize.length() - 2) + ":");
            } else {
                if (normalize.contains("|")) {
                    normalize = normalize.replace("|", ":");
                }
                tag = new Evaluator.Tag(normalize);
            }
            evaluator = tag;
        }
        while (true) {
            Evaluator u = u();
            if (u == null) {
                break;
            }
            evaluator = a(evaluator, u);
        }
        if (evaluator != null) {
            return evaluator;
        }
        throw new Selector.SelectorParseException("Could not parse query '%s': unexpected token at '%s'", this.f, tokenQueue.remainder());
    }

    public String toString() {
        return this.f;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x0259, code lost:
    
        if (r0.equals("only-child") == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x007e, code lost:
    
        if (r0.equals("leafnode") == false) goto L26;
     */
    /* JADX WARN: Type inference failed for: r0v63, types: [org.jsoup.select.Evaluator, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.jsoup.select.Evaluator u() {
        /*
            Method dump skipped, instructions count: 1160
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.select.QueryParser.u():org.jsoup.select.Evaluator");
    }
}
