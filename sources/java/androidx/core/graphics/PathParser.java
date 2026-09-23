package androidx.core.graphics;

import android.graphics.Path;
import android.util.Log;

/* loaded from: classes.dex */
public final class PathParser {

    /* loaded from: classes.dex */
    public static class ExtractFloatResult {

        /* renamed from: a, reason: collision with root package name */
        public boolean f684a;
    }

    public static boolean a(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            PathDataNode pathDataNode = pathDataNodeArr[i];
            char c2 = pathDataNode.f685a;
            PathDataNode pathDataNode2 = pathDataNodeArr2[i];
            if (c2 != pathDataNode2.f685a || pathDataNode.b.length != pathDataNode2.b.length) {
                return false;
            }
        }
        return true;
    }

    public static float[] b(float[] fArr, int i) {
        if (i >= 0) {
            int length = fArr.length;
            if (length >= 0) {
                int min = Math.min(i, length);
                float[] fArr2 = new float[i];
                System.arraycopy(fArr, 0, fArr2, 0, min);
                return fArr2;
            }
            throw new ArrayIndexOutOfBoundsException();
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x0080. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009f A[Catch: NumberFormatException -> 0x00b2, LOOP:3: B:25:0x006e->B:35:0x009f, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00b2, blocks: (B:22:0x0054, B:24:0x0067, B:25:0x006e, B:27:0x0074, B:31:0x0080, B:35:0x009f, B:49:0x0089, B:53:0x0095, B:39:0x00a4, B:40:0x00b4, B:45:0x00bb, B:58:0x00be), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a4 A[Catch: NumberFormatException -> 0x00b2, TryCatch #0 {NumberFormatException -> 0x00b2, blocks: (B:22:0x0054, B:24:0x0067, B:25:0x006e, B:27:0x0074, B:31:0x0080, B:35:0x009f, B:49:0x0089, B:53:0x0095, B:39:0x00a4, B:40:0x00b4, B:45:0x00bb, B:58:0x00be), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bb A[Catch: NumberFormatException -> 0x00b2, TryCatch #0 {NumberFormatException -> 0x00b2, blocks: (B:22:0x0054, B:24:0x0067, B:25:0x006e, B:27:0x0074, B:31:0x0080, B:35:0x009f, B:49:0x0089, B:53:0x0095, B:39:0x00a4, B:40:0x00b4, B:45:0x00bb, B:58:0x00be), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00e1 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r9v2, types: [androidx.core.graphics.PathParser$ExtractFloatResult, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.graphics.PathParser.PathDataNode[] c(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.PathParser.c(java.lang.String):androidx.core.graphics.PathParser$PathDataNode[]");
    }

    public static Path d(String str) {
        Path path = new Path();
        try {
            PathDataNode.b(c(str), path);
            return path;
        } catch (RuntimeException e) {
            throw new RuntimeException("Error in parsing ".concat(str), e);
        }
    }

    public static PathDataNode[] e(PathDataNode[] pathDataNodeArr) {
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            pathDataNodeArr2[i] = new PathDataNode(pathDataNodeArr[i]);
        }
        return pathDataNodeArr2;
    }

    /* loaded from: classes.dex */
    public static class PathDataNode {

        /* renamed from: a, reason: collision with root package name */
        public char f685a;
        public final float[] b;

        public PathDataNode(char c2, float[] fArr) {
            this.f685a = c2;
            this.b = fArr;
        }

        public static void a(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double d;
            double d2;
            boolean z3;
            double radians = Math.toRadians(f7);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            double d3 = f;
            double d4 = f2;
            double d5 = f5;
            double d6 = ((d4 * sin) + (d3 * cos)) / d5;
            double d7 = f6;
            double d8 = ((d4 * cos) + ((-f) * sin)) / d7;
            double d9 = f4;
            double d10 = ((d9 * sin) + (f3 * cos)) / d5;
            double d11 = ((d9 * cos) + ((-f3) * sin)) / d7;
            double d12 = d6 - d10;
            double d13 = d8 - d11;
            double d14 = (d6 + d10) / 2.0d;
            double d15 = (d8 + d11) / 2.0d;
            double d16 = (d13 * d13) + (d12 * d12);
            if (d16 == 0.0d) {
                Log.w("PathParser", " Points are coincident");
                return;
            }
            double d17 = (1.0d / d16) - 0.25d;
            if (d17 < 0.0d) {
                Log.w("PathParser", "Points are too far apart " + d16);
                float sqrt = (float) (Math.sqrt(d16) / 1.99999d);
                a(path, f, f2, f3, f4, f5 * sqrt, sqrt * f6, f7, z, z2);
                return;
            }
            double sqrt2 = Math.sqrt(d17);
            double d18 = sqrt2 * d12;
            double d19 = sqrt2 * d13;
            if (z == z2) {
                d = d14 - d19;
                d2 = d15 + d18;
            } else {
                d = d14 + d19;
                d2 = d15 - d18;
            }
            double atan2 = Math.atan2(d8 - d2, d6 - d);
            double atan22 = Math.atan2(d11 - d2, d10 - d) - atan2;
            if (atan22 >= 0.0d) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z2 != z3) {
                if (atan22 > 0.0d) {
                    atan22 -= 6.283185307179586d;
                } else {
                    atan22 += 6.283185307179586d;
                }
            }
            double d20 = d * d5;
            double d21 = d2 * d7;
            double d22 = (d20 * cos) - (d21 * sin);
            double d23 = (d21 * cos) + (d20 * sin);
            int ceil = (int) Math.ceil(Math.abs((atan22 * 4.0d) / 3.141592653589793d));
            double cos2 = Math.cos(radians);
            double sin2 = Math.sin(radians);
            double cos3 = Math.cos(atan2);
            double sin3 = Math.sin(atan2);
            double d24 = -d5;
            double d25 = d24 * cos2;
            double d26 = d7 * sin2;
            double d27 = (d25 * sin3) - (d26 * cos3);
            double d28 = d24 * sin2;
            double d29 = d7 * cos2;
            double d30 = atan22 / ceil;
            double d31 = (cos3 * d29) + (sin3 * d28);
            double d32 = d3;
            double d33 = d4;
            int i = 0;
            double d34 = atan2;
            while (i < ceil) {
                double d35 = d34 + d30;
                double sin4 = Math.sin(d35);
                double cos4 = Math.cos(d35);
                int i2 = ceil;
                double d36 = (((d5 * cos2) * cos4) + d22) - (d26 * sin4);
                double d37 = (d29 * sin4) + (d5 * sin2 * cos4) + d23;
                double d38 = (d25 * sin4) - (d26 * cos4);
                double d39 = (cos4 * d29) + (sin4 * d28);
                double d40 = d35 - d34;
                double tan = Math.tan(d40 / 2.0d);
                double sqrt3 = ((Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d) * Math.sin(d40)) / 3.0d;
                double d41 = (d31 * sqrt3) + d33;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((d27 * sqrt3) + d32), (float) d41, (float) (d36 - (sqrt3 * d38)), (float) (d37 - (sqrt3 * d39)), (float) d36, (float) d37);
                i++;
                d33 = d37;
                cos2 = cos2;
                d28 = d28;
                d34 = d35;
                d31 = d39;
                d32 = d36;
                ceil = i2;
                d27 = d38;
                d30 = d30;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static void b(PathDataNode[] pathDataNodeArr, Path path) {
            int i;
            float[] fArr;
            int i2;
            PathDataNode pathDataNode;
            int i3;
            char c2;
            boolean z;
            boolean z2;
            float f;
            float f2;
            PathDataNode pathDataNode2;
            boolean z3;
            boolean z4;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            PathDataNode[] pathDataNodeArr2 = pathDataNodeArr;
            Path path2 = path;
            float[] fArr2 = new float[6];
            int length = pathDataNodeArr2.length;
            int i4 = 0;
            int i5 = 0;
            char c3 = 'm';
            while (i5 < length) {
                PathDataNode pathDataNode3 = pathDataNodeArr2[i5];
                char c4 = pathDataNode3.f685a;
                float[] fArr3 = pathDataNode3.b;
                float f11 = fArr2[i4];
                float f12 = fArr2[1];
                float f13 = fArr2[2];
                float f14 = fArr2[3];
                float f15 = fArr2[4];
                int i6 = i4;
                float f16 = fArr2[5];
                switch (c4) {
                    case 'A':
                    case 'a':
                        i = 7;
                        break;
                    case 'C':
                    case 'c':
                        i = 6;
                        break;
                    case 'H':
                    case 'V':
                    case 'h':
                    case 'v':
                        i = 1;
                        break;
                    case 'Q':
                    case 'S':
                    case 'q':
                    case 's':
                        i = 4;
                        break;
                    case 'Z':
                    case 'z':
                        path2.close();
                        path2.moveTo(f15, f16);
                        f11 = f15;
                        f13 = f11;
                        f12 = f16;
                        f14 = f12;
                        break;
                }
                i = 2;
                float f17 = f15;
                float f18 = f16;
                float f19 = f11;
                float f20 = f12;
                int i7 = i6;
                while (i7 < fArr3.length) {
                    if (c4 != 'A') {
                        if (c4 != 'C') {
                            if (c4 != 'H') {
                                if (c4 != 'Q') {
                                    if (c4 != 'V') {
                                        if (c4 != 'a') {
                                            if (c4 != 'c') {
                                                if (c4 != 'h') {
                                                    if (c4 != 'q') {
                                                        if (c4 != 'v') {
                                                            if (c4 != 'L') {
                                                                if (c4 != 'M') {
                                                                    if (c4 != 'S') {
                                                                        if (c4 != 'T') {
                                                                            if (c4 != 'l') {
                                                                                if (c4 != 'm') {
                                                                                    if (c4 != 's') {
                                                                                        if (c4 != 't') {
                                                                                            fArr = fArr3;
                                                                                            i2 = i7;
                                                                                            pathDataNode = pathDataNode3;
                                                                                            f2 = f19;
                                                                                        } else {
                                                                                            if (c3 != 'q' && c3 != 't' && c3 != 'Q' && c3 != 'T') {
                                                                                                f10 = 0.0f;
                                                                                                f9 = 0.0f;
                                                                                            } else {
                                                                                                f9 = f19 - f13;
                                                                                                f10 = f20 - f14;
                                                                                            }
                                                                                            int i8 = i7 + 1;
                                                                                            path2.rQuadTo(f9, f10, fArr3[i7], fArr3[i8]);
                                                                                            float f21 = f9 + f19;
                                                                                            float f22 = f10 + f20;
                                                                                            float f23 = f19 + fArr3[i7];
                                                                                            f20 += fArr3[i8];
                                                                                            f14 = f22;
                                                                                            fArr = fArr3;
                                                                                            i2 = i7;
                                                                                            pathDataNode = pathDataNode3;
                                                                                            f2 = f23;
                                                                                            f13 = f21;
                                                                                        }
                                                                                        f = f20;
                                                                                    } else {
                                                                                        if (c3 != 'c' && c3 != 's' && c3 != 'C' && c3 != 'S') {
                                                                                            f8 = 0.0f;
                                                                                            f7 = 0.0f;
                                                                                        } else {
                                                                                            f7 = f20 - f14;
                                                                                            f8 = f19 - f13;
                                                                                        }
                                                                                        int i9 = i7;
                                                                                        int i10 = i9 + 1;
                                                                                        int i11 = i9 + 2;
                                                                                        int i12 = i9 + 3;
                                                                                        fArr = fArr3;
                                                                                        i2 = i9;
                                                                                        path2.rCubicTo(f8, f7, fArr3[i9], fArr3[i10], fArr3[i11], fArr3[i12]);
                                                                                        f3 = fArr[i2] + f19;
                                                                                        f4 = fArr[i10] + f20;
                                                                                        f19 += fArr[i11];
                                                                                        f5 = fArr[i12];
                                                                                    }
                                                                                } else {
                                                                                    fArr = fArr3;
                                                                                    i2 = i7;
                                                                                    float f24 = fArr[i2];
                                                                                    f19 += f24;
                                                                                    float f25 = fArr[i2 + 1];
                                                                                    f20 += f25;
                                                                                    if (i2 > 0) {
                                                                                        path2.rLineTo(f24, f25);
                                                                                    } else {
                                                                                        path2.rMoveTo(f24, f25);
                                                                                        pathDataNode = pathDataNode3;
                                                                                        f2 = f19;
                                                                                        f17 = f2;
                                                                                        f = f20;
                                                                                        f18 = f;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                fArr = fArr3;
                                                                                i2 = i7;
                                                                                int i13 = i2 + 1;
                                                                                path2.rLineTo(fArr[i2], fArr[i13]);
                                                                                f19 += fArr[i2];
                                                                                f6 = fArr[i13];
                                                                            }
                                                                        } else {
                                                                            fArr = fArr3;
                                                                            i2 = i7;
                                                                            if (c3 == 'q' || c3 == 't' || c3 == 'Q' || c3 == 'T') {
                                                                                f19 = (f19 * 2.0f) - f13;
                                                                                f20 = (f20 * 2.0f) - f14;
                                                                            }
                                                                            int i14 = i2 + 1;
                                                                            path2.quadTo(f19, f20, fArr[i2], fArr[i14]);
                                                                            f2 = fArr[i2];
                                                                            f = fArr[i14];
                                                                            pathDataNode = pathDataNode3;
                                                                            f13 = f19;
                                                                            f14 = f20;
                                                                        }
                                                                        i3 = i5;
                                                                        c2 = c4;
                                                                    } else {
                                                                        fArr = fArr3;
                                                                        i2 = i7;
                                                                        if (c3 == 'c' || c3 == 's' || c3 == 'C' || c3 == 'S') {
                                                                            f19 = (f19 * 2.0f) - f13;
                                                                            f20 = (f20 * 2.0f) - f14;
                                                                        }
                                                                        float f26 = f19;
                                                                        float f27 = f20;
                                                                        int i15 = i2 + 1;
                                                                        int i16 = i2 + 2;
                                                                        int i17 = i2 + 3;
                                                                        path2.cubicTo(f26, f27, fArr[i2], fArr[i15], fArr[i16], fArr[i17]);
                                                                        float f28 = fArr[i2];
                                                                        f13 = f28;
                                                                        f14 = fArr[i15];
                                                                        f2 = fArr[i16];
                                                                        f = fArr[i17];
                                                                    }
                                                                } else {
                                                                    fArr = fArr3;
                                                                    i2 = i7;
                                                                    f2 = fArr[i2];
                                                                    f = fArr[i2 + 1];
                                                                    if (i2 > 0) {
                                                                        path2.lineTo(f2, f);
                                                                    } else {
                                                                        path2.moveTo(f2, f);
                                                                        f17 = f2;
                                                                        f18 = f;
                                                                    }
                                                                }
                                                            } else {
                                                                fArr = fArr3;
                                                                i2 = i7;
                                                                int i18 = i2 + 1;
                                                                path2.lineTo(fArr[i2], fArr[i18]);
                                                                f2 = fArr[i2];
                                                                f = fArr[i18];
                                                            }
                                                            i3 = i5;
                                                            pathDataNode = pathDataNode3;
                                                            c2 = c4;
                                                        } else {
                                                            fArr = fArr3;
                                                            i2 = i7;
                                                            path2.rLineTo(0.0f, fArr[i2]);
                                                            f6 = fArr[i2];
                                                        }
                                                        f20 += f6;
                                                    } else {
                                                        fArr = fArr3;
                                                        i2 = i7;
                                                        int i19 = i2 + 1;
                                                        int i20 = i2 + 2;
                                                        int i21 = i2 + 3;
                                                        path2.rQuadTo(fArr[i2], fArr[i19], fArr[i20], fArr[i21]);
                                                        f3 = fArr[i2] + f19;
                                                        f4 = fArr[i19] + f20;
                                                        f19 += fArr[i20];
                                                        f5 = fArr[i21];
                                                    }
                                                    f20 += f5;
                                                    f13 = f3;
                                                    f14 = f4;
                                                } else {
                                                    fArr = fArr3;
                                                    i2 = i7;
                                                    path2.rLineTo(fArr[i2], 0.0f);
                                                    f19 += fArr[i2];
                                                }
                                            } else {
                                                fArr = fArr3;
                                                i2 = i7;
                                                int i22 = i2 + 2;
                                                int i23 = i2 + 3;
                                                int i24 = i2 + 4;
                                                int i25 = i2 + 5;
                                                path2.rCubicTo(fArr[i2], fArr[i2 + 1], fArr[i22], fArr[i23], fArr[i24], fArr[i25]);
                                                float f29 = fArr[i22] + f19;
                                                float f30 = fArr[i23] + f20;
                                                f19 += fArr[i24];
                                                f20 += fArr[i25];
                                                f13 = f29;
                                                f14 = f30;
                                            }
                                            pathDataNode = pathDataNode3;
                                            f2 = f19;
                                            f = f20;
                                            i3 = i5;
                                            c2 = c4;
                                        } else {
                                            fArr = fArr3;
                                            i2 = i7;
                                            int i26 = i2 + 5;
                                            float f31 = fArr[i26] + f19;
                                            int i27 = i2 + 6;
                                            float f32 = fArr[i27] + f20;
                                            float f33 = fArr[i2];
                                            float f34 = fArr[i2 + 1];
                                            float f35 = fArr[i2 + 2];
                                            if (fArr[i2 + 3] != 0.0f) {
                                                pathDataNode2 = pathDataNode3;
                                                z3 = 1;
                                            } else {
                                                pathDataNode2 = pathDataNode3;
                                                z3 = i6;
                                            }
                                            pathDataNode = pathDataNode2;
                                            float f36 = f19;
                                            c2 = c4;
                                            if (fArr[i2 + 4] != 0.0f) {
                                                z4 = 1;
                                            } else {
                                                z4 = i6;
                                            }
                                            float f37 = f20;
                                            i3 = i5;
                                            a(path, f36, f37, f31, f32, f33, f34, f35, z3, z4);
                                            f2 = f36 + fArr[i26];
                                            f = f37 + fArr[i27];
                                            f13 = f2;
                                            f14 = f;
                                        }
                                    } else {
                                        fArr = fArr3;
                                        i2 = i7;
                                        i3 = i5;
                                        pathDataNode = pathDataNode3;
                                        f2 = f19;
                                        c2 = c4;
                                        path2.lineTo(f2, fArr[i2]);
                                        f = fArr[i2];
                                    }
                                } else {
                                    fArr = fArr3;
                                    i2 = i7;
                                    i3 = i5;
                                    pathDataNode = pathDataNode3;
                                    c2 = c4;
                                    int i28 = i2 + 1;
                                    int i29 = i2 + 2;
                                    int i30 = i2 + 3;
                                    path2.quadTo(fArr[i2], fArr[i28], fArr[i29], fArr[i30]);
                                    float f38 = fArr[i2];
                                    float f39 = fArr[i28];
                                    float f40 = fArr[i29];
                                    float f41 = fArr[i30];
                                    f13 = f38;
                                    f14 = f39;
                                    f2 = f40;
                                    f = f41;
                                }
                            } else {
                                fArr = fArr3;
                                i2 = i7;
                                pathDataNode = pathDataNode3;
                                c2 = c4;
                                f = f20;
                                i3 = i5;
                                path2.lineTo(fArr[i2], f);
                                f2 = fArr[i2];
                            }
                        } else {
                            fArr = fArr3;
                            i2 = i7;
                            i3 = i5;
                            pathDataNode = pathDataNode3;
                            c2 = c4;
                            int i31 = i2 + 2;
                            int i32 = i2 + 3;
                            int i33 = i2 + 4;
                            int i34 = i2 + 5;
                            path2.cubicTo(fArr[i2], fArr[i2 + 1], fArr[i31], fArr[i32], fArr[i33], fArr[i34]);
                            float f42 = fArr[i33];
                            float f43 = fArr[i34];
                            f13 = fArr[i31];
                            f14 = fArr[i32];
                            f = f43;
                            f2 = f42;
                        }
                    } else {
                        fArr = fArr3;
                        i2 = i7;
                        pathDataNode = pathDataNode3;
                        float f44 = f19;
                        float f45 = f20;
                        i3 = i5;
                        c2 = c4;
                        int i35 = i2 + 5;
                        float f46 = fArr[i35];
                        int i36 = i2 + 6;
                        float f47 = fArr[i36];
                        float f48 = fArr[i2];
                        float f49 = fArr[i2 + 1];
                        float f50 = fArr[i2 + 2];
                        if (fArr[i2 + 3] != 0.0f) {
                            z = 1;
                        } else {
                            z = i6;
                        }
                        if (fArr[i2 + 4] != 0.0f) {
                            z2 = 1;
                        } else {
                            z2 = i6;
                        }
                        a(path, f44, f45, f46, f47, f48, f49, f50, z, z2);
                        f13 = fArr[i35];
                        f = fArr[i36];
                        f14 = f;
                        f2 = f13;
                    }
                    i7 = i2 + i;
                    path2 = path;
                    pathDataNode3 = pathDataNode;
                    c4 = c2;
                    i5 = i3;
                    f19 = f2;
                    f20 = f;
                    c3 = c4;
                    fArr3 = fArr;
                }
                fArr2[i6] = f19;
                fArr2[1] = f20;
                fArr2[2] = f13;
                fArr2[3] = f14;
                fArr2[4] = f17;
                fArr2[5] = f18;
                c3 = pathDataNode3.f685a;
                i5++;
                pathDataNodeArr2 = pathDataNodeArr;
                path2 = path;
                i4 = i6;
            }
        }

        public PathDataNode(PathDataNode pathDataNode) {
            this.f685a = pathDataNode.f685a;
            float[] fArr = pathDataNode.b;
            this.b = PathParser.b(fArr, fArr.length);
        }
    }
}
