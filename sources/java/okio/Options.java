package okio;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0005¨\u0006\u0006"}, d2 = {"Lokio/Options;", "Lkotlin/collections/AbstractList;", "Lokio/ByteString;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Companion", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class Options extends AbstractList<ByteString> implements RandomAccess {
    public static final /* synthetic */ int f = 0;

    /* renamed from: c, reason: collision with root package name */
    public final ByteString[] f22211c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/Options$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Options.kt\nokio/Options$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,238:1\n1#2:239\n13870#3,3:240\n73#4:243\n73#4:244\n*S KotlinDebug\n*F\n+ 1 Options.kt\nokio/Options$Companion\n*L\n48#1:240,3\n153#1:243\n210#1:244\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class Companion {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v4, types: [okio.Buffer, okio.Source, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v9, types: [okio.Buffer, okio.Source, java.lang.Object] */
        public static void a(long j, Buffer buffer, int i, List list, int i2, int i3, ArrayList arrayList) {
            int i4;
            int i5;
            ArrayList arrayList2;
            long j2;
            int i6;
            int i7 = i;
            List list2 = list;
            ArrayList arrayList3 = arrayList;
            if (i2 < i3) {
                for (int i8 = i2; i8 < i3; i8++) {
                    if (((ByteString) list2.get(i8)).d() < i7) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                }
                ByteString byteString = (ByteString) list.get(i2);
                ByteString byteString2 = (ByteString) list2.get(i3 - 1);
                if (i7 == byteString.d()) {
                    int intValue = ((Number) arrayList3.get(i2)).intValue();
                    int i9 = i2 + 1;
                    ByteString byteString3 = (ByteString) list2.get(i9);
                    i4 = i9;
                    i5 = intValue;
                    byteString = byteString3;
                } else {
                    i4 = i2;
                    i5 = -1;
                }
                if (byteString.i(i7) != byteString2.i(i7)) {
                    int i10 = 1;
                    for (int i11 = i4 + 1; i11 < i3; i11++) {
                        if (((ByteString) list2.get(i11 - 1)).i(i7) != ((ByteString) list2.get(i11)).i(i7)) {
                            i10++;
                        }
                    }
                    long j3 = 4;
                    long j4 = (buffer.f / j3) + j + 2 + (i10 * 2);
                    buffer.F(i10);
                    buffer.F(i5);
                    for (int i12 = i4; i12 < i3; i12++) {
                        byte i13 = ((ByteString) list2.get(i12)).i(i7);
                        if (i12 == i4 || i13 != ((ByteString) list2.get(i12 - 1)).i(i7)) {
                            buffer.F(i13 & UByte.MAX_VALUE);
                        }
                    }
                    ?? obj = new Object();
                    int i14 = i4;
                    while (i14 < i3) {
                        byte i15 = ((ByteString) list2.get(i14)).i(i7);
                        int i16 = i14 + 1;
                        int i17 = i16;
                        while (true) {
                            if (i17 < i3) {
                                if (i15 != ((ByteString) list2.get(i17)).i(i7)) {
                                    break;
                                } else {
                                    i17++;
                                }
                            } else {
                                i17 = i3;
                                break;
                            }
                        }
                        if (i16 == i17 && i7 + 1 == ((ByteString) list2.get(i14)).d()) {
                            buffer.F(((Number) arrayList3.get(i14)).intValue());
                            arrayList2 = arrayList3;
                            j2 = j4;
                            i6 = i17;
                        } else {
                            buffer.F(((int) ((obj.f / j3) + j4)) * (-1));
                            arrayList2 = arrayList3;
                            j2 = j4;
                            i6 = i17;
                            a(j2, obj, i7 + 1, list, i14, i6, arrayList2);
                            list2 = list;
                        }
                        j4 = j2;
                        i14 = i6;
                        arrayList3 = arrayList2;
                    }
                    buffer.u(obj);
                    return;
                }
                int min = Math.min(byteString.d(), byteString2.d());
                int i18 = 0;
                for (int i19 = i7; i19 < min && byteString.i(i19) == byteString2.i(i19); i19++) {
                    i18++;
                }
                long j5 = 4;
                long j6 = (buffer.f / j5) + j + 2 + i18 + 1;
                buffer.F(-i18);
                buffer.F(i5);
                int i20 = i7 + i18;
                while (i7 < i20) {
                    buffer.F(byteString.i(i7) & UByte.MAX_VALUE);
                    i7++;
                }
                if (i4 + 1 == i3) {
                    if (i20 == ((ByteString) list2.get(i4)).d()) {
                        buffer.F(((Number) arrayList3.get(i4)).intValue());
                        return;
                    }
                    throw new IllegalStateException("Check failed.");
                }
                ?? obj2 = new Object();
                buffer.F(((int) ((obj2.f / j5) + j6)) * (-1));
                a(j6, obj2, i20, list2, i4, i3, arrayList3);
                buffer.u(obj2);
                return;
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x00cd, code lost:
        
            continue;
         */
        /* JADX WARN: Type inference failed for: r5v0, types: [okio.Buffer, java.lang.Object] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static okio.Options b(okio.ByteString... r11) {
            /*
                Method dump skipped, instructions count: 268
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Options.Companion.b(okio.ByteString[]):okio.Options");
        }
    }

    public Options(ByteString[] byteStringArr, int[] iArr) {
        this.f22211c = byteStringArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof ByteString)) {
            return false;
        }
        return super.contains((ByteString) obj);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i) {
        return this.f22211c[i];
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    /* renamed from: getSize */
    public final int get_size() {
        return this.f22211c.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof ByteString)) {
            return -1;
        }
        return super.indexOf((ByteString) obj);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof ByteString)) {
            return -1;
        }
        return super.lastIndexOf((ByteString) obj);
    }
}
