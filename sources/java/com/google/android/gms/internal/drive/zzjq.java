package com.google.android.gms.internal.drive;

import java.io.IOException;

/* loaded from: classes.dex */
final class zzjq extends zzjo {

    /* renamed from: a, reason: collision with root package name */
    public int f10205a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f10206c;

    public final int a(int i) {
        if (i >= 0) {
            int i2 = this.f10206c;
            if (i <= i2) {
                this.f10206c = i;
                int i3 = this.f10205a + this.b;
                this.f10205a = i3;
                if (i3 > i) {
                    int i4 = i3 - i;
                    this.b = i4;
                    this.f10205a = i3 - i4;
                    return i2;
                }
                this.b = 0;
                return i2;
            }
            throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }
}
