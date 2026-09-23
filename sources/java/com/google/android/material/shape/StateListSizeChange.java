package com.google.android.material.shape;

import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes3.dex */
public class StateListSizeChange {

    /* renamed from: a, reason: collision with root package name */
    public int f11912a;
    public SizeChange b;

    /* renamed from: c, reason: collision with root package name */
    public int[][] f11913c;
    public SizeChange[] d;

    /* loaded from: classes3.dex */
    public static class SizeChange {

        /* renamed from: a, reason: collision with root package name */
        public SizeChangeAmount f11914a;
    }

    /* loaded from: classes3.dex */
    public static class SizeChangeAmount {

        /* renamed from: a, reason: collision with root package name */
        public final SizeChangeType f11915a;
        public final float b;

        public SizeChangeAmount(SizeChangeType sizeChangeType, float f) {
            this.f11915a = sizeChangeType;
            this.b = f;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class SizeChangeType {

        /* renamed from: c, reason: collision with root package name */
        public static final SizeChangeType f11916c;
        public static final SizeChangeType f;
        public static final /* synthetic */ SizeChangeType[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.material.shape.StateListSizeChange$SizeChangeType] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.material.shape.StateListSizeChange$SizeChangeType] */
        static {
            ?? r0 = new Enum("PERCENT", 0);
            f11916c = r0;
            ?? r1 = new Enum("PIXELS", 1);
            f = r1;
            g = new SizeChangeType[]{r0, r1};
        }

        public static SizeChangeType valueOf(String str) {
            return (SizeChangeType) Enum.valueOf(SizeChangeType.class, str);
        }

        public static SizeChangeType[] values() {
            return (SizeChangeType[]) g.clone();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b0  */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, com.google.android.material.shape.StateListSizeChange$SizeChange] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.content.Context r12, android.content.res.XmlResourceParser r13, android.util.AttributeSet r14, android.content.res.Resources.Theme r15) {
        /*
            r11 = this;
            int r0 = r13.getDepth()
            r1 = 1
            int r0 = r0 + r1
        L6:
            int r2 = r13.next()
            if (r2 == r1) goto Ld1
            int r3 = r13.getDepth()
            if (r3 >= r0) goto L15
            r4 = 3
            if (r2 == r4) goto Ld1
        L15:
            r4 = 2
            if (r2 != r4) goto L6
            if (r3 > r0) goto L6
            java.lang.String r2 = r13.getName()
            java.lang.String r3 = "item"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L27
            goto L6
        L27:
            android.content.res.Resources r2 = r12.getResources()
            r3 = 0
            if (r15 != 0) goto L35
            int[] r4 = com.google.android.material.R.styleable.StateListSizeChange
            android.content.res.TypedArray r2 = r2.obtainAttributes(r14, r4)
            goto L3b
        L35:
            int[] r2 = com.google.android.material.R.styleable.StateListSizeChange
            android.content.res.TypedArray r2 = r15.obtainStyledAttributes(r14, r2, r3, r3)
        L3b:
            int r4 = com.google.android.material.R.styleable.StateListSizeChange_widthChange
            android.util.TypedValue r4 = r2.peekValue(r4)
            if (r4 != 0) goto L44
            goto L71
        L44:
            int r5 = r4.type
            r6 = 5
            if (r5 != r6) goto L60
            com.google.android.material.shape.StateListSizeChange$SizeChangeAmount r5 = new com.google.android.material.shape.StateListSizeChange$SizeChangeAmount
            int r4 = r4.data
            android.content.res.Resources r6 = r2.getResources()
            android.util.DisplayMetrics r6 = r6.getDisplayMetrics()
            int r4 = android.util.TypedValue.complexToDimensionPixelSize(r4, r6)
            float r4 = (float) r4
            com.google.android.material.shape.StateListSizeChange$SizeChangeType r6 = com.google.android.material.shape.StateListSizeChange.SizeChangeType.f
            r5.<init>(r6, r4)
            goto L72
        L60:
            r6 = 6
            if (r5 != r6) goto L71
            com.google.android.material.shape.StateListSizeChange$SizeChangeAmount r5 = new com.google.android.material.shape.StateListSizeChange$SizeChangeAmount
            com.google.android.material.shape.StateListSizeChange$SizeChangeType r6 = com.google.android.material.shape.StateListSizeChange.SizeChangeType.f11916c
            r7 = 1065353216(0x3f800000, float:1.0)
            float r4 = r4.getFraction(r7, r7)
            r5.<init>(r6, r4)
            goto L72
        L71:
            r5 = 0
        L72:
            r2.recycle()
            int r2 = r14.getAttributeCount()
            int[] r4 = new int[r2]
            r6 = r3
            r7 = r6
        L7d:
            if (r6 >= r2) goto L97
            int r8 = r14.getAttributeNameResource(r6)
            int r9 = com.google.android.material.R.attr.widthChange
            if (r8 == r9) goto L94
            int r9 = r7 + 1
            boolean r10 = r14.getAttributeBooleanValue(r6, r3)
            if (r10 == 0) goto L90
            goto L91
        L90:
            int r8 = -r8
        L91:
            r4[r7] = r8
            r7 = r9
        L94:
            int r6 = r6 + 1
            goto L7d
        L97:
            int[] r2 = android.util.StateSet.trimStateSet(r4, r7)
            com.google.android.material.shape.StateListSizeChange$SizeChange r4 = new com.google.android.material.shape.StateListSizeChange$SizeChange
            r4.<init>()
            r4.f11914a = r5
            int r5 = r11.f11912a
            if (r5 == 0) goto La9
            int r6 = r2.length
            if (r6 != 0) goto Lab
        La9:
            r11.b = r4
        Lab:
            int[][] r6 = r11.f11913c
            int r7 = r6.length
            if (r5 < r7) goto Lc2
            int r7 = r5 + 10
            int[][] r8 = new int[r7]
            java.lang.System.arraycopy(r6, r3, r8, r3, r5)
            r11.f11913c = r8
            com.google.android.material.shape.StateListSizeChange$SizeChange[] r6 = new com.google.android.material.shape.StateListSizeChange.SizeChange[r7]
            com.google.android.material.shape.StateListSizeChange$SizeChange[] r7 = r11.d
            java.lang.System.arraycopy(r7, r3, r6, r3, r5)
            r11.d = r6
        Lc2:
            int[][] r3 = r11.f11913c
            int r5 = r11.f11912a
            r3[r5] = r2
            com.google.android.material.shape.StateListSizeChange$SizeChange[] r2 = r11.d
            r2[r5] = r4
            int r5 = r5 + r1
            r11.f11912a = r5
            goto L6
        Ld1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.shape.StateListSizeChange.a(android.content.Context, android.content.res.XmlResourceParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }
}
