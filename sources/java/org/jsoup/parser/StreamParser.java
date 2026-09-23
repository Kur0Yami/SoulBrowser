package org.jsoup.parser;

import j$.util.Spliterators;
import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;
import java.io.Closeable;
import java.io.Reader;
import java.io.StringReader;
import java.io.UncheckedIOException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Evaluator;
import org.jsoup.select.NodeVisitor;
import org.jsoup.select.Selector;

/* loaded from: classes4.dex */
public class StreamParser implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public final Parser f22595c;
    public final TreeBuilder f;
    public final ElementIterator g;
    public Document h;
    public boolean i;

    /* loaded from: classes4.dex */
    public final class ElementIterator implements Iterator<Element>, NodeVisitor {

        /* renamed from: c, reason: collision with root package name */
        public final LinkedList f22596c = new LinkedList();
        public Element f;
        public Element g;
        public Element h;

        public ElementIterator() {
        }

        public final void a() {
            StreamParser streamParser = StreamParser.this;
            if (!streamParser.i && this.g == null) {
                LinkedList linkedList = this.f22596c;
                if (!linkedList.isEmpty()) {
                    this.g = (Element) linkedList.remove();
                    return;
                }
                while (streamParser.f.p()) {
                    if (!linkedList.isEmpty()) {
                        this.g = (Element) linkedList.remove();
                        return;
                    }
                }
                streamParser.stop();
                streamParser.close();
                Element element = this.h;
                if (element != null) {
                    this.g = element;
                    this.h = null;
                }
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            a();
            if (this.g != null) {
                return true;
            }
            return false;
        }

        @Override // org.jsoup.select.NodeVisitor
        /* renamed from: head */
        public final void mo2head(Node node, int i) {
            Element previousElementSibling;
            if ((node instanceof Element) && (previousElementSibling = node.previousElementSibling()) != null) {
                this.f22596c.add(previousElementSibling);
            }
        }

        @Override // java.util.Iterator
        public final Element next() {
            a();
            Element element = this.g;
            if (element != null) {
                this.f = element;
                this.g = null;
                return element;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            Element element = this.f;
            if (element != null) {
                element.remove();
                return;
            }
            throw new NoSuchElementException();
        }

        @Override // org.jsoup.select.NodeVisitor
        /* renamed from: tail */
        public final void mo3tail(Node node, int i) {
            if (node instanceof Element) {
                Element element = (Element) node;
                this.h = element;
                Element lastElementChild = element.lastElementChild();
                if (lastElementChild != null) {
                    this.f22596c.add(lastElementChild);
                }
            }
        }

        @Override // org.jsoup.select.NodeVisitor, org.jsoup.select.NodeFilter
        public final /* synthetic */ void traverse(Node node) {
            org.jsoup.select.d.b(this, node);
        }
    }

    public StreamParser(Parser parser) {
        ElementIterator elementIterator = new ElementIterator();
        this.g = elementIterator;
        this.i = false;
        this.f22595c = parser;
        TreeBuilder treeBuilder = parser.getTreeBuilder();
        this.f = treeBuilder;
        treeBuilder.j = elementIterator;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        TreeBuilder treeBuilder = this.f;
        CharacterReader characterReader = treeBuilder.b;
        if (characterReader == null) {
            return;
        }
        characterReader.close();
        treeBuilder.b = null;
        treeBuilder.f22609c = null;
        treeBuilder.e = null;
    }

    public Document complete() {
        TreeBuilder treeBuilder;
        Document document = document();
        do {
            treeBuilder = this.f;
        } while (treeBuilder.p());
        CharacterReader characterReader = treeBuilder.b;
        if (characterReader == null) {
            return document;
        }
        characterReader.close();
        treeBuilder.b = null;
        treeBuilder.f22609c = null;
        treeBuilder.e = null;
        return document;
    }

    public List<Node> completeFragment() {
        TreeBuilder treeBuilder;
        do {
            treeBuilder = this.f;
        } while (treeBuilder.p());
        CharacterReader characterReader = treeBuilder.b;
        if (characterReader != null) {
            characterReader.close();
            treeBuilder.b = null;
            treeBuilder.f22609c = null;
            treeBuilder.e = null;
        }
        return treeBuilder.a();
    }

    public Document document() {
        Document document = this.f.d;
        this.h = document;
        Validate.notNull(document, "Must run parse() before calling.");
        return this.h;
    }

    public Element expectFirst(String str) {
        return (Element) Validate.expectNotNull(selectFirst(str), "No elements matched the query '%s' in the document.", str);
    }

    public Element expectNext(String str) {
        return (Element) Validate.expectNotNull(selectNext(str), "No elements matched the query '%s' in the document.", str);
    }

    public Iterator<Element> iterator() {
        return this.g;
    }

    public StreamParser parse(Reader reader, String str) {
        close();
        ElementIterator elementIterator = this.g;
        elementIterator.f22596c.clear();
        elementIterator.h = null;
        elementIterator.g = null;
        elementIterator.f = null;
        StreamParser.this.i = false;
        Parser parser = this.f22595c;
        TreeBuilder treeBuilder = this.f;
        treeBuilder.f(reader, str, parser);
        this.h = treeBuilder.d;
        return this;
    }

    public StreamParser parseFragment(Reader reader, Element element, String str) {
        parse(reader, str);
        this.f.g(element);
        return this;
    }

    public Element selectFirst(String str) {
        return selectFirst(Selector.evaluatorOf(str));
    }

    public Element selectNext(String str) {
        return selectNext(Selector.evaluatorOf(str));
    }

    public StreamParser stop() {
        this.i = true;
        return this;
    }

    public Stream<Element> stream() {
        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(this.g, 273), false);
    }

    public Element selectFirst(Evaluator evaluator) {
        Element selectFirst = document().selectFirst(evaluator);
        return selectFirst != null ? selectFirst : selectNext(evaluator);
    }

    public Element selectNext(Evaluator evaluator) {
        try {
            return stream().filter(evaluator.asPredicate(document())).findFirst().orElse(null);
        } catch (UncheckedIOException e) {
            throw e.getCause();
        }
    }

    public StreamParser parseFragment(String str, Element element, String str2) {
        return parseFragment(new StringReader(str), element, str2);
    }

    public StreamParser parse(String str, String str2) {
        return parse(new StringReader(str), str2);
    }
}
