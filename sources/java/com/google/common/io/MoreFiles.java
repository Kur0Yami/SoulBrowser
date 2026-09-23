package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Predicate;
import com.google.common.io.ByteSource;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Arrays;

@IgnoreJRERequirement
@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class MoreFiles {

    /* renamed from: com.google.common.io.MoreFiles$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Predicate<Path> {
        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return java.nio.file.Files.isDirectory(a.a(obj), null);
        }

        public final String toString() {
            return "MoreFiles.isDirectory(" + Arrays.toString((Object[]) null) + ")";
        }
    }

    /* renamed from: com.google.common.io.MoreFiles$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Predicate<Path> {
        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return java.nio.file.Files.isRegularFile(a.a(obj), null);
        }

        public final String toString() {
            return "MoreFiles.isRegularFile(" + Arrays.toString((Object[]) null) + ")";
        }
    }

    @IgnoreJRERequirement
    /* loaded from: classes3.dex */
    public static final class PathByteSink extends ByteSink {
        public final String toString() {
            return "MoreFiles.asByteSink(null, " + Arrays.toString((Object[]) null) + ")";
        }
    }

    @IgnoreJRERequirement
    /* loaded from: classes3.dex */
    public static final class PathByteSource extends ByteSource {

        /* renamed from: com.google.common.io.MoreFiles$PathByteSource$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends ByteSource.AsCharSource {
        }

        static {
            LinkOption[] linkOptionArr = new LinkOption[0];
        }

        public final String toString() {
            return "MoreFiles.asByteSource(null, " + Arrays.toString((Object[]) null) + ")";
        }
    }
}
