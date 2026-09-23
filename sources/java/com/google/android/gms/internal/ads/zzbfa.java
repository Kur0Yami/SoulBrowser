package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import java.io.PushbackInputStream;

/* loaded from: classes.dex */
final class zzbfa extends PushbackInputStream {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbfd f4602c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbfa(zzbfd zzbfdVar, ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream) {
        super(autoCloseInputStream, 1);
        this.f4602c = zzbfdVar;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f4602c.f4606c.a();
        super.close();
    }
}
