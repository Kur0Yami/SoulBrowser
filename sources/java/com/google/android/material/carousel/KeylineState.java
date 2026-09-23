package com.google.android.material.carousel;

import androidx.annotation.RestrictTo;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

@RestrictTo
/* loaded from: classes3.dex */
public final class KeylineState {

    /* renamed from: a, reason: collision with root package name */
    public final float f11713a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final List f11714c;
    public final int d;
    public final int e;
    public final int f;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final float f11715a;
        public final int b;
        public Keyline d;
        public Keyline e;

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f11716c = new ArrayList();
        public int f = -1;
        public int g = -1;
        public float h = 0.0f;
        public int i = -1;

        public Builder(float f, int i) {
            this.f11715a = f;
            this.b = i;
        }

        public final void a(float f, float f2, float f3, boolean z, boolean z2) {
            float f4;
            float f5 = f3 / 2.0f;
            float f6 = f - f5;
            float f7 = f5 + f;
            float f8 = this.b;
            if (f7 > f8) {
                f4 = Math.abs(f7 - Math.max(f7 - f3, f8));
            } else {
                f4 = 0.0f;
                if (f6 < 0.0f) {
                    f4 = Math.abs(f6 - Math.min(f6 + f3, 0.0f));
                }
            }
            b(f, f2, f3, z, z2, f4, 0.0f, 0.0f);
        }

        public final void b(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5, float f6) {
            if (f3 <= 0.0f) {
                return;
            }
            ArrayList arrayList = this.f11716c;
            if (z2) {
                if (!z) {
                    int i = this.i;
                    if (i != -1 && i != 0) {
                        throw new IllegalArgumentException("Anchor keylines must be either the first or last keyline.");
                    }
                    this.i = arrayList.size();
                } else {
                    throw new IllegalArgumentException("Anchor keylines cannot be focal.");
                }
            }
            Keyline keyline = new Keyline(Float.MIN_VALUE, f, f2, f3, z2, f4, f5, f6);
            if (z) {
                if (this.d == null) {
                    this.d = keyline;
                    this.f = arrayList.size();
                }
                if (this.g != -1 && arrayList.size() - this.g > 1) {
                    throw new IllegalArgumentException("Keylines marked as focal must be placed next to each other. There cannot be non-focal keylines between focal keylines.");
                }
                if (f3 == this.d.d) {
                    this.e = keyline;
                    this.g = arrayList.size();
                } else {
                    throw new IllegalArgumentException("Keylines that are marked as focal must all have the same masked item size.");
                }
            } else {
                if (this.d == null && f3 < this.h) {
                    throw new IllegalArgumentException("Keylines before the first focal keyline must be ordered by incrementing masked item size.");
                }
                if (this.e != null && f3 > this.h) {
                    throw new IllegalArgumentException("Keylines after the last focal keyline must be ordered by decreasing masked item size.");
                }
            }
            this.h = f3;
            arrayList.add(keyline);
        }

        public final void c(float f, float f2, float f3, int i, boolean z) {
            if (i > 0 && f3 > 0.0f) {
                for (int i2 = 0; i2 < i; i2++) {
                    a((i2 * f3) + f, f2, f3, z, false);
                }
            }
        }

        public final KeylineState d() {
            if (this.d != null) {
                ArrayList arrayList = new ArrayList();
                int i = 0;
                while (true) {
                    ArrayList arrayList2 = this.f11716c;
                    if (i < arrayList2.size()) {
                        Keyline keyline = (Keyline) arrayList2.get(i);
                        float f = this.d.b;
                        float f2 = this.f;
                        float f3 = this.f11715a;
                        arrayList.add(new Keyline((i * f3) + (f - (f2 * f3)), keyline.b, keyline.f11718c, keyline.d, keyline.e, keyline.f, keyline.g, keyline.h));
                        i++;
                    } else {
                        return new KeylineState(this.f11715a, arrayList, this.f, this.g, this.b);
                    }
                }
            } else {
                throw new IllegalStateException("There must be a keyline marked as focal.");
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class Keyline {

        /* renamed from: a, reason: collision with root package name */
        public final float f11717a;
        public final float b;

        /* renamed from: c, reason: collision with root package name */
        public final float f11718c;
        public final float d;
        public final boolean e;
        public final float f;
        public final float g;
        public final float h;

        public Keyline(float f, float f2, float f3, float f4, boolean z, float f5, float f6, float f7) {
            this.f11717a = f;
            this.b = f2;
            this.f11718c = f3;
            this.d = f4;
            this.e = z;
            this.f = f5;
            this.g = f6;
            this.h = f7;
        }
    }

    public KeylineState(float f, ArrayList arrayList, int i, int i2, int i3) {
        this.f11713a = f;
        this.f11714c = DesugarCollections.unmodifiableList(arrayList);
        this.d = i;
        this.e = i2;
        while (i <= i2) {
            if (((Keyline) arrayList.get(i)).f == 0.0f) {
                this.b++;
            }
            i++;
        }
        this.f = i3;
    }

    public final Keyline a() {
        return (Keyline) this.f11714c.get(this.d);
    }

    public final Keyline b() {
        return (Keyline) this.f11714c.get(0);
    }

    public final Keyline c() {
        return (Keyline) this.f11714c.get(this.e);
    }

    public final Keyline d() {
        return (Keyline) this.f11714c.get(r0.size() - 1);
    }
}
