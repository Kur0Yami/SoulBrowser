package androidx.emoji2.text.flatbuffer;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.ConnectionResult;
import kotlin.UByte;
import kotlin.UShort;
import kotlin.text.Typography;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public class FlexBuffers {

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayReadWriteBuf f1033a;

    /* loaded from: classes.dex */
    public static class Blob extends Sized {
        public static final Blob e = new Sized(FlexBuffers.f1033a, 1, 1);

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public final StringBuilder a(StringBuilder sb) {
            sb.append(Typography.quote);
            sb.append(this.f1035a.a(this.b, this.d));
            sb.append(Typography.quote);
            return sb;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public final String toString() {
            return this.f1035a.a(this.b, this.d);
        }
    }

    /* loaded from: classes.dex */
    public static class FlexBufferException extends RuntimeException {
    }

    /* loaded from: classes.dex */
    public static class Key extends Object {
        public static final Key d = new Object(FlexBuffers.f1033a, 0, 0);

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public final StringBuilder a(StringBuilder sb) {
            sb.append(toString());
            return sb;
        }

        public final boolean equals(java.lang.Object obj) {
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            if (key.b != this.b || key.f1036c != this.f1036c) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return this.b ^ this.f1036c;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public final String toString() {
            int i = this.b;
            int i2 = i;
            while (true) {
                ReadBuf readBuf = this.f1035a;
                if (readBuf.get(i2) == 0) {
                    return readBuf.a(i, i2 - i);
                }
                i2++;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class KeyVector {

        /* renamed from: a, reason: collision with root package name */
        public final TypedVector f1034a;

        public KeyVector(TypedVector typedVector) {
            this.f1034a = typedVector;
        }

        public final String toString() {
            TypedVector typedVector = this.f1034a;
            int i = typedVector.d;
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (int i2 = 0; i2 < i; i2++) {
                typedVector.b(i2).d(sb);
                if (i2 != i - 1) {
                    sb.append(", ");
                }
            }
            sb.append("]");
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public static class Map extends Vector {
        public static final Map f = new Sized(FlexBuffers.f1033a, 1, 1);

        /* JADX WARN: Type inference failed for: r1v4, types: [androidx.emoji2.text.flatbuffer.FlexBuffers$Vector, androidx.emoji2.text.flatbuffer.FlexBuffers$Sized] */
        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector, androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public final StringBuilder a(StringBuilder sb) {
            Object object;
            sb.append("{ ");
            int i = this.f1036c;
            int i2 = this.b;
            int i3 = i2 - (i * 3);
            ReadBuf readBuf = this.f1035a;
            KeyVector keyVector = new KeyVector(new TypedVector(readBuf, FlexBuffers.a(readBuf, i3, i), (int) FlexBuffers.c(readBuf, i3 + i, i), 4));
            ?? sized = new Sized(readBuf, i2, i);
            int i4 = 0;
            while (true) {
                int i5 = this.d;
                if (i4 < i5) {
                    sb.append(Typography.quote);
                    TypedVector typedVector = keyVector.f1034a;
                    int i6 = typedVector.d;
                    int i7 = typedVector.f1036c;
                    if (i4 >= i6) {
                        object = Key.d;
                    } else {
                        int i8 = (i4 * i7) + typedVector.b;
                        ReadBuf readBuf2 = typedVector.f1035a;
                        object = new Object(readBuf2, FlexBuffers.a(readBuf2, i8, i7), 1);
                    }
                    sb.append(object.toString());
                    sb.append("\" : ");
                    sb.append(sized.b(i4).toString());
                    if (i4 != i5 - 1) {
                        sb.append(", ");
                    }
                    i4++;
                } else {
                    sb.append(" }");
                    return sb;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Object {

        /* renamed from: a, reason: collision with root package name */
        public final ReadBuf f1035a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final int f1036c;

        public Object(ReadBuf readBuf, int i, int i2) {
            this.f1035a = readBuf;
            this.b = i;
            this.f1036c = i2;
        }

        public abstract StringBuilder a(StringBuilder sb);

        public String toString() {
            return a(new StringBuilder(Uuid.SIZE_BITS)).toString();
        }
    }

    /* loaded from: classes.dex */
    public static class Reference {
        public static final Reference f = new Reference(FlexBuffers.f1033a, 0, 1, 0);

        /* renamed from: a, reason: collision with root package name */
        public final ReadBuf f1037a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final int f1038c;
        public final int d;
        public final int e;

        public Reference(ReadBuf readBuf, int i, int i2, int i3) {
            this(readBuf, i, i2, 1 << (i3 & 3), i3 >> 2);
        }

        public final String a() {
            int i = this.d;
            int i2 = this.b;
            ReadBuf readBuf = this.f1037a;
            int i3 = this.e;
            if (i3 == 5) {
                int a2 = FlexBuffers.a(readBuf, i2, this.f1038c);
                return readBuf.a(a2, (int) FlexBuffers.d(readBuf, a2 - i, i));
            }
            if (i3 == 4) {
                int a3 = FlexBuffers.a(readBuf, i2, i);
                int i4 = a3;
                while (readBuf.get(i4) != 0) {
                    i4++;
                }
                return readBuf.a(a3, i4 - a3);
            }
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }

        public final long b() {
            int i = this.b;
            ReadBuf readBuf = this.f1037a;
            int i2 = this.f1038c;
            int i3 = this.e;
            if (i3 == 2) {
                return FlexBuffers.d(readBuf, i, i2);
            }
            if (i3 != 1) {
                if (i3 != 3) {
                    if (i3 != 10) {
                        if (i3 != 26) {
                            if (i3 != 5) {
                                int i4 = this.d;
                                if (i3 != 6) {
                                    if (i3 != 7) {
                                        if (i3 != 8) {
                                            return 0L;
                                        }
                                        return (long) FlexBuffers.b(readBuf, FlexBuffers.a(readBuf, i, i2), i2);
                                    }
                                    return FlexBuffers.d(readBuf, FlexBuffers.a(readBuf, i, i2), i4);
                                }
                                return FlexBuffers.c(readBuf, FlexBuffers.a(readBuf, i, i2), i4);
                            }
                            return Long.parseLong(a());
                        }
                        return (int) FlexBuffers.c(readBuf, i, i2);
                    }
                    return c().d;
                }
                return (long) FlexBuffers.b(readBuf, i, i2);
            }
            return FlexBuffers.c(readBuf, i, i2);
        }

        /* JADX WARN: Type inference failed for: r4v1, types: [androidx.emoji2.text.flatbuffer.FlexBuffers$Vector, androidx.emoji2.text.flatbuffer.FlexBuffers$Sized] */
        public final Vector c() {
            int i = this.d;
            int i2 = this.f1038c;
            int i3 = this.b;
            ReadBuf readBuf = this.f1037a;
            int i4 = this.e;
            if (i4 != 10 && i4 != 9) {
                if (i4 == 15) {
                    return new TypedVector(readBuf, FlexBuffers.a(readBuf, i3, i2), i, 4);
                }
                if ((i4 >= 11 && i4 <= 15) || i4 == 36) {
                    return new TypedVector(readBuf, FlexBuffers.a(readBuf, i3, i2), i, i4 - 10);
                }
                return Vector.e;
            }
            return new Sized(readBuf, FlexBuffers.a(readBuf, i3, i2), i);
        }

        public final StringBuilder d(StringBuilder sb) {
            long d;
            double b;
            int i;
            long c2;
            int i2;
            double d2;
            long d3;
            Object object;
            Object object2;
            Object sized;
            int i3 = this.e;
            if (i3 != 36) {
                boolean z = true;
                int i4 = this.d;
                int i5 = this.f1038c;
                int i6 = this.b;
                ReadBuf readBuf = this.f1037a;
                switch (i3) {
                    case 0:
                        sb.append("null");
                        return sb;
                    case 1:
                    case 6:
                        if (i3 == 1) {
                            d = FlexBuffers.c(readBuf, i6, i5);
                        } else if (i3 != 2) {
                            if (i3 != 3) {
                                if (i3 != 5) {
                                    if (i3 != 6) {
                                        if (i3 != 7) {
                                            if (i3 != 8) {
                                                if (i3 != 10) {
                                                    if (i3 == 26) {
                                                        i = (int) FlexBuffers.c(readBuf, i6, i5);
                                                    }
                                                    d = 0;
                                                } else {
                                                    i = c().d;
                                                }
                                                d = i;
                                            } else {
                                                b = FlexBuffers.b(readBuf, FlexBuffers.a(readBuf, i6, i5), i4);
                                            }
                                        } else {
                                            d = FlexBuffers.d(readBuf, FlexBuffers.a(readBuf, i6, i5), i5);
                                        }
                                    } else {
                                        d = FlexBuffers.c(readBuf, FlexBuffers.a(readBuf, i6, i5), i4);
                                    }
                                } else {
                                    try {
                                        d = Long.parseLong(a());
                                    } catch (NumberFormatException unused) {
                                    }
                                }
                            } else {
                                b = FlexBuffers.b(readBuf, i6, i5);
                            }
                            d = (long) b;
                        } else {
                            d = FlexBuffers.d(readBuf, i6, i5);
                        }
                        sb.append(d);
                        return sb;
                    case 2:
                    case 7:
                        sb.append(b());
                        return sb;
                    case 3:
                    case 8:
                        if (i3 == 3) {
                            d2 = FlexBuffers.b(readBuf, i6, i5);
                        } else {
                            if (i3 != 1) {
                                if (i3 != 2) {
                                    if (i3 != 5) {
                                        if (i3 != 6) {
                                            if (i3 != 7) {
                                                if (i3 != 8) {
                                                    if (i3 != 10) {
                                                        if (i3 != 26) {
                                                            d2 = 0.0d;
                                                        }
                                                    } else {
                                                        i2 = c().d;
                                                        d2 = i2;
                                                    }
                                                } else {
                                                    d2 = FlexBuffers.b(readBuf, FlexBuffers.a(readBuf, i6, i5), i4);
                                                }
                                            } else {
                                                d3 = FlexBuffers.d(readBuf, FlexBuffers.a(readBuf, i6, i5), i4);
                                                d2 = d3;
                                            }
                                        } else {
                                            c2 = FlexBuffers.c(readBuf, FlexBuffers.a(readBuf, i6, i5), i4);
                                        }
                                    } else {
                                        d2 = Double.parseDouble(a());
                                    }
                                }
                                d3 = FlexBuffers.d(readBuf, i6, i5);
                                d2 = d3;
                            } else {
                                c2 = FlexBuffers.c(readBuf, i6, i5);
                            }
                            i2 = (int) c2;
                            d2 = i2;
                        }
                        sb.append(d2);
                        return sb;
                    case 4:
                        if (i3 == 4) {
                            object = new Object(readBuf, FlexBuffers.a(readBuf, i6, i5), i4);
                        } else {
                            object = Key.d;
                        }
                        sb.append(Typography.quote);
                        object.a(sb);
                        sb.append(Typography.quote);
                        return sb;
                    case 5:
                        sb.append(Typography.quote);
                        sb.append(a());
                        sb.append(Typography.quote);
                        return sb;
                    case 9:
                        if (i3 == 9) {
                            object2 = new Sized(readBuf, FlexBuffers.a(readBuf, i6, i5), i4);
                        } else {
                            object2 = Map.f;
                        }
                        object2.a(sb);
                        return sb;
                    case 10:
                        c().a(sb);
                        return sb;
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        break;
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case ConnectionResult.API_DISABLED /* 23 */:
                    case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                        throw new RuntimeException(android.support.v4.media.a.e(i3, "not_implemented:"));
                    case 25:
                        if (i3 == 25 || i3 == 5) {
                            sized = new Sized(readBuf, FlexBuffers.a(readBuf, i6, i5), i4);
                        } else {
                            sized = Blob.e;
                        }
                        sized.a(sb);
                        return sb;
                    case 26:
                        if (i3 != 26 ? b() == 0 : readBuf.get(i6) == 0) {
                            z = false;
                        }
                        sb.append(z);
                        return sb;
                    default:
                        return sb;
                }
            }
            sb.append(c());
            return sb;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(Uuid.SIZE_BITS);
            d(sb);
            return sb.toString();
        }

        public Reference(ReadBuf readBuf, int i, int i2, int i3, int i4) {
            this.f1037a = readBuf;
            this.b = i;
            this.f1038c = i2;
            this.d = i3;
            this.e = i4;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Sized extends Object {
        public final int d;

        public Sized(ReadBuf readBuf, int i, int i2) {
            super(readBuf, i, i2);
            this.d = (int) FlexBuffers.c(readBuf, i - i2, i2);
        }
    }

    /* loaded from: classes.dex */
    public static class TypedVector extends Vector {
        public final int f;

        static {
            new TypedVector(FlexBuffers.f1033a, 1, 1, 1);
        }

        public TypedVector(ReadBuf readBuf, int i, int i2, int i3) {
            super(readBuf, i, i2);
            this.f = i3;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector
        public final Reference b(int i) {
            if (i >= this.d) {
                return Reference.f;
            }
            return new Reference(this.f1035a, (i * this.f1036c) + this.b, this.f1036c, 1, this.f);
        }
    }

    /* loaded from: classes.dex */
    public static class Unsigned {
    }

    /* loaded from: classes.dex */
    public static class Vector extends Sized {
        public static final Vector e = new Sized(FlexBuffers.f1033a, 1, 1);

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder a(StringBuilder sb) {
            sb.append("[ ");
            int i = 0;
            while (true) {
                int i2 = this.d;
                if (i < i2) {
                    b(i).d(sb);
                    if (i != i2 - 1) {
                        sb.append(", ");
                    }
                    i++;
                } else {
                    sb.append(" ]");
                    return sb;
                }
            }
        }

        public Reference b(int i) {
            long j = this.d;
            long j2 = i;
            if (j2 >= j) {
                return Reference.f;
            }
            int i2 = this.b;
            int i3 = this.f1036c;
            long j3 = j * i3;
            ReadBuf readBuf = this.f1035a;
            return new Reference(readBuf, (i * i3) + i2, i3, readBuf.get((int) (j3 + i2 + j2)) & UByte.MAX_VALUE);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.emoji2.text.flatbuffer.ArrayReadWriteBuf, java.lang.Object] */
    static {
        ?? obj = new java.lang.Object();
        obj.f1032a = new byte[]{0};
        f1033a = obj;
    }

    public static int a(ReadBuf readBuf, int i, int i2) {
        return (int) (i - d(readBuf, i, i2));
    }

    public static double b(ReadBuf readBuf, int i, int i2) {
        if (i2 != 4) {
            if (i2 != 8) {
                return -1.0d;
            }
            return readBuf.getDouble(i);
        }
        return readBuf.getFloat(i);
    }

    public static long c(ReadBuf readBuf, int i, int i2) {
        int i3;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 4) {
                    if (i2 != 8) {
                        return -1L;
                    }
                    return readBuf.getLong(i);
                }
                i3 = readBuf.getInt(i);
            } else {
                i3 = readBuf.getShort(i);
            }
        } else {
            i3 = readBuf.get(i);
        }
        return i3;
    }

    public static long d(ReadBuf readBuf, int i, int i2) {
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 4) {
                    if (i2 != 8) {
                        return -1L;
                    }
                    return readBuf.getLong(i);
                }
                return readBuf.getInt(i) & 4294967295L;
            }
            return readBuf.getShort(i) & UShort.MAX_VALUE;
        }
        return readBuf.get(i) & UByte.MAX_VALUE;
    }
}
