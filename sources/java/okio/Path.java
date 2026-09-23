package okio;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.File;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokio/Path;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\nokio/Path\n+ 2 Path.kt\nokio/internal/-Path\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,132:1\n39#2,3:133\n47#2,28:136\n53#2,22:168\n106#2:190\n111#2:191\n116#2,6:192\n133#2,5:198\n143#2:203\n148#2,25:204\n188#2:229\n193#2,11:230\n198#2,6:241\n193#2,11:247\n198#2,6:258\n222#2,41:264\n267#2:305\n281#2:306\n286#2:307\n291#2:308\n296#2:309\n1563#3:164\n1634#3,3:165\n*S KotlinDebug\n*F\n+ 1 Path.kt\nokio/Path\n*L\n44#1:133,3\n47#1:136,28\n50#1:168,22\n53#1:190\n56#1:191\n60#1:192,6\n64#1:198,5\n68#1:203\n72#1:204,25\n75#1:229\n78#1:230,11\n81#1:241,6\n87#1:247,11\n90#1:258,6\n95#1:264,41\n97#1:305\n104#1:306\n106#1:307\n108#1:308\n110#1:309\n47#1:164\n47#1:165,3\n*E\n"})
/* loaded from: classes4.dex */
public final class Path implements Comparable<Path> {
    public static final String f;

    /* renamed from: c, reason: collision with root package name */
    public final ByteString f22212c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087D¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokio/Path$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "DIRECTORY_SEPARATOR", "Ljava/lang/String;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        /* JADX WARN: Type inference failed for: r0v1, types: [okio.Buffer, java.lang.Object] */
        public static Path a(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            ByteString byteString = okio.internal.Path.f22226a;
            Intrinsics.checkNotNullParameter(str, "<this>");
            ?? obj = new Object();
            obj.S(str);
            return okio.internal.Path.d(obj, false);
        }
    }

    static {
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        f = separator;
    }

    public Path(ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.f22212c = bytes;
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        int a2 = okio.internal.Path.a(this);
        ByteString byteString = this.f22212c;
        if (a2 == -1) {
            a2 = 0;
        } else if (a2 < byteString.d() && byteString.i(a2) == 92) {
            a2++;
        }
        int d = byteString.d();
        int i = a2;
        while (a2 < d) {
            if (byteString.i(a2) == 47 || byteString.i(a2) == 92) {
                arrayList.add(byteString.p(i, a2));
                i = a2 + 1;
            }
            a2++;
        }
        if (i < byteString.d()) {
            arrayList.add(byteString.p(i, byteString.d()));
        }
        return arrayList;
    }

    public final Path b() {
        ByteString byteString = okio.internal.Path.d;
        ByteString byteString2 = this.f22212c;
        if (!Intrinsics.areEqual(byteString2, byteString)) {
            ByteString byteString3 = okio.internal.Path.f22226a;
            if (!Intrinsics.areEqual(byteString2, byteString3)) {
                ByteString prefix = okio.internal.Path.b;
                if (!Intrinsics.areEqual(byteString2, prefix)) {
                    ByteString suffix = okio.internal.Path.e;
                    byteString2.getClass();
                    Intrinsics.checkNotNullParameter(suffix, "suffix");
                    int d = byteString2.d();
                    byte[] bArr = suffix.f22198c;
                    if (!byteString2.l(d - bArr.length, suffix, bArr.length) || (byteString2.d() != 2 && !byteString2.l(byteString2.d() - 3, byteString3, 1) && !byteString2.l(byteString2.d() - 3, prefix, 1))) {
                        int k = ByteString.k(byteString2, byteString3);
                        if (k == -1) {
                            k = ByteString.k(byteString2, prefix);
                        }
                        if (k == 2 && d() != null) {
                            if (byteString2.d() != 3) {
                                return new Path(ByteString.q(byteString2, 0, 3, 1));
                            }
                            return null;
                        }
                        if (k == 1) {
                            Intrinsics.checkNotNullParameter(prefix, "prefix");
                            if (byteString2.l(0, prefix, prefix.d())) {
                                return null;
                            }
                        }
                        if (k == -1 && d() != null) {
                            if (byteString2.d() != 2) {
                                return new Path(ByteString.q(byteString2, 0, 2, 1));
                            }
                            return null;
                        }
                        if (k == -1) {
                            return new Path(byteString);
                        }
                        if (k == 0) {
                            return new Path(ByteString.q(byteString2, 0, 1, 1));
                        }
                        return new Path(ByteString.q(byteString2, 0, k, 1));
                    }
                    return null;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [okio.Buffer, java.lang.Object] */
    public final Path c(String child) {
        Intrinsics.checkNotNullParameter(child, "child");
        ?? obj = new Object();
        obj.S(child);
        return okio.internal.Path.b(this, okio.internal.Path.d(obj, false), false);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Path path) {
        Path other = path;
        Intrinsics.checkNotNullParameter(other, "other");
        return this.f22212c.compareTo(other.f22212c);
    }

    public final Character d() {
        ByteString byteString = okio.internal.Path.f22226a;
        ByteString byteString2 = this.f22212c;
        if (ByteString.g(byteString2, byteString) == -1 && byteString2.d() >= 2 && byteString2.i(1) == 58) {
            char i = (char) byteString2.i(0);
            if (('a' <= i && i < '{') || ('A' <= i && i < '[')) {
                return Character.valueOf(i);
            }
            return null;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof Path) && Intrinsics.areEqual(((Path) obj).f22212c, this.f22212c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f22212c.hashCode();
    }

    public final File toFile() {
        return new File(this.f22212c.s());
    }

    public final String toString() {
        return this.f22212c.s();
    }
}
