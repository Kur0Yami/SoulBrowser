package com.mycompany.app.crop;

import android.graphics.RectF;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'f' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes3.dex */
public final class Handle {
    public static final Handle f;
    public static final Handle g;
    public static final Handle h;
    public static final Handle i;
    public static final Handle j;
    public static final Handle k;
    public static final Handle l;
    public static final Handle m;
    public static final Handle n;
    public static final /* synthetic */ Handle[] o;

    /* renamed from: c, reason: collision with root package name */
    public final HandleHelper f12880c;

    static {
        final Edge edge = Edge.g;
        final Edge edge2 = Edge.f;
        Handle handle = new Handle("TOP_START", 0, new HandleHelper(edge, edge2));
        f = handle;
        final Edge edge3 = Edge.h;
        Handle handle2 = new Handle("TOP_END", 1, new HandleHelper(edge, edge3));
        g = handle2;
        final Edge edge4 = Edge.i;
        Handle handle3 = new Handle("BOTTOM_START", 2, new HandleHelper(edge4, edge2));
        h = handle3;
        Handle handle4 = new Handle("BOTTOM_END", 3, new HandleHelper(edge4, edge3));
        i = handle4;
        Handle handle5 = new Handle("START", 4, new HandleHelper(edge2) { // from class: com.mycompany.app.crop.VerticalHandleHelper
            public final Edge d;

            {
                super(null, edge2);
                this.d = edge2;
            }

            @Override // com.mycompany.app.crop.HandleHelper
            public final void a(float f2, float f3, float f4, float f5, RectF rectF) {
                Edge edge5 = this.d;
                edge5.b(f2, f3, f5, f4, rectF);
                Edge edge6 = Edge.g;
                float f6 = edge6.f12878c;
                Edge edge7 = Edge.i;
                float f7 = edge7.f12878c;
                float f8 = (((Edge.h.f12878c - Edge.f.f12878c) / f4) - (f7 - f6)) / 2.0f;
                edge6.f12878c = f6 - f8;
                edge7.f12878c = f7 + f8;
                if (edge6.e(rectF, f5) && !edge5.c(edge6, rectF, f4)) {
                    edge7.f(-edge6.g(rectF));
                    edge5.a(f4);
                }
                if (edge7.e(rectF, f5) && !edge5.c(edge7, rectF, f4)) {
                    edge6.f(-edge7.g(rectF));
                    edge5.a(f4);
                }
            }
        });
        j = handle5;
        Handle handle6 = new Handle("TOP", 5, new HandleHelper(edge) { // from class: com.mycompany.app.crop.HorizontalHandleHelper
            public final Edge d;

            {
                super(edge, null);
                this.d = edge;
            }

            @Override // com.mycompany.app.crop.HandleHelper
            public final void a(float f2, float f3, float f4, float f5, RectF rectF) {
                Edge edge5 = this.d;
                edge5.b(f2, f3, f5, f4, rectF);
                Edge edge6 = Edge.f;
                float f6 = edge6.f12878c;
                Edge edge7 = Edge.h;
                float f7 = edge7.f12878c;
                float f8 = (((Edge.i.f12878c - Edge.g.f12878c) * f4) - (f7 - f6)) / 2.0f;
                edge6.f12878c = f6 - f8;
                edge7.f12878c = f7 + f8;
                if (edge6.e(rectF, f5) && !edge5.c(edge6, rectF, f4)) {
                    edge7.f(-edge6.g(rectF));
                    edge5.a(f4);
                }
                if (edge7.e(rectF, f5) && !edge5.c(edge7, rectF, f4)) {
                    edge6.f(-edge7.g(rectF));
                    edge5.a(f4);
                }
            }
        });
        k = handle6;
        Handle handle7 = new Handle("END", 6, new HandleHelper(edge3) { // from class: com.mycompany.app.crop.VerticalHandleHelper
            public final Edge d;

            {
                super(null, edge3);
                this.d = edge3;
            }

            @Override // com.mycompany.app.crop.HandleHelper
            public final void a(float f2, float f3, float f4, float f5, RectF rectF) {
                Edge edge5 = this.d;
                edge5.b(f2, f3, f5, f4, rectF);
                Edge edge6 = Edge.g;
                float f6 = edge6.f12878c;
                Edge edge7 = Edge.i;
                float f7 = edge7.f12878c;
                float f8 = (((Edge.h.f12878c - Edge.f.f12878c) / f4) - (f7 - f6)) / 2.0f;
                edge6.f12878c = f6 - f8;
                edge7.f12878c = f7 + f8;
                if (edge6.e(rectF, f5) && !edge5.c(edge6, rectF, f4)) {
                    edge7.f(-edge6.g(rectF));
                    edge5.a(f4);
                }
                if (edge7.e(rectF, f5) && !edge5.c(edge7, rectF, f4)) {
                    edge6.f(-edge7.g(rectF));
                    edge5.a(f4);
                }
            }
        });
        l = handle7;
        Handle handle8 = new Handle("BOTTOM", 7, new HandleHelper(edge4) { // from class: com.mycompany.app.crop.HorizontalHandleHelper
            public final Edge d;

            {
                super(edge4, null);
                this.d = edge4;
            }

            @Override // com.mycompany.app.crop.HandleHelper
            public final void a(float f2, float f3, float f4, float f5, RectF rectF) {
                Edge edge5 = this.d;
                edge5.b(f2, f3, f5, f4, rectF);
                Edge edge6 = Edge.f;
                float f6 = edge6.f12878c;
                Edge edge7 = Edge.h;
                float f7 = edge7.f12878c;
                float f8 = (((Edge.i.f12878c - Edge.g.f12878c) * f4) - (f7 - f6)) / 2.0f;
                edge6.f12878c = f6 - f8;
                edge7.f12878c = f7 + f8;
                if (edge6.e(rectF, f5) && !edge5.c(edge6, rectF, f4)) {
                    edge7.f(-edge6.g(rectF));
                    edge5.a(f4);
                }
                if (edge7.e(rectF, f5) && !edge5.c(edge7, rectF, f4)) {
                    edge6.f(-edge7.g(rectF));
                    edge5.a(f4);
                }
            }
        });
        m = handle8;
        Handle handle9 = new Handle("CENTER", 8, new HandleHelper(null, null));
        n = handle9;
        o = new Handle[]{handle, handle2, handle3, handle4, handle5, handle6, handle7, handle8, handle9};
    }

    public Handle(String str, int i2, HandleHelper handleHelper) {
        this.f12880c = handleHelper;
    }

    public static Handle valueOf(String str) {
        return (Handle) Enum.valueOf(Handle.class, str);
    }

    public static Handle[] values() {
        return (Handle[]) o.clone();
    }
}
