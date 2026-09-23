package com.bumptech.glide.load.model;

import android.support.v4.media.a;
import android.text.TextUtils;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class LazyHeaders implements Headers {
    public final Map b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Map f2293c;

    /* loaded from: classes.dex */
    public static final class Builder {
        public static final Map d;

        /* renamed from: a, reason: collision with root package name */
        public boolean f2294a = true;
        public Map b = d;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2295c = true;

        static {
            String property = System.getProperty("http.agent");
            if (!TextUtils.isEmpty(property)) {
                int length = property.length();
                StringBuilder sb = new StringBuilder(property.length());
                for (int i = 0; i < length; i++) {
                    char charAt = property.charAt(i);
                    if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                        sb.append(charAt);
                    } else {
                        sb.append('?');
                    }
                }
                property = sb.toString();
            }
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(property)) {
                hashMap.put("User-Agent", Collections.singletonList(new StringHeaderFactory(property)));
            }
            d = DesugarCollections.unmodifiableMap(hashMap);
        }

        public final void a(String str, String str2) {
            StringHeaderFactory stringHeaderFactory = new StringHeaderFactory(str2);
            if (this.f2295c && "User-Agent".equalsIgnoreCase(str)) {
                b();
                List list = (List) this.b.get(str);
                if (list == null) {
                    list = new ArrayList();
                    this.b.put(str, list);
                }
                list.clear();
                list.add(stringHeaderFactory);
                if (this.f2295c && "User-Agent".equalsIgnoreCase(str)) {
                    this.f2295c = false;
                    return;
                }
                return;
            }
            b();
            List list2 = (List) this.b.get(str);
            if (list2 == null) {
                list2 = new ArrayList();
                this.b.put(str, list2);
            }
            list2.add(stringHeaderFactory);
        }

        public final void b() {
            if (this.f2294a) {
                this.f2294a = false;
                HashMap hashMap = new HashMap(this.b.size());
                for (Map.Entry entry : this.b.entrySet()) {
                    hashMap.put((String) entry.getKey(), new ArrayList((Collection) entry.getValue()));
                }
                this.b = hashMap;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class StringHeaderFactory implements LazyHeaderFactory {

        /* renamed from: a, reason: collision with root package name */
        public final String f2296a;

        public StringHeaderFactory(String str) {
            this.f2296a = str;
        }

        @Override // com.bumptech.glide.load.model.LazyHeaderFactory
        public final String a() {
            return this.f2296a;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof StringHeaderFactory) {
                return this.f2296a.equals(((StringHeaderFactory) obj).f2296a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f2296a.hashCode();
        }

        public final String toString() {
            return a.p(new StringBuilder("StringHeaderFactory{value='"), this.f2296a, "'}");
        }
    }

    public LazyHeaders(Map map) {
        this.b = DesugarCollections.unmodifiableMap(map);
    }

    @Override // com.bumptech.glide.load.model.Headers
    public final Map a() {
        if (this.f2293c == null) {
            synchronized (this) {
                try {
                    if (this.f2293c == null) {
                        this.f2293c = DesugarCollections.unmodifiableMap(b());
                    }
                } finally {
                }
            }
        }
        return this.f2293c;
    }

    public final HashMap b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : this.b.entrySet()) {
            List list = (List) entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                String a2 = ((LazyHeaderFactory) list.get(i)).a();
                if (!TextUtils.isEmpty(a2)) {
                    sb.append(a2);
                    if (i != list.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String sb2 = sb.toString();
            if (!TextUtils.isEmpty(sb2)) {
                hashMap.put((String) entry.getKey(), sb2);
            }
        }
        return hashMap;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof LazyHeaders) {
            return this.b.equals(((LazyHeaders) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "LazyHeaders{headers=" + this.b + '}';
    }
}
