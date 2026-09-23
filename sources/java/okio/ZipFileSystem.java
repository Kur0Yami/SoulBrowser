package okio;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Path;
import okio.internal.ZipEntry;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokio/ZipFileSystem;", "Lokio/FileSystem;", "Companion", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nZipFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFileSystem.kt\nokio/ZipFileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,142:1\n58#2,4:143\n58#2,22:147\n66#2,10:169\n62#2,3:179\n77#2,3:182\n58#2,22:185\n*S KotlinDebug\n*F\n+ 1 ZipFileSystem.kt\nokio/ZipFileSystem\n*L\n55#1:143,4\n56#1:147,22\n55#1:169,10\n55#1:179,3\n55#1:182,3\n99#1:185,22\n*E\n"})
/* loaded from: classes4.dex */
public final class ZipFileSystem extends FileSystem {
    public static final Path i;
    public final Path f;
    public final FileSystem g;
    public final Map h;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/ZipFileSystem$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    static {
        String str = Path.f;
        i = Path.Companion.a("/");
    }

    public ZipFileSystem(Path zipPath, JvmSystemFileSystem fileSystem, Map entries) {
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(entries, "entries");
        this.f = zipPath;
        this.g = fileSystem;
        this.h = entries;
    }

    @Override // okio.FileSystem
    public final List a(Path child) {
        Intrinsics.checkNotNullParameter(child, "dir");
        Path path = i;
        path.getClass();
        Intrinsics.checkNotNullParameter(child, "child");
        ZipEntry zipEntry = (ZipEntry) this.h.get(okio.internal.Path.b(path, child, true));
        if (zipEntry == null) {
            return null;
        }
        return CollectionsKt.toList(zipEntry.q);
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0136  */
    @Override // okio.FileSystem
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okio.FileMetadata b(okio.Path r26) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ZipFileSystem.b(okio.Path):okio.FileMetadata");
    }

    @Override // okio.FileSystem
    public final FileHandle d(Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new UnsupportedOperationException("not implemented yet!");
    }
}
