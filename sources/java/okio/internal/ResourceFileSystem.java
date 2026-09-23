package okio.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okio.ByteString;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.JvmSystemFileSystem;
import okio.Path;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokio/internal/ResourceFileSystem;", "Lokio/FileSystem;", "Companion", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nResourceFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,215:1\n774#2:216\n865#2,2:217\n1563#2:219\n1634#2,3:220\n774#2:223\n865#2,2:224\n1563#2:226\n1634#2,3:227\n1617#2,9:230\n1869#2:239\n1870#2:241\n1626#2:242\n1617#2,9:243\n1869#2:252\n1870#2:254\n1626#2:255\n1#3:240\n1#3:253\n*S KotlinDebug\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem\n*L\n75#1:216\n75#1:217,2\n76#1:219\n76#1:220,3\n91#1:223\n91#1:224,2\n92#1:226\n92#1:227,3\n178#1:230,9\n178#1:239\n178#1:241\n178#1:242\n179#1:243,9\n179#1:252\n179#1:254\n179#1:255\n178#1:240\n179#1:253\n*E\n"})
/* loaded from: classes4.dex */
public final class ResourceFileSystem extends FileSystem {
    public static final Path i;
    public final ClassLoader f;
    public final JvmSystemFileSystem g;
    public final Lazy h;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/internal/ResourceFileSystem$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public static final boolean a(Path path) {
            boolean endsWith;
            Path path2 = ResourceFileSystem.i;
            ByteString byteString = path.f22212c;
            int k = ByteString.k(byteString, Path.f22226a);
            if (k == -1) {
                k = ByteString.k(path.f22212c, Path.b);
            }
            if (k != -1) {
                byteString = ByteString.q(byteString, k + 1, 0, 2);
            } else if (path.d() != null && byteString.d() == 2) {
                byteString = ByteString.h;
            }
            endsWith = StringsKt__StringsJVMKt.endsWith(byteString.s(), ".class", true);
            return !endsWith;
        }
    }

    static {
        String str = Path.f;
        i = Path.Companion.a("/");
    }

    public ResourceFileSystem(ClassLoader classLoader) {
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        JvmSystemFileSystem systemFileSystem = FileSystem.f22204c;
        Intrinsics.checkNotNullParameter(systemFileSystem, "systemFileSystem");
        this.f = classLoader;
        this.g = systemFileSystem;
        this.h = LazyKt.lazy(new Function0() { // from class: okio.internal.a
            /* JADX WARN: Code restructure failed: missing block: B:100:0x01ec, code lost:
            
                r3 = r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:103:0x022e, code lost:
            
                throw new java.io.IOException("unsupported zip: spanned");
             */
            /* JADX WARN: Code restructure failed: missing block: B:105:0x022f, code lost:
            
                r0 = kotlin.Unit.INSTANCE;
             */
            /* JADX WARN: Code restructure failed: missing block: B:108:0x0234, code lost:
            
                r0 = null;
             */
            /* JADX WARN: Code restructure failed: missing block: B:109:0x0243, code lost:
            
                if (r0 != null) goto L178;
             */
            /* JADX WARN: Code restructure failed: missing block: B:111:0x0248, code lost:
            
                throw r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:113:0x0236, code lost:
            
                r0 = th;
             */
            /* JADX WARN: Code restructure failed: missing block: B:114:0x0226, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:117:0x0238, code lost:
            
                r1.close();
                r0 = kotlin.Unit.INSTANCE;
             */
            /* JADX WARN: Code restructure failed: missing block: B:118:0x0242, code lost:
            
                r0 = r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:120:0x023e, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:121:0x023f, code lost:
            
                kotlin.ExceptionsKt.addSuppressed(r0, r0);
             */
            /* JADX WARN: Code restructure failed: missing block: B:122:0x0245, code lost:
            
                r0 = r20;
             */
            /* JADX WARN: Code restructure failed: missing block: B:123:0x024d, code lost:
            
                r1 = new java.util.ArrayList();
                r2 = okio.Okio.b(r13.e(r0.b));
             */
            /* JADX WARN: Code restructure failed: missing block: B:125:0x025c, code lost:
            
                r10 = r0.f22231a;
             */
            /* JADX WARN: Code restructure failed: missing block: B:128:0x0262, code lost:
            
                r3 = okio.internal.ZipFilesKt.c(r2);
                r20 = r10;
             */
            /* JADX WARN: Code restructure failed: missing block: B:129:0x026e, code lost:
            
                if (r3.h < r0.b) goto L96;
             */
            /* JADX WARN: Code restructure failed: missing block: B:131:0x027a, code lost:
            
                if (((java.lang.Boolean) r9.invoke(r3)).booleanValue() != false) goto L98;
             */
            /* JADX WARN: Code restructure failed: missing block: B:132:0x027c, code lost:
            
                r1.add(r3);
             */
            /* JADX WARN: Code restructure failed: missing block: B:134:0x0283, code lost:
            
                r17 = r17 + 1;
                r10 = r20;
             */
            /* JADX WARN: Code restructure failed: missing block: B:138:0x0291, code lost:
            
                throw new java.io.IOException("bad zip: local file header offset >= central directory offset");
             */
            /* JADX WARN: Code restructure failed: missing block: B:142:0x0292, code lost:
            
                r0 = kotlin.Unit.INSTANCE;
             */
            /* JADX WARN: Code restructure failed: missing block: B:145:0x0297, code lost:
            
                r0 = null;
             */
            /* JADX WARN: Code restructure failed: missing block: B:146:0x02a6, code lost:
            
                if (r0 == null) goto L115;
             */
            /* JADX WARN: Code restructure failed: missing block: B:147:0x02a8, code lost:
            
                r2 = r26;
                r1 = new okio.ZipFileSystem(r7, r2, okio.internal.ZipFilesKt.a(r1));
             */
            /* JADX WARN: Code restructure failed: missing block: B:149:0x02b3, code lost:
            
                r13.close();
                r0 = kotlin.Unit.INSTANCE;
             */
            /* JADX WARN: Code restructure failed: missing block: B:150:0x02b8, code lost:
            
                r0 = kotlin.TuplesKt.to(r1, okio.internal.ResourceFileSystem.i);
             */
            /* JADX WARN: Code restructure failed: missing block: B:154:0x02cd, code lost:
            
                throw r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:156:0x0299, code lost:
            
                r0 = th;
             */
            /* JADX WARN: Code restructure failed: missing block: B:157:0x0280, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:160:0x029b, code lost:
            
                r2.close();
                r0 = kotlin.Unit.INSTANCE;
             */
            /* JADX WARN: Code restructure failed: missing block: B:161:0x02a5, code lost:
            
                r0 = r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:163:0x02a1, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:164:0x02a2, code lost:
            
                kotlin.ExceptionsKt.addSuppressed(r0, r0);
             */
            /* JADX WARN: Code restructure failed: missing block: B:167:0x02d5, code lost:
            
                throw new java.io.IOException("unsupported zip: spanned");
             */
            /* JADX WARN: Code restructure failed: missing block: B:25:0x00a7, code lost:
            
                r7 = kotlin.text.StringsKt__StringsKt.lastIndexOf$default((java.lang.CharSequence) r0, "!", 0, false, 6, (java.lang.Object) null);
             */
            /* JADX WARN: Code restructure failed: missing block: B:45:0x011d, code lost:
            
                r0 = r1.t0() & kotlin.UShort.MAX_VALUE;
                r10 = r1.t0() & kotlin.UShort.MAX_VALUE;
                r26 = r3;
                r2 = r1.t0() & kotlin.UShort.MAX_VALUE;
             */
            /* JADX WARN: Code restructure failed: missing block: B:47:0x0141, code lost:
            
                if (r2 != (r1.t0() & kotlin.UShort.MAX_VALUE)) goto L176;
             */
            /* JADX WARN: Code restructure failed: missing block: B:48:0x0143, code lost:
            
                if (r0 != 0) goto L177;
             */
            /* JADX WARN: Code restructure failed: missing block: B:49:0x0145, code lost:
            
                if (r10 != 0) goto L179;
             */
            /* JADX WARN: Code restructure failed: missing block: B:51:0x0149, code lost:
            
                r1.skip(4);
                r32 = r1.t0() & kotlin.UShort.MAX_VALUE;
                r20 = new okio.internal.EocdRecord(r2, r1.l0() & 4294967295L, r32);
                r1.d(r32);
             */
            /* JADX WARN: Code restructure failed: missing block: B:52:0x016b, code lost:
            
                r1.close();
                r14 = r14 - 20;
             */
            /* JADX WARN: Code restructure failed: missing block: B:53:0x0174, code lost:
            
                if (r14 <= r17) goto L86;
             */
            /* JADX WARN: Code restructure failed: missing block: B:54:0x0176, code lost:
            
                r1 = okio.Okio.b(r13.e(r14));
             */
            /* JADX WARN: Code restructure failed: missing block: B:57:0x0185, code lost:
            
                if (r1.l0() != 117853008) goto L75;
             */
            /* JADX WARN: Code restructure failed: missing block: B:58:0x0187, code lost:
            
                r2 = r1.l0();
                r10 = r1.b();
             */
            /* JADX WARN: Code restructure failed: missing block: B:59:0x0194, code lost:
            
                if (r1.l0() != 1) goto L182;
             */
            /* JADX WARN: Code restructure failed: missing block: B:60:0x0196, code lost:
            
                if (r2 != 0) goto L183;
             */
            /* JADX WARN: Code restructure failed: missing block: B:61:0x0198, code lost:
            
                r2 = okio.Okio.b(r13.e(r10));
             */
            /* JADX WARN: Code restructure failed: missing block: B:63:0x01a0, code lost:
            
                r10 = r2.l0();
             */
            /* JADX WARN: Code restructure failed: missing block: B:64:0x01a7, code lost:
            
                if (r10 != 101075792) goto L185;
             */
            /* JADX WARN: Code restructure failed: missing block: B:65:0x01a9, code lost:
            
                r2.skip(12);
                r10 = r2.l0();
                r11 = r2.l0();
                r28 = r2.b();
             */
            /* JADX WARN: Code restructure failed: missing block: B:66:0x01c0, code lost:
            
                if (r28 != r2.b()) goto L186;
             */
            /* JADX WARN: Code restructure failed: missing block: B:67:0x01c2, code lost:
            
                if (r10 != 0) goto L187;
             */
            /* JADX WARN: Code restructure failed: missing block: B:68:0x01c4, code lost:
            
                if (r11 != 0) goto L188;
             */
            /* JADX WARN: Code restructure failed: missing block: B:69:0x01c6, code lost:
            
                r2.skip(8);
                r27 = new okio.internal.EocdRecord(r28, r2.b(), r32);
             */
            /* JADX WARN: Code restructure failed: missing block: B:71:0x01d6, code lost:
            
                r0 = kotlin.Unit.INSTANCE;
             */
            /* JADX WARN: Code restructure failed: missing block: B:75:0x01db, code lost:
            
                r0 = null;
             */
            /* JADX WARN: Code restructure failed: missing block: B:80:0x0225, code lost:
            
                throw r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:82:0x01dd, code lost:
            
                r0 = th;
             */
            /* JADX WARN: Code restructure failed: missing block: B:83:0x01e1, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:84:0x01e2, code lost:
            
                r3 = r0;
                r20 = r27;
             */
            /* JADX WARN: Code restructure failed: missing block: B:86:0x0217, code lost:
            
                r2.close();
                r0 = kotlin.Unit.INSTANCE;
             */
            /* JADX WARN: Code restructure failed: missing block: B:87:0x0221, code lost:
            
                r0 = r3;
             */
            /* JADX WARN: Code restructure failed: missing block: B:89:0x021d, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:90:0x021e, code lost:
            
                kotlin.ExceptionsKt.addSuppressed(r3, r0);
             */
            /* JADX WARN: Code restructure failed: missing block: B:93:0x01eb, code lost:
            
                throw new java.io.IOException("unsupported zip: spanned");
             */
            /* JADX WARN: Code restructure failed: missing block: B:98:0x0214, code lost:
            
                throw new java.io.IOException("bad zip: expected " + okio.internal.ZipFilesKt.b(101075792) + " but was " + okio.internal.ZipFilesKt.b(r10));
             */
            /* JADX WARN: Code restructure failed: missing block: B:99:0x0215, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Removed duplicated region for block: B:110:0x0248 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:128:0x0262 A[Catch: all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:125:0x025c, B:128:0x0262, B:130:0x0270, B:132:0x027c, B:134:0x0283, B:137:0x028a, B:138:0x0291, B:142:0x0292), top: B:124:0x025c, outer: #4 }] */
            /* JADX WARN: Removed duplicated region for block: B:147:0x02a8 A[Catch: all -> 0x0249, TRY_LEAVE, TryCatch #4 {all -> 0x0249, blocks: (B:29:0x00ee, B:31:0x00fe, B:32:0x010a, B:52:0x016b, B:54:0x0176, B:111:0x0248, B:121:0x023f, B:123:0x024d, B:147:0x02a8, B:154:0x02cd, B:164:0x02a2, B:37:0x02d7, B:41:0x02e6, B:42:0x02ed, B:172:0x02ee, B:173:0x02f1, B:175:0x02f2, B:176:0x0307, B:125:0x025c, B:128:0x0262, B:130:0x0270, B:132:0x027c, B:134:0x0283, B:137:0x028a, B:138:0x0291, B:142:0x0292, B:160:0x029b, B:56:0x017e, B:58:0x0187, B:61:0x0198, B:80:0x0225, B:90:0x021e, B:102:0x0229, B:103:0x022e, B:105:0x022f, B:86:0x0217, B:34:0x0114, B:45:0x011d, B:51:0x0149, B:166:0x02d0, B:167:0x02d5, B:117:0x0238), top: B:28:0x00ee, inners: #0, #1, #3, #5, #13 }] */
            /* JADX WARN: Removed duplicated region for block: B:153:0x02cd A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:21:0x02c0  */
            /* JADX WARN: Removed duplicated region for block: B:24:0x02c3 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:78:0x0224  */
            /* JADX WARN: Removed duplicated region for block: B:79:0x0225 A[SYNTHETIC] */
            /* JADX WARN: Type inference failed for: r9v5, types: [okio.internal.b, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invoke() {
                /*
                    Method dump skipped, instructions count: 794
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: okio.internal.a.invoke():java.lang.Object");
            }
        });
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [okio.Buffer, java.lang.Object] */
    public static String e(Path child) {
        Path path;
        Path other = i;
        other.getClass();
        Intrinsics.checkNotNullParameter(child, "child");
        Path b = Path.b(other, child, true);
        ByteString byteString = b.f22212c;
        Intrinsics.checkNotNullParameter(other, "other");
        int a2 = Path.a(b);
        Path path2 = null;
        if (a2 == -1) {
            path = null;
        } else {
            path = new Path(byteString.p(0, a2));
        }
        ByteString byteString2 = other.f22212c;
        int a3 = Path.a(other);
        if (a3 != -1) {
            path2 = new Path(byteString2.p(0, a3));
        }
        if (Intrinsics.areEqual(path, path2)) {
            ArrayList a4 = b.a();
            ArrayList a5 = other.a();
            int min = Math.min(a4.size(), a5.size());
            int i2 = 0;
            while (i2 < min && Intrinsics.areEqual(a4.get(i2), a5.get(i2))) {
                i2++;
            }
            if (i2 == min && byteString.d() == byteString2.d()) {
                b = Path.Companion.a(".");
            } else if (a5.subList(i2, a5.size()).indexOf(Path.e) == -1) {
                if (!Intrinsics.areEqual(byteString2, Path.d)) {
                    ?? obj = new Object();
                    ByteString c2 = Path.c(other);
                    if (c2 == null && (c2 = Path.c(b)) == null) {
                        c2 = Path.f(Path.f);
                    }
                    int size = a5.size();
                    for (int i3 = i2; i3 < size; i3++) {
                        obj.n(Path.e);
                        obj.n(c2);
                    }
                    int size2 = a4.size();
                    while (i2 < size2) {
                        obj.n((ByteString) a4.get(i2));
                        obj.n(c2);
                        i2++;
                    }
                    b = Path.d(obj, false);
                }
            } else {
                throw new IllegalArgumentException(("Impossible relative path to resolve: " + b + " and " + other).toString());
            }
            return b.f22212c.s();
        }
        throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + b + " and " + other).toString());
    }

    @Override // okio.FileSystem
    public final List a(Path dir) {
        String removePrefix;
        String replace$default;
        Intrinsics.checkNotNullParameter(dir, "dir");
        String e = e(dir);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = ((List) this.h.getValue()).iterator();
        boolean z = false;
        while (true) {
            ArrayList arrayList = null;
            if (!it.hasNext()) {
                break;
            }
            Pair pair = (Pair) it.next();
            FileSystem fileSystem = (FileSystem) pair.component1();
            Path base = (Path) pair.component2();
            List a2 = fileSystem.a(base.c(e));
            if (a2 != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : a2) {
                    if (Companion.a((Path) obj)) {
                        arrayList2.add(obj);
                    }
                }
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj2 = arrayList2.get(i2);
                    i2++;
                    Path path = (Path) obj2;
                    Intrinsics.checkNotNullParameter(path, "<this>");
                    Intrinsics.checkNotNullParameter(base, "base");
                    removePrefix = StringsKt__StringsKt.removePrefix(path.f22212c.s(), (CharSequence) base.f22212c.s());
                    replace$default = StringsKt__StringsJVMKt.replace$default(removePrefix, '\\', '/', false, 4, (Object) null);
                    arrayList3.add(i.c(replace$default));
                }
                arrayList = arrayList3;
            }
            if (arrayList != null) {
                CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, arrayList);
                z = true;
            }
        }
        if (!z) {
            return null;
        }
        return CollectionsKt.toList(linkedHashSet);
    }

    @Override // okio.FileSystem
    public final FileMetadata b(Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (Companion.a(path)) {
            String e = e(path);
            for (Pair pair : (List) this.h.getValue()) {
                FileMetadata b = ((FileSystem) pair.component1()).b(((Path) pair.component2()).c(e));
                if (b != null) {
                    return b;
                }
            }
            return null;
        }
        return null;
    }

    @Override // okio.FileSystem
    public final FileHandle d(Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (Companion.a(file)) {
            String e = e(file);
            for (Pair pair : (List) this.h.getValue()) {
                try {
                    return ((FileSystem) pair.component1()).d(((Path) pair.component2()).c(e));
                } catch (FileNotFoundException unused) {
                }
            }
            throw new FileNotFoundException("file not found: " + file);
        }
        throw new FileNotFoundException("file not found: " + file);
    }
}
