package com.google.common.base;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.annotations.GwtCompatible;
import java.util.Arrays;

@GwtCompatible
/* loaded from: classes3.dex */
public final class MoreObjects {

    /* loaded from: classes3.dex */
    public static final class ToStringHelper {

        /* renamed from: a, reason: collision with root package name */
        public final String f12171a;
        public final ValueHolder b;

        /* renamed from: c, reason: collision with root package name */
        public ValueHolder f12172c;
        public boolean d;

        /* loaded from: classes3.dex */
        public static final class UnconditionalValueHolder extends ValueHolder {
        }

        /* loaded from: classes3.dex */
        public static class ValueHolder {

            /* renamed from: a, reason: collision with root package name */
            public String f12173a;
            public Object b;

            /* renamed from: c, reason: collision with root package name */
            public ValueHolder f12174c;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.base.MoreObjects$ToStringHelper$ValueHolder, java.lang.Object] */
        public ToStringHelper(String str) {
            ?? obj = new Object();
            this.b = obj;
            this.f12172c = obj;
            this.d = false;
            this.f12171a = str;
        }

        public final void a(int i, String str) {
            e(str, String.valueOf(i));
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.base.MoreObjects$ToStringHelper$ValueHolder, java.lang.Object] */
        public final void b(Object obj, String str) {
            ?? obj2 = new Object();
            this.f12172c.f12174c = obj2;
            this.f12172c = obj2;
            obj2.b = obj;
            obj2.f12173a = str;
        }

        public final void c(String str) {
            e(str, String.valueOf(0L));
        }

        public final void d(String str, boolean z) {
            e(str, String.valueOf(z));
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.base.MoreObjects$ToStringHelper$ValueHolder, java.lang.Object] */
        public final void e(String str, String str2) {
            ?? obj = new Object();
            this.f12172c.f12174c = obj;
            this.f12172c = obj;
            obj.b = str2;
            obj.f12173a = str;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.base.MoreObjects$ToStringHelper$ValueHolder, java.lang.Object] */
        public final void f(Object obj) {
            ?? obj2 = new Object();
            this.f12172c.f12174c = obj2;
            this.f12172c = obj2;
            obj2.b = obj;
        }

        public final String toString() {
            boolean z = this.d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f12171a);
            sb.append('{');
            String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            for (ValueHolder valueHolder = this.b.f12174c; valueHolder != null; valueHolder = valueHolder.f12174c) {
                Object obj = valueHolder.b;
                if ((valueHolder instanceof UnconditionalValueHolder) || obj != null || !z) {
                    sb.append(str);
                    String str2 = valueHolder.f12173a;
                    if (str2 != null) {
                        sb.append(str2);
                        sb.append('=');
                    }
                    if (obj != null && obj.getClass().isArray()) {
                        String deepToString = Arrays.deepToString(new Object[]{obj});
                        sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                    } else {
                        sb.append(obj);
                    }
                    str = ", ";
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    public static Object a(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        if (obj2 != null) {
            return obj2;
        }
        throw new NullPointerException("Both parameters are null");
    }

    public static ToStringHelper b(Object obj) {
        return new ToStringHelper(obj.getClass().getSimpleName());
    }
}
