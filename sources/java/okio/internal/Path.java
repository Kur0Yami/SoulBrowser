package okio.internal;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.ByteString;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okio"}, k = 2, mv = {2, 2, 0}, xi = 48)
@JvmName(name = "-Path")
@SourceDebugExtension({"SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\nokio/internal/-Path\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,405:1\n53#1,22:406\n203#1:432\n203#1:433\n1563#2:428\n1634#2,3:429\n*S KotlinDebug\n*F\n+ 1 Path.kt\nokio/internal/-Path\n*L\n47#1:406,22\n193#1:432\n198#1:433\n47#1:428\n47#1:429,3\n*E\n"})
/* renamed from: okio.internal.-Path, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Path {

    /* renamed from: a, reason: collision with root package name */
    public static final ByteString f22226a;
    public static final ByteString b;

    /* renamed from: c, reason: collision with root package name */
    public static final ByteString f22227c;
    public static final ByteString d;
    public static final ByteString e;

    static {
        ByteString byteString = ByteString.h;
        f22226a = ByteString.Companion.b("/");
        b = ByteString.Companion.b("\\");
        f22227c = ByteString.Companion.b("/\\");
        d = ByteString.Companion.b(".");
        e = ByteString.Companion.b("..");
    }

    public static final int a(okio.Path path) {
        ByteString byteString = path.f22212c;
        if (byteString.d() != 0) {
            if (byteString.i(0) != 47) {
                if (byteString.i(0) == 92) {
                    if (byteString.d() > 2 && byteString.i(1) == 92) {
                        ByteString other = b;
                        Intrinsics.checkNotNullParameter(other, "other");
                        int f = byteString.f(other.getF22198c(), 2);
                        if (f == -1) {
                            return byteString.d();
                        }
                        return f;
                    }
                } else if (byteString.d() > 2 && byteString.i(1) == 58 && byteString.i(2) == 92) {
                    char i = (char) byteString.i(0);
                    if ('a' > i || i >= '{') {
                        if ('A' <= i && i < '[') {
                            return 3;
                        }
                    } else {
                        return 3;
                    }
                }
            }
            return 1;
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [okio.Buffer, java.lang.Object] */
    public static final okio.Path b(okio.Path path, okio.Path child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        child.getClass();
        if (a(child) != -1 || child.d() != null) {
            return child;
        }
        ByteString c2 = c(path);
        if (c2 == null && (c2 = c(child)) == null) {
            c2 = f(okio.Path.f);
        }
        ?? obj = new Object();
        obj.n(path.f22212c);
        if (obj.f > 0) {
            obj.n(c2);
        }
        obj.n(child.f22212c);
        return d(obj, z);
    }

    public static final ByteString c(okio.Path path) {
        ByteString byteString = path.f22212c;
        ByteString byteString2 = f22226a;
        if (ByteString.g(byteString, byteString2) != -1) {
            return byteString2;
        }
        ByteString byteString3 = path.f22212c;
        ByteString byteString4 = b;
        if (ByteString.g(byteString3, byteString4) != -1) {
            return byteString4;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:210:0x0179, code lost:
    
        if (r8 != (-1)) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x02d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x02de A[EDGE_INSN: B:30:0x02de->B:31:0x02de BREAK  A[LOOP:0: B:2:0x000f->B:28:0x02d6], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0, types: [okio.Buffer, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final okio.Path d(okio.Buffer r31, boolean r32) {
        /*
            Method dump skipped, instructions count: 1048
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.Path.d(okio.Buffer, boolean):okio.Path");
    }

    public static final ByteString e(byte b2) {
        if (b2 != 47) {
            if (b2 == 92) {
                return b;
            }
            throw new IllegalArgumentException(android.support.v4.media.a.e(b2, "not a directory separator: "));
        }
        return f22226a;
    }

    public static final ByteString f(String str) {
        if (Intrinsics.areEqual(str, "/")) {
            return f22226a;
        }
        if (Intrinsics.areEqual(str, "\\")) {
            return b;
        }
        throw new IllegalArgumentException(android.support.v4.media.a.C("not a directory separator: ", str));
    }
}
