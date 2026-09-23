package org.jsoup.select;

import j$.util.stream.Stream;
import java.util.HashSet;
import java.util.Iterator;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Element;
import org.jsoup.parser.TokenQueue;

/* loaded from: classes4.dex */
public class Selector {

    /* loaded from: classes4.dex */
    public static class SelectorParseException extends IllegalStateException {
        public SelectorParseException(String str) {
            super(str);
        }

        public SelectorParseException(String str, Object... objArr) {
            super(String.format(str, objArr));
        }

        public SelectorParseException(Throwable th, String str, Object... objArr) {
            super(String.format(str, objArr), th);
        }
    }

    public static String escapeCssIdentifier(String str) {
        return TokenQueue.escapeCssIdentifier(str);
    }

    public static Evaluator evaluatorOf(String str) {
        return QueryParser.parse(str);
    }

    public static Elements select(String str, Element element) {
        Validate.notEmpty(str);
        return select(evaluatorOf(str), element);
    }

    public static Element selectFirst(String str, Element element) {
        Validate.notEmpty(str);
        return Collector.findFirst(evaluatorOf(str), element);
    }

    public static Stream<Element> selectStream(String str, Element element) {
        Validate.notEmpty(str);
        return selectStream(evaluatorOf(str), element);
    }

    public static String unescapeCssIdentifier(String str) {
        TokenQueue tokenQueue = new TokenQueue(str);
        try {
            String consumeCssIdentifier = tokenQueue.consumeCssIdentifier();
            tokenQueue.close();
            return consumeCssIdentifier;
        } catch (Throwable th) {
            try {
                tokenQueue.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static Elements select(Evaluator evaluator, Element element) {
        Validate.notNull(evaluator);
        Validate.notNull(element);
        return Collector.collect(evaluator, element);
    }

    public static Element selectFirst(String str, Iterable<Element> iterable) {
        Validate.notEmpty(str);
        Validate.notNull(iterable);
        Evaluator evaluatorOf = evaluatorOf(str);
        Iterator<Element> it = iterable.iterator();
        while (it.hasNext()) {
            Element findFirst = Collector.findFirst(evaluatorOf, it.next());
            if (findFirst != null) {
                return findFirst;
            }
        }
        return null;
    }

    public static Stream<Element> selectStream(Evaluator evaluator, Element element) {
        Validate.notNull(evaluator);
        Validate.notNull(element);
        return Collector.stream(evaluator, element);
    }

    public static Elements select(String str, Iterable<Element> iterable) {
        Validate.notEmpty(str);
        Validate.notNull(iterable);
        Evaluator evaluatorOf = evaluatorOf(str);
        Elements elements = new Elements();
        HashSet hashSet = new HashSet();
        Iterator<Element> it = iterable.iterator();
        while (it.hasNext()) {
            selectStream(evaluatorOf, it.next()).filter(new org.apache.commons.text.lookup.c(2, hashSet)).forEach(new org.apache.commons.text.translate.b(1, elements));
        }
        return elements;
    }
}
