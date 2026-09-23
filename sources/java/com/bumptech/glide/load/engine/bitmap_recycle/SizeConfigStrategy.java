package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.os.Build;
import android.support.v4.media.a;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Util;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

@RequiresApi
/* loaded from: classes.dex */
public class SizeConfigStrategy implements LruPoolStrategy {
    public static final Bitmap.Config[] d;
    public static final Bitmap.Config[] e;
    public static final Bitmap.Config[] f;
    public static final Bitmap.Config[] g;
    public static final Bitmap.Config[] h;

    /* renamed from: a, reason: collision with root package name */
    public final KeyPool f2246a = new BaseKeyPool();
    public final GroupedLinkedMap b = new GroupedLinkedMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f2247c = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2248a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f2248a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2248a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2248a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2248a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class Key implements Poolable {

        /* renamed from: a, reason: collision with root package name */
        public final KeyPool f2249a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public Bitmap.Config f2250c;

        public Key(KeyPool keyPool) {
            this.f2249a = keyPool;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public final void a() {
            this.f2249a.c(this);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Key) {
                Key key = (Key) obj;
                if (this.b == key.b && Util.b(this.f2250c, key.f2250c)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i;
            int i2 = this.b * 31;
            Bitmap.Config config = this.f2250c;
            if (config != null) {
                i = config.hashCode();
            } else {
                i = 0;
            }
            return i2 + i;
        }

        public final String toString() {
            return SizeConfigStrategy.c(this.b, this.f2250c);
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class KeyPool extends BaseKeyPool<Key> {
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.BaseKeyPool
        public final Poolable a() {
            return new Key(this);
        }
    }

    static {
        Bitmap.Config config;
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            int length = configArr.length - 1;
            config = Bitmap.Config.RGBA_F16;
            configArr[length] = config;
        }
        d = configArr;
        e = configArr;
        f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static String c(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    public final void a(Integer num, Bitmap bitmap) {
        NavigableMap d2 = d(bitmap.getConfig());
        Integer num2 = (Integer) d2.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                d2.remove(num);
                return;
            } else {
                d2.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + c(Util.c(bitmap), bitmap.getConfig()) + ", this: " + this);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008f A[EDGE_INSN: B:28:0x008f->B:17:0x008f BREAK  A[LOOP:0: B:7:0x004c->B:26:0x008c], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap b(int r11, int r12, android.graphics.Bitmap.Config r13) {
        /*
            r10 = this;
            int r0 = r11 * r12
            int r1 = com.bumptech.glide.util.Util.d(r13)
            int r1 = r1 * r0
            com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy$KeyPool r0 = r10.f2246a
            com.bumptech.glide.load.engine.bitmap_recycle.Poolable r2 = r0.b()
            com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy$Key r2 = (com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.Key) r2
            r2.b = r1
            r2.f2250c = r13
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 26
            r5 = 0
            if (r3 < r4) goto L27
            android.graphics.Bitmap$Config r3 = androidx.privacysandbox.ads.adservices.topics.a.j()
            boolean r3 = r3.equals(r13)
            if (r3 == 0) goto L27
            android.graphics.Bitmap$Config[] r3 = com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.e
            goto L4b
        L27:
            int[] r3 = com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.AnonymousClass1.f2248a
            int r4 = r13.ordinal()
            r3 = r3[r4]
            r4 = 1
            if (r3 == r4) goto L49
            r6 = 2
            if (r3 == r6) goto L46
            r6 = 3
            if (r3 == r6) goto L43
            r6 = 4
            if (r3 == r6) goto L40
            android.graphics.Bitmap$Config[] r3 = new android.graphics.Bitmap.Config[r4]
            r3[r5] = r13
            goto L4b
        L40:
            android.graphics.Bitmap$Config[] r3 = com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.h
            goto L4b
        L43:
            android.graphics.Bitmap$Config[] r3 = com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.g
            goto L4b
        L46:
            android.graphics.Bitmap$Config[] r3 = com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.f
            goto L4b
        L49:
            android.graphics.Bitmap$Config[] r3 = com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.d
        L4b:
            int r4 = r3.length
        L4c:
            if (r5 >= r4) goto L8f
            r6 = r3[r5]
            java.util.NavigableMap r7 = r10.d(r6)
            java.lang.Integer r8 = java.lang.Integer.valueOf(r1)
            java.lang.Object r7 = r7.ceilingKey(r8)
            java.lang.Integer r7 = (java.lang.Integer) r7
            if (r7 == 0) goto L8c
            int r8 = r7.intValue()
            int r9 = r1 * 8
            if (r8 > r9) goto L8c
            int r3 = r7.intValue()
            if (r3 != r1) goto L79
            if (r6 != 0) goto L73
            if (r13 == 0) goto L8f
            goto L79
        L73:
            boolean r1 = r6.equals(r13)
            if (r1 != 0) goto L8f
        L79:
            r0.c(r2)
            int r1 = r7.intValue()
            com.bumptech.glide.load.engine.bitmap_recycle.Poolable r0 = r0.b()
            r2 = r0
            com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy$Key r2 = (com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.Key) r2
            r2.b = r1
            r2.f2250c = r6
            goto L8f
        L8c:
            int r5 = r5 + 1
            goto L4c
        L8f:
            com.bumptech.glide.load.engine.bitmap_recycle.GroupedLinkedMap r0 = r10.b
            java.lang.Object r0 = r0.a(r2)
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0
            if (r0 == 0) goto La5
            int r1 = r2.b
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r10.a(r1, r0)
            r0.reconfigure(r11, r12, r13)
        La5:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.b(int, int, android.graphics.Bitmap$Config):android.graphics.Bitmap");
    }

    public final NavigableMap d(Bitmap.Config config) {
        HashMap hashMap = this.f2247c;
        NavigableMap navigableMap = (NavigableMap) hashMap.get(config);
        if (navigableMap == null) {
            TreeMap treeMap = new TreeMap();
            hashMap.put(config, treeMap);
            return treeMap;
        }
        return navigableMap;
    }

    public final String e(int i, int i2, Bitmap.Config config) {
        return c(Util.d(config) * i * i2, config);
    }

    public final void f(Bitmap bitmap) {
        int c2 = Util.c(bitmap);
        Bitmap.Config config = bitmap.getConfig();
        Key key = (Key) this.f2246a.b();
        key.b = c2;
        key.f2250c = config;
        this.b.b(key, bitmap);
        NavigableMap d2 = d(bitmap.getConfig());
        Integer num = (Integer) d2.get(Integer.valueOf(key.b));
        Integer valueOf = Integer.valueOf(key.b);
        int i = 1;
        if (num != null) {
            i = 1 + num.intValue();
        }
        d2.put(valueOf, Integer.valueOf(i));
    }

    public final String toString() {
        StringBuilder t = a.t("SizeConfigStrategy{groupedMap=");
        t.append(this.b);
        t.append(", sortedSizes=(");
        HashMap hashMap = this.f2247c;
        for (Map.Entry entry : hashMap.entrySet()) {
            t.append(entry.getKey());
            t.append('[');
            t.append(entry.getValue());
            t.append("], ");
        }
        if (!hashMap.isEmpty()) {
            t.replace(t.length() - 2, t.length(), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        t.append(")}");
        return t.toString();
    }
}
