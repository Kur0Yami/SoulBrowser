package org.jsoup.select;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.List;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;
import java.util.stream.Stream;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Node;

/* loaded from: classes4.dex */
public class Nodes<T extends Node> extends ArrayList<T> implements List {
    public Nodes() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: after */
    public Nodes<T> after2(String str) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Node) t).after(str);
        }
        return this;
    }

    public ArrayList<T> asList() {
        return new ArrayList<>(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: before */
    public Nodes<T> before2(String str) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Node) t).before(str);
        }
        return this;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        remove2();
        super.clear();
    }

    public T deselect(int i) {
        return (T) super.remove(i);
    }

    public void deselectAll() {
        super.clear();
    }

    public T first() {
        if (isEmpty()) {
            return null;
        }
        return (T) get(0);
    }

    @Override // java.util.ArrayList, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public /* synthetic */ void forEach(Consumer consumer) {
        Iterable.CC.$default$forEach(this, consumer);
    }

    public T last() {
        if (isEmpty()) {
            return null;
        }
        return (T) get(size() - 1);
    }

    public String outerHtml() {
        return (String) Collection.EL.stream(this).map(new e(3)).collect(StringUtil.joining("\n"));
    }

    @Override // java.util.Collection
    public /* synthetic */ Stream parallelStream() {
        return Stream.Wrapper.convert(parallelStream());
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(java.util.Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.ArrayList, java.util.Collection, j$.util.Collection
    public boolean removeIf(Predicate<? super T> predicate) {
        Iterator<T> it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (predicate.test((Node) it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ArrayList, java.util.List, j$.util.List
    public void replaceAll(UnaryOperator<T> unaryOperator) {
        for (int i = 0; i < size(); i++) {
            set(i, (int) unaryOperator.apply((Node) get(i)));
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(java.util.Collection<?> collection) {
        Iterator<T> it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!collection.contains((Node) it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.ArrayList, java.util.List, j$.util.List
    public /* synthetic */ void sort(Comparator comparator) {
        List.CC.$default$sort(this, comparator);
    }

    @Override // java.util.ArrayList, java.util.Collection, java.lang.Iterable, java.util.List
    public /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    @Override // java.util.Collection
    public /* synthetic */ java.util.stream.Stream stream() {
        return Stream.Wrapper.convert(stream());
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        Object[] array;
        array = toArray((Object[]) intFunction.apply(0));
        return array;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return outerHtml();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: wrap */
    public Nodes<T> wrap2(String str) {
        Validate.notEmpty(str);
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Node) t).wrap(str);
        }
        return this;
    }

    public Nodes(int i) {
        super(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ArrayList
    public Nodes<T> clone() {
        Nodes<T> nodes = new Nodes<>(size());
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            nodes.add(((Node) t).mo1499clone());
        }
        return nodes;
    }

    public boolean deselect(Object obj) {
        return super.remove(obj);
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ j$.util.stream.Stream parallelStream() {
        return Collection.CC.$default$parallelStream(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: remove */
    public Nodes<T> remove2() {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Node) t).remove();
        }
        return this;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public T set(int i, T t) {
        Validate.notNull(t);
        T t2 = (T) super.set(i, (int) t);
        t2.replaceWith(t);
        return t2;
    }

    @Override // java.util.ArrayList, java.util.Collection, java.lang.Iterable, java.util.List, j$.util.List, j$.util.Collection, j$.lang.Iterable
    public /* synthetic */ j$.util.Spliterator spliterator() {
        return List.CC.$default$spliterator(this);
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ j$.util.stream.Stream stream() {
        return Collection.CC.$default$stream(this);
    }

    public Nodes(java.util.Collection<T> collection) {
        super(collection);
    }

    public Nodes(java.util.List<T> list) {
        super(list);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public T remove(int i) {
        T t = (T) super.remove(i);
        t.remove();
        return t;
    }

    @SafeVarargs
    public Nodes(T... tArr) {
        super(Arrays.asList(tArr));
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int indexOf = super.indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }
}
