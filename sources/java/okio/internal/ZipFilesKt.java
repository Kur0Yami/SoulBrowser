package okio.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.UShort;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okio.BufferedSource;
import okio.Path;
import okio.RealBufferedSource;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okio"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nZipFiles.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n+ 2 Okio.kt\nokio/Okio__OkioKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,503:1\n58#2,4:504\n58#2,4:508\n58#2,22:512\n66#2,10:534\n62#2,3:544\n77#2,3:547\n58#2,22:550\n66#2,10:572\n62#2,3:582\n77#2,3:585\n1056#3:588\n*S KotlinDebug\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n*L\n66#1:504,4\n101#1:508,4\n109#1:512,22\n101#1:534,10\n101#1:544,3\n101#1:547,3\n125#1:550,22\n66#1:572,10\n66#1:582,3\n66#1:585,3\n155#1:588\n*E\n"})
/* loaded from: classes4.dex */
public final class ZipFilesKt {
    /* JADX WARN: Type inference failed for: r1v3, types: [okio.internal.ZipFilesKt$buildIndex$$inlined$sortedBy$1, java.lang.Object] */
    public static final Map a(ArrayList arrayList) {
        List<ZipEntry> sortedWith;
        String str = Path.f;
        Path a2 = Path.Companion.a("/");
        Map mutableMapOf = MapsKt.mutableMapOf(TuplesKt.to(a2, new ZipEntry(a2, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532)));
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Object());
        for (ZipEntry zipEntry : sortedWith) {
            if (((ZipEntry) mutableMapOf.put(zipEntry.f22232a, zipEntry)) == null) {
                while (true) {
                    Path path = zipEntry.f22232a;
                    Path b = path.b();
                    if (b != null) {
                        ZipEntry zipEntry2 = (ZipEntry) mutableMapOf.get(b);
                        if (zipEntry2 != null) {
                            zipEntry2.q.add(path);
                            break;
                        }
                        ZipEntry zipEntry3 = new ZipEntry(b, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532);
                        mutableMapOf.put(b, zipEntry3);
                        zipEntry3.q.add(path);
                        zipEntry = zipEntry3;
                    }
                }
            }
        }
        return mutableMapOf;
    }

    public static final String b(int i) {
        StringBuilder sb = new StringBuilder("0x");
        String num = Integer.toString(i, CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(num, "toString(...)");
        sb.append(num);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ZipEntry c(final RealBufferedSource realBufferedSource) {
        boolean contains$default;
        final long j;
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        int l0 = realBufferedSource.l0();
        if (l0 == 33639248) {
            realBufferedSource.skip(4L);
            short t0 = realBufferedSource.t0();
            int i = t0 & UShort.MAX_VALUE;
            if ((t0 & 1) == 0) {
                int t02 = realBufferedSource.t0() & UShort.MAX_VALUE;
                int t03 = realBufferedSource.t0() & UShort.MAX_VALUE;
                int t04 = realBufferedSource.t0() & UShort.MAX_VALUE;
                long l02 = realBufferedSource.l0() & 4294967295L;
                final Ref.LongRef longRef = new Ref.LongRef();
                longRef.element = realBufferedSource.l0() & 4294967295L;
                final Ref.LongRef longRef2 = new Ref.LongRef();
                longRef2.element = realBufferedSource.l0() & 4294967295L;
                int t05 = realBufferedSource.t0() & UShort.MAX_VALUE;
                int t06 = realBufferedSource.t0() & UShort.MAX_VALUE;
                int t07 = 65535 & realBufferedSource.t0();
                realBufferedSource.skip(8L);
                final Ref.LongRef longRef3 = new Ref.LongRef();
                longRef3.element = realBufferedSource.l0() & 4294967295L;
                String d = realBufferedSource.d(t05);
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) d, (char) 0, false, 2, (Object) null);
                if (!contains$default) {
                    if (longRef2.element == 4294967295L) {
                        j = 8;
                    } else {
                        j = 0;
                    }
                    if (longRef.element == 4294967295L) {
                        j += 8;
                    }
                    if (longRef3.element == 4294967295L) {
                        j += 8;
                    }
                    final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                    final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
                    final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                    d(realBufferedSource, t06, new Function2() { // from class: okio.internal.d
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            long j2;
                            int intValue = ((Integer) obj).intValue();
                            long longValue = ((Long) obj2).longValue();
                            RealBufferedSource realBufferedSource2 = realBufferedSource;
                            if (intValue != 1) {
                                if (intValue == 10) {
                                    if (longValue >= 4) {
                                        realBufferedSource2.skip(4L);
                                        ZipFilesKt.d(realBufferedSource2, (int) (longValue - 4), new c(objectRef, realBufferedSource2, objectRef2, objectRef3));
                                    } else {
                                        throw new IOException("bad zip: NTFS extra too short");
                                    }
                                }
                            } else {
                                Ref.BooleanRef booleanRef2 = Ref.BooleanRef.this;
                                if (!booleanRef2.element) {
                                    booleanRef2.element = true;
                                    if (longValue >= j) {
                                        Ref.LongRef longRef4 = longRef2;
                                        long j3 = longRef4.element;
                                        if (j3 == 4294967295L) {
                                            j3 = realBufferedSource2.b();
                                        }
                                        longRef4.element = j3;
                                        Ref.LongRef longRef5 = longRef;
                                        long j4 = 0;
                                        if (longRef5.element == 4294967295L) {
                                            j2 = realBufferedSource2.b();
                                        } else {
                                            j2 = 0;
                                        }
                                        longRef5.element = j2;
                                        Ref.LongRef longRef6 = longRef3;
                                        if (longRef6.element == 4294967295L) {
                                            j4 = realBufferedSource2.b();
                                        }
                                        longRef6.element = j4;
                                    } else {
                                        throw new IOException("bad zip: zip64 extra too short");
                                    }
                                } else {
                                    throw new IOException("bad zip: zip64 extra repeated");
                                }
                            }
                            return Unit.INSTANCE;
                        }
                    });
                    if (j > 0 && !booleanRef.element) {
                        throw new IOException("bad zip: zip64 extra required but absent");
                    }
                    String d2 = realBufferedSource.d(t07);
                    String str = Path.f;
                    Path c2 = Path.Companion.a("/").c(d);
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(d, "/", false, 2, null);
                    return new ZipEntry(c2, endsWith$default, d2, l02, longRef.element, longRef2.element, t02, longRef3.element, t04, t03, (Long) objectRef.element, (Long) objectRef2.element, (Long) objectRef3.element, 57344);
                }
                throw new IOException("bad zip: filename contains 0x00");
            }
            throw new IOException("unsupported zip: general purpose bit flag=" + b(i));
        }
        throw new IOException("bad zip: expected " + b(33639248) + " but was " + b(l0));
    }

    public static final void d(BufferedSource bufferedSource, int i, Function2 function2) {
        long j = i;
        while (j != 0) {
            if (j >= 4) {
                int t0 = bufferedSource.t0() & UShort.MAX_VALUE;
                long t02 = bufferedSource.t0() & 65535;
                long j2 = j - 4;
                if (j2 >= t02) {
                    bufferedSource.D0(t02);
                    long j3 = bufferedSource.getF().f;
                    function2.invoke(Integer.valueOf(t0), Long.valueOf(t02));
                    long j4 = (bufferedSource.getF().f + t02) - j3;
                    if (j4 >= 0) {
                        if (j4 > 0) {
                            bufferedSource.getF().skip(j4);
                        }
                        j = j2 - t02;
                    } else {
                        throw new IOException(android.support.v4.media.a.e(t0, "unsupported zip: too many bytes processed for "));
                    }
                } else {
                    throw new IOException("bad zip: truncated value in extra field");
                }
            } else {
                throw new IOException("bad zip: truncated header in extra field");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ZipEntry e(RealBufferedSource realBufferedSource, ZipEntry zipEntry) {
        int l0 = realBufferedSource.l0();
        if (l0 == 67324752) {
            realBufferedSource.skip(2L);
            short t0 = realBufferedSource.t0();
            int i = t0 & UShort.MAX_VALUE;
            if ((t0 & 1) == 0) {
                realBufferedSource.skip(18L);
                int t02 = realBufferedSource.t0() & UShort.MAX_VALUE;
                realBufferedSource.skip(realBufferedSource.t0() & 65535);
                if (zipEntry == null) {
                    realBufferedSource.skip(t02);
                    return null;
                }
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
                d(realBufferedSource, t02, new c(realBufferedSource, objectRef, objectRef2, objectRef3));
                return new ZipEntry(zipEntry.f22232a, zipEntry.b, zipEntry.f22233c, zipEntry.d, zipEntry.e, zipEntry.f, zipEntry.g, zipEntry.h, zipEntry.i, zipEntry.j, zipEntry.k, zipEntry.l, zipEntry.m, (Integer) objectRef.element, (Integer) objectRef2.element, (Integer) objectRef3.element);
            }
            throw new IOException("unsupported zip: general purpose bit flag=" + b(i));
        }
        throw new IOException("bad zip: expected " + b(67324752) + " but was " + b(l0));
    }
}
