package com.bumptech.glide.provider;

import com.bumptech.glide.load.ResourceDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class ResourceDecoderRegistry {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2451a = new ArrayList();
    public final HashMap b = new HashMap();

    /* loaded from: classes.dex */
    public static class Entry<T, R> {

        /* renamed from: a, reason: collision with root package name */
        public final Class f2452a;
        public final Class b;

        /* renamed from: c, reason: collision with root package name */
        public final ResourceDecoder f2453c;

        public Entry(Class cls, Class cls2, ResourceDecoder resourceDecoder) {
            this.f2452a = cls;
            this.b = cls2;
            this.f2453c = resourceDecoder;
        }
    }

    public final synchronized void a(ResourceDecoder resourceDecoder, Class cls, Class cls2, String str) {
        c(str).add(new Entry(cls, cls2, resourceDecoder));
    }

    public final synchronized ArrayList b(Class cls, Class cls2) {
        ArrayList arrayList;
        boolean z;
        arrayList = new ArrayList();
        ArrayList arrayList2 = this.f2451a;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            List<Entry> list = (List) this.b.get((String) obj);
            if (list != null) {
                for (Entry entry : list) {
                    if (entry.f2452a.isAssignableFrom(cls) && cls2.isAssignableFrom(entry.b)) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        arrayList.add(entry.f2453c);
                    }
                }
            }
        }
        return arrayList;
    }

    public final synchronized List c(String str) {
        List list;
        try {
            if (!this.f2451a.contains(str)) {
                this.f2451a.add(str);
            }
            list = (List) this.b.get(str);
            if (list == null) {
                list = new ArrayList();
                this.b.put(str, list);
            }
        } catch (Throwable th) {
            throw th;
        }
        return list;
    }

    public final synchronized ArrayList d(Class cls, Class cls2) {
        ArrayList arrayList;
        boolean z;
        arrayList = new ArrayList();
        ArrayList arrayList2 = this.f2451a;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            List<Entry> list = (List) this.b.get((String) obj);
            if (list != null) {
                for (Entry entry : list) {
                    if (entry.f2452a.isAssignableFrom(cls) && cls2.isAssignableFrom(entry.b)) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z && !arrayList.contains(entry.b)) {
                        arrayList.add(entry.b);
                    }
                }
            }
        }
        return arrayList;
    }

    public final synchronized void e(ResourceDecoder resourceDecoder, Class cls, Class cls2, String str) {
        c(str).add(0, new Entry(cls, cls2, resourceDecoder));
    }
}
