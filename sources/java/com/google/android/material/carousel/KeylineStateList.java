package com.google.android.material.carousel;

import androidx.annotation.RestrictTo;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.carousel.CarouselStrategy;
import com.google.android.material.carousel.KeylineState;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@RestrictTo
/* loaded from: classes3.dex */
public class KeylineStateList {

    /* renamed from: a, reason: collision with root package name */
    public final KeylineState f11719a;
    public final List b;

    /* renamed from: c, reason: collision with root package name */
    public final List f11720c;
    public final float[] d;
    public final float[] e;
    public final float f;
    public final float g;

    /* renamed from: com.google.android.material.carousel.KeylineStateList$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static {
            try {
                new int[CarouselStrategy.StrategyType.values().length][0] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public KeylineStateList(KeylineState keylineState, ArrayList arrayList, ArrayList arrayList2) {
        this.f11719a = keylineState;
        this.b = DesugarCollections.unmodifiableList(arrayList);
        this.f11720c = DesugarCollections.unmodifiableList(arrayList2);
        float f = ((KeylineState) android.support.v4.media.a.c(1, arrayList)).b().f11717a - keylineState.b().f11717a;
        this.f = f;
        float f2 = keylineState.d().f11717a - ((KeylineState) android.support.v4.media.a.c(1, arrayList2)).d().f11717a;
        this.g = f2;
        this.d = d(f, arrayList, true);
        this.e = d(f2, arrayList2, false);
    }

    public static float[] d(float f, ArrayList arrayList, boolean z) {
        float f2;
        float f3;
        int size = arrayList.size();
        float[] fArr = new float[size];
        for (int i = 1; i < size; i++) {
            int i2 = i - 1;
            KeylineState keylineState = (KeylineState) arrayList.get(i2);
            KeylineState keylineState2 = (KeylineState) arrayList.get(i);
            if (z) {
                f2 = keylineState2.b().f11717a - keylineState.b().f11717a;
            } else {
                f2 = keylineState.d().f11717a - keylineState2.d().f11717a;
            }
            float f4 = f2 / f;
            if (i == size - 1) {
                f3 = 1.0f;
            } else {
                f3 = fArr[i2] + f4;
            }
            fArr[i] = f3;
        }
        return fArr;
    }

    public static float[] e(List list, float f, float[] fArr) {
        int size = list.size();
        float f2 = fArr[0];
        int i = 1;
        while (i < size) {
            float f3 = fArr[i];
            if (f <= f3) {
                return new float[]{AnimationUtils.b(0.0f, 1.0f, f2, f3, f), i - 1, i};
            }
            i++;
            f2 = f3;
        }
        return new float[]{0.0f, 0.0f, 0.0f};
    }

    public static KeylineState f(KeylineState keylineState, int i, int i2, float f, int i3, int i4, int i5) {
        boolean z;
        ArrayList arrayList = new ArrayList(keylineState.f11714c);
        arrayList.add(i2, (KeylineState.Keyline) arrayList.remove(i));
        KeylineState.Builder builder = new KeylineState.Builder(keylineState.f11713a, i5);
        float f2 = f;
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            KeylineState.Keyline keyline = (KeylineState.Keyline) arrayList.get(i6);
            float f3 = keyline.d;
            float f4 = (f3 / 2.0f) + f2;
            if (i6 >= i3 && i6 <= i4) {
                z = true;
            } else {
                z = false;
            }
            builder.b(f4, keyline.f11718c, f3, z, keyline.e, keyline.f, 0.0f, 0.0f);
            f2 += keyline.d;
        }
        return builder.d();
    }

    public static KeylineState g(KeylineState keylineState, float f, int i, boolean z, float f2, CarouselStrategy.StrategyType strategyType) {
        float f3;
        boolean z2;
        float f4;
        float f5;
        int size;
        float f6;
        float f7;
        float f8;
        boolean z3;
        float min;
        int i2 = keylineState.e;
        int i3 = keylineState.d;
        float f9 = keylineState.f11713a;
        List list = keylineState.f11714c;
        if (strategyType.ordinal() != 0) {
            ArrayList arrayList = new ArrayList(list);
            KeylineState.Builder builder = new KeylineState.Builder(f9, i);
            if (z) {
                size = 0;
            } else {
                size = arrayList.size() - 1;
            }
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                KeylineState.Keyline keyline = (KeylineState.Keyline) arrayList.get(i4);
                boolean z4 = keyline.e;
                float f10 = keyline.b;
                if (z4 && i4 == size) {
                    builder.b(f10, keyline.f11718c, keyline.d, false, true, keyline.f, 0.0f, 0.0f);
                } else {
                    if (z) {
                        f6 = f10 + f;
                    } else {
                        f6 = f10 - f;
                    }
                    if (z) {
                        f7 = f;
                    } else {
                        f7 = 0.0f;
                    }
                    if (z) {
                        f8 = 0.0f;
                    } else {
                        f8 = f;
                    }
                    if (i4 >= i3 && i4 <= i2) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    float f11 = f6;
                    float f12 = keyline.f11718c;
                    float f13 = keyline.d;
                    if (z) {
                        min = Math.max(0.0f, ((f13 / 2.0f) + f11) - i);
                    } else {
                        min = Math.min(0.0f, f11 - (f13 / 2.0f));
                    }
                    builder.b(f11, f12, f13, z3, z4, Math.abs(min), f7, f8);
                }
            }
            return builder.d();
        }
        ArrayList arrayList2 = new ArrayList(list);
        KeylineState.Builder builder2 = new KeylineState.Builder(f9, i);
        Iterator it = list.iterator();
        int i5 = 0;
        while (it.hasNext()) {
            if (((KeylineState.Keyline) it.next()).e) {
                i5++;
            }
        }
        float size2 = f / (list.size() - i5);
        if (z) {
            f3 = f;
        } else {
            f3 = 0.0f;
        }
        for (int i6 = 0; i6 < arrayList2.size(); i6++) {
            KeylineState.Keyline keyline2 = (KeylineState.Keyline) arrayList2.get(i6);
            if (keyline2.e) {
                builder2.b(keyline2.b, keyline2.f11718c, keyline2.d, false, true, keyline2.f, 0.0f, 0.0f);
            } else {
                if (i6 >= i3 && i6 <= i2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                float f14 = keyline2.d - size2;
                float b = CarouselStrategy.b(f14, f9, f2);
                float f15 = (f14 / 2.0f) + f3;
                float abs = Math.abs(f15 - keyline2.b);
                float f16 = keyline2.f;
                if (z) {
                    f4 = abs;
                } else {
                    f4 = 0.0f;
                }
                if (z) {
                    f5 = 0.0f;
                } else {
                    f5 = abs;
                }
                builder2.b(f15, b, f14, z2, false, f16, f4, f5);
                f3 += f14;
            }
        }
        return builder2.d();
    }

    public final KeylineState a() {
        return (KeylineState) this.f11720c.get(r0.size() - 1);
    }

    public final KeylineState b(float f, float f2, float f3, boolean z) {
        float b;
        List list;
        float[] fArr;
        float f4 = this.f;
        float f5 = f2 + f4;
        float f6 = this.g;
        float f7 = f3 - f6;
        float f8 = c().a().g;
        float f9 = a().a().h;
        if (f4 == f8) {
            f5 += f8;
        }
        if (f6 == f9) {
            f7 -= f9;
        }
        if (f < f5) {
            b = AnimationUtils.b(1.0f, 0.0f, f2, f5, f);
            list = this.b;
            fArr = this.d;
        } else if (f > f7) {
            b = AnimationUtils.b(0.0f, 1.0f, f7, f3, f);
            list = this.f11720c;
            fArr = this.e;
        } else {
            return this.f11719a;
        }
        if (z) {
            float[] e = e(list, b, fArr);
            if (e[0] >= 0.5f) {
                return (KeylineState) list.get((int) e[2]);
            }
            return (KeylineState) list.get((int) e[1]);
        }
        float[] e2 = e(list, b, fArr);
        KeylineState keylineState = (KeylineState) list.get((int) e2[1]);
        KeylineState keylineState2 = (KeylineState) list.get((int) e2[2]);
        float f10 = e2[0];
        float f11 = keylineState.f11713a;
        List list2 = keylineState.f11714c;
        if (f11 == keylineState2.f11713a) {
            List list3 = keylineState2.f11714c;
            if (list2.size() == list3.size()) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < list2.size(); i++) {
                    KeylineState.Keyline keyline = (KeylineState.Keyline) list2.get(i);
                    KeylineState.Keyline keyline2 = (KeylineState.Keyline) list3.get(i);
                    arrayList.add(new KeylineState.Keyline(AnimationUtils.a(keyline.f11717a, keyline2.f11717a, f10), AnimationUtils.a(keyline.b, keyline2.b, f10), AnimationUtils.a(keyline.f11718c, keyline2.f11718c, f10), AnimationUtils.a(keyline.d, keyline2.d, f10), false, 0.0f, 0.0f, 0.0f));
                }
                return new KeylineState(keylineState.f11713a, arrayList, AnimationUtils.c(f10, keylineState.d, keylineState2.d), AnimationUtils.c(f10, keylineState.e, keylineState2.e), keylineState.f);
            }
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same number of keylines.");
        }
        throw new IllegalArgumentException("Keylines being linearly interpolated must have the same item size.");
    }

    public final KeylineState c() {
        return (KeylineState) this.b.get(r0.size() - 1);
    }
}
