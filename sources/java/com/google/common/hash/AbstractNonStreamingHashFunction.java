package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.io.ByteArrayOutputStream;

@Immutable
/* loaded from: classes3.dex */
abstract class AbstractNonStreamingHashFunction extends AbstractHashFunction {

    /* loaded from: classes3.dex */
    public final class BufferingHasher extends AbstractHasher {
    }

    /* loaded from: classes3.dex */
    public static final class ExposedByteArrayOutputStream extends ByteArrayOutputStream {
    }
}
