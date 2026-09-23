package com.bumptech.glide.load.engine.bitmap_recycle;

import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
class GroupedLinkedMap<K extends Poolable, V> {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedEntry f2237a = new LinkedEntry(null);
    public final HashMap b = new HashMap();

    /* loaded from: classes.dex */
    public static class LinkedEntry<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f2238a;
        public ArrayList b;
        public LinkedEntry d = this;

        /* renamed from: c, reason: collision with root package name */
        public LinkedEntry f2239c = this;

        public LinkedEntry(Object obj) {
            this.f2238a = obj;
        }
    }

    public final Object a(Poolable poolable) {
        int i;
        HashMap hashMap = this.b;
        LinkedEntry linkedEntry = (LinkedEntry) hashMap.get(poolable);
        if (linkedEntry == null) {
            linkedEntry = new LinkedEntry(poolable);
            hashMap.put(poolable, linkedEntry);
        } else {
            poolable.a();
        }
        LinkedEntry linkedEntry2 = linkedEntry.d;
        linkedEntry2.f2239c = linkedEntry.f2239c;
        linkedEntry.f2239c.d = linkedEntry2;
        LinkedEntry linkedEntry3 = this.f2237a;
        linkedEntry.d = linkedEntry3;
        LinkedEntry linkedEntry4 = linkedEntry3.f2239c;
        linkedEntry.f2239c = linkedEntry4;
        linkedEntry4.d = linkedEntry;
        linkedEntry.d.f2239c = linkedEntry;
        ArrayList arrayList = linkedEntry.b;
        if (arrayList != null) {
            i = arrayList.size();
        } else {
            i = 0;
        }
        if (i > 0) {
            return linkedEntry.b.remove(i - 1);
        }
        return null;
    }

    public final void b(Poolable poolable, Object obj) {
        HashMap hashMap = this.b;
        LinkedEntry linkedEntry = (LinkedEntry) hashMap.get(poolable);
        if (linkedEntry == null) {
            linkedEntry = new LinkedEntry(poolable);
            linkedEntry.d = linkedEntry;
            LinkedEntry linkedEntry2 = this.f2237a;
            linkedEntry.d = linkedEntry2.d;
            linkedEntry.f2239c = linkedEntry2;
            linkedEntry2.d = linkedEntry;
            linkedEntry.d.f2239c = linkedEntry;
            hashMap.put(poolable, linkedEntry);
        } else {
            poolable.a();
        }
        if (linkedEntry.b == null) {
            linkedEntry.b = new ArrayList();
        }
        linkedEntry.b.add(obj);
    }

    public final Object c() {
        int i;
        LinkedEntry linkedEntry = this.f2237a;
        LinkedEntry linkedEntry2 = linkedEntry.d;
        while (true) {
            boolean equals = linkedEntry2.equals(linkedEntry);
            Object obj = linkedEntry2.f2238a;
            Object obj2 = null;
            if (equals) {
                return null;
            }
            ArrayList arrayList = linkedEntry2.b;
            if (arrayList != null) {
                i = arrayList.size();
            } else {
                i = 0;
            }
            if (i > 0) {
                obj2 = linkedEntry2.b.remove(i - 1);
            }
            if (obj2 != null) {
                return obj2;
            }
            LinkedEntry linkedEntry3 = linkedEntry2.d;
            linkedEntry3.f2239c = linkedEntry2.f2239c;
            linkedEntry2.f2239c.d = linkedEntry3;
            this.b.remove(obj);
            ((Poolable) obj).a();
            linkedEntry2 = linkedEntry2.d;
        }
    }

    public final String toString() {
        int i;
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        LinkedEntry linkedEntry = this.f2237a;
        LinkedEntry linkedEntry2 = linkedEntry.f2239c;
        boolean z = false;
        while (!linkedEntry2.equals(linkedEntry)) {
            sb.append('{');
            sb.append(linkedEntry2.f2238a);
            sb.append(':');
            ArrayList arrayList = linkedEntry2.b;
            if (arrayList != null) {
                i = arrayList.size();
            } else {
                i = 0;
            }
            sb.append(i);
            sb.append("}, ");
            linkedEntry2 = linkedEntry2.f2239c;
            z = true;
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
