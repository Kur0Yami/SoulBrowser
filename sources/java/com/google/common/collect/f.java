package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Synchronized;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes3.dex */
public final /* synthetic */ class f implements Function, Maps.EntryTransformer {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12428c;
    public final /* synthetic */ Object f;

    public /* synthetic */ f(int i, Object obj) {
        this.f12428c = i;
        this.f = obj;
    }

    @Override // com.google.common.collect.Maps.EntryTransformer
    public Object a(Object obj, Object obj2) {
        switch (this.f12428c) {
            case 1:
                return ((Multimaps.TransformedEntriesMultimap) this.f).f((Collection) obj2, obj);
            case 4:
                return ((Function) this.f).apply(obj2);
            default:
                return ((com.google.common.net.a) this.f).apply(obj2);
        }
    }

    @Override // com.google.common.base.Function
    public Object apply(Object obj) {
        switch (this.f12428c) {
            case 0:
                Maps.EntryTransformer entryTransformer = (Maps.EntryTransformer) this.f;
                Map.Entry entry = (Map.Entry) obj;
                entryTransformer.getClass();
                entry.getClass();
                return new Maps.AnonymousClass9(entry, entryTransformer);
            case 1:
            default:
                return ((Multimap) this.f).get(obj);
            case 2:
                return ((StandardTable) this.f).g(obj);
            case 3:
                return new Synchronized.SynchronizedObject((Map) obj, ((Synchronized.SynchronizedTable) this.f).f);
        }
    }
}
