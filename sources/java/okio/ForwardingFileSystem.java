package okio;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/ForwardingFileSystem;", "Lokio/FileSystem;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nForwardingFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForwardingFileSystem.kt\nokio/ForwardingFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,252:1\n1634#2,3:253\n1634#2,3:256\n*S KotlinDebug\n*F\n+ 1 ForwardingFileSystem.kt\nokio/ForwardingFileSystem\n*L\n170#1:253,3\n178#1:256,3\n*E\n"})
/* loaded from: classes4.dex */
public abstract class ForwardingFileSystem extends FileSystem {
    public static void e(Path path, String functionName, String parameterName) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(functionName, "functionName");
        Intrinsics.checkNotNullParameter(parameterName, "parameterName");
    }

    @Override // okio.FileSystem
    public final List a(Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        e(dir, "listOrNull", "dir");
        throw null;
    }

    @Override // okio.FileSystem
    public final FileMetadata b(Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        e(path, "metadataOrNull", "path");
        throw null;
    }

    @Override // okio.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }

    @Override // okio.FileSystem
    public final FileHandle d(Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        e(file, "openReadOnly", "file");
        throw null;
    }

    public final String toString() {
        return Reflection.getOrCreateKotlinClass(getClass()).getSimpleName() + "(null)";
    }
}
