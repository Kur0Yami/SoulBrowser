package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.CompactHashMap;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@GwtCompatible
/* loaded from: classes3.dex */
public class ImmutableListMultimap<K, V> extends ImmutableMultimap<K, V> implements ListMultimap<K, V> {

    /* loaded from: classes3.dex */
    public static final class Builder<K, V> extends ImmutableMultimap.Builder<K, V> {
    }

    public static ImmutableListMultimap l() {
        return EmptyImmutableListMultimap.k;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.ImmutableMultimap$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6, types: [com.google.common.collect.ImmutableListMultimap, com.google.common.collect.ImmutableMultimap] */
    public static ImmutableListMultimap m(String str) {
        ?? obj = new Object();
        CollectPreconditions.a("charset", str);
        Map map = obj.f12299a;
        if (map == null) {
            map = CompactHashMap.d();
            obj.f12299a = map;
        }
        ImmutableCollection.Builder builder = (ImmutableCollection.Builder) map.get("charset");
        if (builder == null) {
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f;
            CollectPreconditions.b(4, "expectedSize");
            builder = new ImmutableCollection.ArrayBasedBuilder(4);
            Map map2 = obj.f12299a;
            if (map2 == null) {
                map2 = CompactHashMap.d();
                obj.f12299a = map2;
            }
            map2.put("charset", builder);
        }
        builder.a(str);
        Map map3 = obj.f12299a;
        if (map3 == null) {
            return EmptyImmutableListMultimap.k;
        }
        Collection entrySet = ((CompactHashMap) map3).entrySet();
        if (((AbstractCollection) entrySet).isEmpty()) {
            return EmptyImmutableListMultimap.k;
        }
        CompactHashMap.EntrySetView entrySetView = (CompactHashMap.EntrySetView) entrySet;
        ImmutableMap.Builder builder2 = new ImmutableMap.Builder(CompactHashMap.this.size());
        Iterator it = entrySetView.iterator();
        int i = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            ImmutableList f = ((ImmutableList.Builder) entry.getValue()).f();
            builder2.d(key, f);
            i += ((RegularImmutableList) f).h;
        }
        return new ImmutableMultimap(builder2.b(true), i);
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.Multimap
    public final Collection a(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.Multimap
    public final Collection get(Object obj) {
        ImmutableList immutableList = (ImmutableList) this.i.get(obj);
        if (immutableList != null) {
            return immutableList;
        }
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f;
        return RegularImmutableList.i;
    }

    @Override // com.google.common.collect.ImmutableMultimap
    /* renamed from: j */
    public final ImmutableCollection get(Object obj) {
        ImmutableList immutableList = (ImmutableList) this.i.get(obj);
        if (immutableList == null) {
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f;
            return RegularImmutableList.i;
        }
        return immutableList;
    }

    @Override // com.google.common.collect.ImmutableMultimap
    public final ImmutableCollection k() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.Multimap
    public final List a(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.Multimap
    public final List get(Object obj) {
        ImmutableList immutableList = (ImmutableList) this.i.get(obj);
        if (immutableList != null) {
            return immutableList;
        }
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f;
        return RegularImmutableList.i;
    }
}
