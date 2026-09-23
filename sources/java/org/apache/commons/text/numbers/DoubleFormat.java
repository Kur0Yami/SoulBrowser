package org.apache.commons.text.numbers;

import j$.util.function.Function$CC;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.commons.text.numbers.DoubleFormat;
import org.apache.commons.text.numbers.ParsedDecimal;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF10' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:343)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes4.dex */
public final class DoubleFormat {
    public static final /* synthetic */ DoubleFormat[] f;

    /* renamed from: c, reason: collision with root package name */
    public final Function f22496c;

    /* JADX INFO: Fake field, exist only in values array */
    DoubleFormat EF10;

    /* loaded from: classes4.dex */
    public static abstract class AbstractDoubleFormat implements DoubleFunction<String>, ParsedDecimal.FormatOptions {
        public AbstractDoubleFormat(Builder builder) {
            builder.getClass();
            throw null;
        }

        public abstract String a(ParsedDecimal parsedDecimal);

        /* JADX WARN: Type inference failed for: r0v16 */
        /* JADX WARN: Type inference failed for: r0v7 */
        /* JADX WARN: Type inference failed for: r0v8, types: [int, boolean] */
        @Override // java.util.function.DoubleFunction
        public final String apply(double d) {
            ?? r0;
            ParsedDecimal parsedDecimal;
            int i;
            boolean z;
            if (!Double.isInfinite(d) && !Double.isNaN(d)) {
                if (!Double.isInfinite(d) && !Double.isNaN(d)) {
                    char[] charArray = Double.toString(d).toCharArray();
                    if (charArray[0] == '-') {
                        r0 = 1;
                    } else {
                        r0 = 0;
                    }
                    int[] iArr = new int[(charArray.length - r0) - 1];
                    int i2 = 0;
                    int i3 = 0;
                    int i4 = 0;
                    boolean z2 = false;
                    int i5 = r0;
                    while (i5 < charArray.length) {
                        char c2 = charArray[i5];
                        if (c2 == '.') {
                            z2 = true;
                            i3 = i2;
                        } else {
                            if (c2 == 'E') {
                                break;
                            }
                            if (c2 == '0' && i2 <= 0) {
                                if (z2) {
                                    i3--;
                                }
                            } else {
                                int i6 = c2 - '0';
                                int i7 = i2 + 1;
                                iArr[i2] = i6;
                                if (i6 > 0) {
                                    i4 = i7;
                                }
                                i2 = i7;
                            }
                        }
                        i5++;
                    }
                    if (i2 > 0) {
                        if (i5 < charArray.length) {
                            int i8 = i5 + 1;
                            if (charArray[i8] == '-') {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                i8 = i5 + 2;
                            }
                            i = 0;
                            while (i8 < charArray.length) {
                                i = (i * 10) + (charArray[i8] - '0');
                                i8++;
                            }
                            if (z) {
                                i = -i;
                            }
                        } else {
                            i = 0;
                        }
                        parsedDecimal = new ParsedDecimal(r0, iArr, i4, (i + i3) - i4);
                    } else {
                        parsedDecimal = new ParsedDecimal(r0, new int[]{0}, 1, 0);
                    }
                    int max = Math.max(parsedDecimal.d, 0);
                    int i9 = parsedDecimal.d;
                    if (max > i9) {
                        int i10 = parsedDecimal.f22498c;
                        int i11 = i9 + i10;
                        int[] iArr2 = parsedDecimal.b;
                        if (max < i11) {
                            int i12 = i11 - max;
                            if (i12 > 0 && i12 < i10) {
                                if (parsedDecimal.d(i12)) {
                                    int i13 = parsedDecimal.f22498c - i12;
                                    int i14 = i12 - 1;
                                    while (true) {
                                        if (i14 < 0) {
                                            break;
                                        }
                                        int i15 = iArr2[i14] + 1;
                                        if (i15 < 10) {
                                            iArr2[i14] = i15;
                                            break;
                                        }
                                        i13++;
                                        i14--;
                                    }
                                    if (i14 < 0) {
                                        int i16 = parsedDecimal.d + i13;
                                        iArr2[0] = 1;
                                        parsedDecimal.f22498c = 1;
                                        parsedDecimal.d = i16;
                                    } else {
                                        parsedDecimal.g(parsedDecimal.f22498c - i13);
                                    }
                                } else {
                                    parsedDecimal.g(i12);
                                }
                            }
                        } else if (max == i11 && parsedDecimal.d(0)) {
                            iArr2[0] = 1;
                            parsedDecimal.f22498c = 1;
                            parsedDecimal.d = max;
                        } else {
                            iArr2[0] = 0;
                            parsedDecimal.f22498c = 1;
                            parsedDecimal.d = 0;
                        }
                    }
                    return a(parsedDecimal);
                }
                throw new IllegalArgumentException("Double is not finite");
            }
            if (Double.isInfinite(d) && d <= 0.0d) {
                return "\u0000null";
            }
            return null;
        }
    }

    /* loaded from: classes4.dex */
    public static final class Builder implements Supplier<DoubleFunction<String>> {
        @Override // java.util.function.Supplier
        public final DoubleFunction<String> get() {
            throw null;
        }
    }

    /* loaded from: classes4.dex */
    public static final class EngineeringDoubleFormat extends AbstractDoubleFormat {
        @Override // org.apache.commons.text.numbers.DoubleFormat.AbstractDoubleFormat
        public final String a(ParsedDecimal parsedDecimal) {
            int i = (parsedDecimal.f22498c + parsedDecimal.d) - 1;
            int i2 = i % 3;
            if (i2 != 0) {
                if ((((i ^ 3) >> 31) | 1) <= 0) {
                    i2 += 3;
                }
            } else {
                i2 = 0;
            }
            parsedDecimal.f(i2 + 1, this);
            throw null;
        }
    }

    /* loaded from: classes4.dex */
    public static final class MixedDoubleFormat extends AbstractDoubleFormat {
        @Override // org.apache.commons.text.numbers.DoubleFormat.AbstractDoubleFormat
        public final String a(ParsedDecimal parsedDecimal) {
            int i = (parsedDecimal.f22498c + parsedDecimal.d) - 1;
            if (i <= 0 && i >= 0) {
                parsedDecimal.e(this);
                throw null;
            }
            parsedDecimal.f(1, this);
            throw null;
        }
    }

    /* loaded from: classes4.dex */
    public static final class PlainDoubleFormat extends AbstractDoubleFormat {
        @Override // org.apache.commons.text.numbers.DoubleFormat.AbstractDoubleFormat
        public final String a(ParsedDecimal parsedDecimal) {
            parsedDecimal.e(this);
            throw null;
        }
    }

    /* loaded from: classes4.dex */
    public static final class ScientificDoubleFormat extends AbstractDoubleFormat {
        @Override // org.apache.commons.text.numbers.DoubleFormat.AbstractDoubleFormat
        public final String a(ParsedDecimal parsedDecimal) {
            parsedDecimal.f(1, this);
            throw null;
        }
    }

    static {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        final int i4 = 3;
        f = new DoubleFormat[]{new DoubleFormat("PLAIN", 0, new Function() { // from class: org.apache.commons.text.numbers.a
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo17andThen(Function function) {
                int i5 = i;
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (i) {
                    case 0:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                    case 1:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                    case 2:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                    default:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                }
            }

            @Override // java.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                int i5 = i;
                return Function$CC.$default$compose(this, function);
            }
        }), new DoubleFormat("SCIENTIFIC", 1, new Function() { // from class: org.apache.commons.text.numbers.a
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo17andThen(Function function) {
                int i5 = i2;
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (i2) {
                    case 0:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                    case 1:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                    case 2:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                    default:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                }
            }

            @Override // java.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                int i5 = i2;
                return Function$CC.$default$compose(this, function);
            }
        }), new DoubleFormat("ENGINEERING", 2, new Function() { // from class: org.apache.commons.text.numbers.a
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo17andThen(Function function) {
                int i5 = i3;
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (i3) {
                    case 0:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                    case 1:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                    case 2:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                    default:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                }
            }

            @Override // java.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                int i5 = i3;
                return Function$CC.$default$compose(this, function);
            }
        }), new DoubleFormat("MIXED", 3, new Function() { // from class: org.apache.commons.text.numbers.a
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo17andThen(Function function) {
                int i5 = i4;
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (i4) {
                    case 0:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                    case 1:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                    case 2:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                    default:
                        new DoubleFormat.AbstractDoubleFormat((DoubleFormat.Builder) obj);
                        throw null;
                }
            }

            @Override // java.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                int i5 = i4;
                return Function$CC.$default$compose(this, function);
            }
        })};
    }

    public DoubleFormat(String str, int i, Function function) {
        this.f22496c = function;
    }

    public static DoubleFormat valueOf(String str) {
        return (DoubleFormat) Enum.valueOf(DoubleFormat.class, str);
    }

    public static DoubleFormat[] values() {
        return (DoubleFormat[]) f.clone();
    }
}
