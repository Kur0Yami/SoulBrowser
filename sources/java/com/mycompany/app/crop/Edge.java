package com.mycompany.app.crop;

import android.graphics.RectF;
import android.support.v4.media.a;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class Edge {
    public static final Edge f;
    public static final Edge g;
    public static final Edge h;
    public static final Edge i;
    public static final /* synthetic */ Edge[] j;

    /* renamed from: c, reason: collision with root package name */
    public float f12878c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.mycompany.app.crop.Edge] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.mycompany.app.crop.Edge] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.mycompany.app.crop.Edge] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, com.mycompany.app.crop.Edge] */
    static {
        ?? r0 = new Enum("START", 0);
        f = r0;
        ?? r1 = new Enum("TOP", 1);
        g = r1;
        ?? r3 = new Enum("END", 2);
        h = r3;
        ?? r5 = new Enum("BOTTOM", 3);
        i = r5;
        j = new Edge[]{r0, r1, r3, r5};
    }

    public static boolean d(float f2, float f3, float f4, float f5, RectF rectF) {
        if (f2 >= rectF.top && f3 >= rectF.left && f4 <= rectF.bottom && f5 <= rectF.right) {
            return false;
        }
        return true;
    }

    public static Edge valueOf(String str) {
        return (Edge) Enum.valueOf(Edge.class, str);
    }

    public static Edge[] values() {
        return (Edge[]) j.clone();
    }

    public final void a(float f2) {
        float f3 = f.f12878c;
        float f4 = g.f12878c;
        float f5 = h.f12878c;
        float f6 = i.f12878c;
        int ordinal = ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        return;
                    }
                    this.f12878c = ((f5 - f3) / f2) + f4;
                    return;
                }
                this.f12878c = a.a(f6, f4, f2, f3);
                return;
            }
            this.f12878c = f6 - ((f5 - f3) / f2);
            return;
        }
        this.f12878c = f5 - ((f6 - f4) * f2);
    }

    public final void b(float f2, float f3, float f4, float f5, RectF rectF) {
        int ordinal = ordinal();
        float f6 = Float.POSITIVE_INFINITY;
        if (ordinal != 0) {
            if (ordinal != 1) {
                float f7 = Float.NEGATIVE_INFINITY;
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        return;
                    }
                    float f8 = rectF.bottom;
                    if (f8 - f3 >= f4) {
                        float f9 = g.f12878c;
                        float f10 = f9 + 40.0f;
                        if (f3 > f10) {
                            f10 = Float.NEGATIVE_INFINITY;
                        }
                        if ((f3 - f9) * f5 <= 40.0f) {
                            f7 = (40.0f / f5) + f9;
                        }
                        f8 = Math.max(f3, Math.max(f7, f10));
                    }
                    this.f12878c = f8;
                    return;
                }
                float f11 = rectF.right;
                if (f11 - f2 >= f4) {
                    float f12 = f.f12878c;
                    float f13 = f12 + 40.0f;
                    if (f2 > f13) {
                        f13 = Float.NEGATIVE_INFINITY;
                    }
                    if ((f2 - f12) / f5 <= 40.0f) {
                        f7 = (f5 * 40.0f) + f12;
                    }
                    f11 = Math.max(f2, Math.max(f13, f7));
                }
                this.f12878c = f11;
                return;
            }
            float f14 = rectF.top;
            if (f3 - f14 >= f4) {
                float f15 = i.f12878c;
                float f16 = f15 - 40.0f;
                if (f3 < f16) {
                    f16 = Float.POSITIVE_INFINITY;
                }
                if ((f15 - f3) * f5 <= 40.0f) {
                    f6 = f15 - (40.0f / f5);
                }
                f14 = Math.min(f3, Math.min(f16, f6));
            }
            this.f12878c = f14;
            return;
        }
        float f17 = rectF.left;
        if (f2 - f17 >= f4) {
            float f18 = h.f12878c;
            float f19 = f18 - 40.0f;
            if (f2 < f19) {
                f19 = Float.POSITIVE_INFINITY;
            }
            if ((f18 - f2) / f5 <= 40.0f) {
                f6 = f18 - (f5 * 40.0f);
            }
            f17 = Math.min(f2, Math.min(f19, f6));
        }
        this.f12878c = f17;
    }

    public final boolean c(Edge edge, RectF rectF, float f2) {
        float f3;
        float f4 = edge.f12878c;
        int ordinal = edge.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    f3 = rectF.bottom;
                } else {
                    f3 = rectF.right;
                }
            } else {
                f3 = rectF.top;
            }
        } else {
            f3 = rectF.left;
        }
        float f5 = f3 - f4;
        int ordinal2 = ordinal();
        Edge edge2 = g;
        Edge edge3 = i;
        Edge edge4 = h;
        if (ordinal2 != 0) {
            Edge edge5 = f;
            if (ordinal2 != 1) {
                if (ordinal2 != 2) {
                    if (ordinal2 == 3) {
                        if (edge.equals(edge5)) {
                            float f6 = rectF.left;
                            float f7 = edge4.f12878c - f5;
                            float f8 = edge2.f12878c;
                            return d(f8, f6, ((f7 - f6) / f2) + f8, f7, rectF);
                        }
                        if (edge.equals(edge4)) {
                            float f9 = rectF.right;
                            float f10 = edge5.f12878c - f5;
                            float f11 = edge2.f12878c;
                            return d(f11, f10, ((f9 - f10) / f2) + f11, f9, rectF);
                        }
                    }
                } else {
                    if (edge.equals(edge2)) {
                        float f12 = rectF.top;
                        float f13 = edge3.f12878c - f5;
                        float f14 = edge5.f12878c;
                        return d(f12, f14, f13, a.a(f13, f12, f2, f14), rectF);
                    }
                    if (edge.equals(edge3)) {
                        float f15 = rectF.bottom;
                        float f16 = edge2.f12878c - f5;
                        float f17 = edge5.f12878c;
                        return d(f16, f17, f15, a.a(f15, f16, f2, f17), rectF);
                    }
                }
            } else {
                if (edge.equals(edge5)) {
                    float f18 = rectF.left;
                    float f19 = edge4.f12878c - f5;
                    float f20 = edge3.f12878c;
                    return d(f20 - ((f19 - f18) / f2), f18, f20, f19, rectF);
                }
                if (edge.equals(edge4)) {
                    float f21 = rectF.right;
                    float f22 = edge5.f12878c - f5;
                    float f23 = edge3.f12878c;
                    return d(f23 - ((f21 - f22) / f2), f22, f23, f21, rectF);
                }
            }
        } else {
            if (edge.equals(edge2)) {
                float f24 = rectF.top;
                float f25 = edge3.f12878c - f5;
                float f26 = edge4.f12878c;
                return d(f24, f26 - ((f25 - f24) * f2), f25, f26, rectF);
            }
            if (edge.equals(edge3)) {
                float f27 = rectF.bottom;
                float f28 = edge2.f12878c - f5;
                float f29 = edge4.f12878c;
                return d(f28, f29 - ((f27 - f28) * f2), f27, f29, rectF);
            }
        }
        return true;
    }

    public final boolean e(RectF rectF, float f2) {
        int ordinal = ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (rectF.bottom - this.f12878c >= f2) {
                        return false;
                    }
                    return true;
                }
                if (rectF.right - this.f12878c >= f2) {
                    return false;
                }
                return true;
            }
            if (this.f12878c - rectF.top >= f2) {
                return false;
            }
            return true;
        }
        if (this.f12878c - rectF.left >= f2) {
            return false;
        }
        return true;
    }

    public final void f(float f2) {
        this.f12878c += f2;
    }

    public final float g(RectF rectF) {
        float f2 = this.f12878c;
        int ordinal = ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        this.f12878c = rectF.bottom;
                    }
                } else {
                    this.f12878c = rectF.right;
                }
            } else {
                this.f12878c = rectF.top;
            }
        } else {
            this.f12878c = rectF.left;
        }
        return this.f12878c - f2;
    }
}
