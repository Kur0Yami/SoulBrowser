package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.web_seed_entry;

/* loaded from: classes.dex */
public final class WebSeedEntry {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Type {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Type[] f2639c;

        /* JADX INFO: Fake field, exist only in values array */
        Type EF0;

        /* JADX WARN: Multi-variable type inference failed */
        static {
            int i = web_seed_entry.type_t.f2746c.f2747a;
            Enum r0 = new Enum("URL_SEED", 0);
            int i2 = web_seed_entry.type_t.d.f2747a;
            f2639c = new Type[]{r0, new Enum("HTTP_SEED", 1), new Enum("UNKNOWN", 2)};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) f2639c.clone();
        }
    }
}
