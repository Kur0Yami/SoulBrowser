package kotlin.io.path;

import java.nio.file.FileSystemException;

/* loaded from: classes4.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ FileSystemException a() {
        return new FileSystemException("Failed to delete one or more files. See suppressed exceptions for details.");
    }
}
