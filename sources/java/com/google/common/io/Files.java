package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Predicate;
import java.io.File;
import java.util.List;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class Files {

    /* renamed from: com.google.common.io.Files$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements LineProcessor<List<String>> {
    }

    /* loaded from: classes3.dex */
    public static final class FileByteSink extends ByteSink {
        public final String toString() {
            return "Files.asByteSink(null, null)";
        }
    }

    /* loaded from: classes3.dex */
    public static final class FileByteSource extends ByteSource {
        public final String toString() {
            return "Files.asByteSource(null)";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class FilePredicate implements Predicate<File> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ FilePredicate[] f12477c = {new FilePredicate() { // from class: com.google.common.io.Files.FilePredicate.1
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return ((File) obj).isDirectory();
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Files.isDirectory()";
            }
        }, new FilePredicate() { // from class: com.google.common.io.Files.FilePredicate.2
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return ((File) obj).isFile();
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Files.isFile()";
            }
        }};

        /* JADX INFO: Fake field, exist only in values array */
        FilePredicate EF2;

        public static FilePredicate valueOf(String str) {
            return (FilePredicate) Enum.valueOf(FilePredicate.class, str);
        }

        public static FilePredicate[] values() {
            return (FilePredicate[]) f12477c.clone();
        }
    }
}
