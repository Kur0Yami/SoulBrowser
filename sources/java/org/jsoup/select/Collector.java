package org.jsoup.select;

import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;

/* loaded from: classes4.dex */
public class Collector {
    public static Elements collect(Evaluator evaluator, Element element) {
        Stream<Element> stream;
        if (evaluator.d()) {
            stream = streamNodes(evaluator, element, Element.class);
        } else {
            stream = stream(evaluator, element);
        }
        return (Elements) stream.collect(Collectors.toCollection(new g(2)));
    }

    public static <T extends Node> Nodes<T> collectNodes(Evaluator evaluator, Element element, Class<T> cls) {
        return (Nodes) streamNodes(evaluator, element, cls).collect(Collectors.toCollection(new g(1)));
    }

    public static Element findFirst(Evaluator evaluator, Element element) {
        return stream(evaluator, element).findFirst().orElse(null);
    }

    public static <T extends Node> T findFirstNode(Evaluator evaluator, Element element, Class<T> cls) {
        return (T) streamNodes(evaluator, element, cls).findFirst().orElse(null);
    }

    public static Stream<Element> stream(Evaluator evaluator, Element element) {
        evaluator.c();
        return element.stream().filter(evaluator.asPredicate(element));
    }

    public static <T extends Node> Stream<T> streamNodes(Evaluator evaluator, Element element, Class<T> cls) {
        evaluator.c();
        return element.nodeStream(cls).filter(new b(evaluator, element, 0));
    }
}
