package com.bumptech.glide.provider;

import com.bumptech.glide.load.Encoder;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class EncoderRegistry {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2445a = new ArrayList();

    /* loaded from: classes.dex */
    public static final class Entry<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Class f2446a;
        public final Encoder b;

        public Entry(Class cls, Encoder encoder) {
            this.f2446a = cls;
            this.b = encoder;
        }
    }

    public final synchronized void a(Class cls, Encoder encoder) {
        this.f2445a.add(new Entry(cls, encoder));
    }

    public final synchronized Encoder b(Class cls) {
        ArrayList arrayList = this.f2445a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Entry entry = (Entry) obj;
            if (entry.f2446a.isAssignableFrom(cls)) {
                return entry.b;
            }
        }
        return null;
    }
}
