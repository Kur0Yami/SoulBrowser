package com.google.android.gms.internal.drive;

/* loaded from: classes.dex */
abstract class zzjf implements zzjj {
    @Override // java.util.Iterator
    public final /* synthetic */ Byte next() {
        return Byte.valueOf(((zzjd) this).nextByte());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
