package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import java.io.IOException;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.Map;

@GwtCompatible
/* loaded from: classes3.dex */
public class Joiner {

    /* renamed from: a, reason: collision with root package name */
    public final String f12169a;

    /* renamed from: com.google.common.base.Joiner$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends Joiner {
        @Override // com.google.common.base.Joiner
        public final void a(StringBuilder sb, Iterator it) {
            Preconditions.h(it, "parts");
            while (it.hasNext()) {
                if (it.next() != null) {
                    throw null;
                }
            }
            while (it.hasNext()) {
                if (it.next() != null) {
                    throw null;
                }
            }
        }

        @Override // com.google.common.base.Joiner
        public final String b(Iterable iterable) {
            return c(iterable.iterator());
        }

        @Override // com.google.common.base.Joiner
        public final Joiner f() {
            throw null;
        }
    }

    /* renamed from: com.google.common.base.Joiner$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends AbstractList<Object> {
        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            if (i == 0 || i == 1) {
                return null;
            }
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class MapJoiner {

        /* renamed from: a, reason: collision with root package name */
        public final Joiner f12170a;

        public MapJoiner(Joiner joiner) {
            this.f12170a = joiner;
        }

        public final void a(StringBuilder sb, Iterator it) {
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                Object key = entry.getKey();
                Joiner joiner = this.f12170a;
                sb.append(joiner.e(key));
                sb.append("=");
                sb.append(joiner.e(entry.getValue()));
                while (it.hasNext()) {
                    sb.append((CharSequence) joiner.f12169a);
                    Map.Entry entry2 = (Map.Entry) it.next();
                    sb.append(joiner.e(entry2.getKey()));
                    sb.append("=");
                    sb.append(joiner.e(entry2.getValue()));
                }
            }
        }
    }

    public Joiner(String str) {
        str.getClass();
        this.f12169a = str;
    }

    public static Joiner d(char c2) {
        return new Joiner(String.valueOf(c2));
    }

    public void a(StringBuilder sb, Iterator it) {
        if (it.hasNext()) {
            sb.append(e(it.next()));
            while (it.hasNext()) {
                sb.append((CharSequence) this.f12169a);
                sb.append(e(it.next()));
            }
        }
    }

    public String b(Iterable iterable) {
        return c(iterable.iterator());
    }

    public final String c(Iterator it) {
        StringBuilder sb = new StringBuilder();
        try {
            a(sb, it);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public CharSequence e(Object obj) {
        j$.util.Objects.requireNonNull(obj);
        if (obj instanceof CharSequence) {
            return (CharSequence) obj;
        }
        return obj.toString();
    }

    public Joiner f() {
        return new Joiner(this) { // from class: com.google.common.base.Joiner.1
            @Override // com.google.common.base.Joiner
            public final CharSequence e(Object obj) {
                if (obj == null) {
                    return "null";
                }
                return Joiner.this.e(obj);
            }

            @Override // com.google.common.base.Joiner
            public final Joiner f() {
                throw null;
            }
        };
    }

    public Joiner(Joiner joiner) {
        this.f12169a = joiner.f12169a;
    }
}
