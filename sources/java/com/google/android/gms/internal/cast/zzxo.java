package com.google.android.gms.internal.cast;

import java.io.IOException;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzxo extends IOException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzxo(long j, long j2, int i, IndexOutOfBoundsException indexOutOfBoundsException) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat("Pos: " + j + ", limit: " + j2 + ", len: " + i), indexOutOfBoundsException);
        Locale locale = Locale.US;
    }

    public zzxo(IndexOutOfBoundsException indexOutOfBoundsException) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", indexOutOfBoundsException);
    }
}
