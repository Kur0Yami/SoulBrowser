package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import kotlin.KotlinVersion;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
public final class zzsx {
    public static final byte[] d = {79, 103, 103, 83, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, -43, -59, -9, 1, 19, 79, 112, 117, 115, 72, 101, 97, 100, 1, 2, 56, 1, ByteCompanionObject.MIN_VALUE, -69, 0, 0, 0, 0, 0};
    public static final byte[] e = {79, 103, 103, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 11, -103, 87, 83, 1, 16, 79, 112, 117, 115, 84, 97, 103, 115, 0, 0, 0, 0, 0, 0, 0, 0};

    /* renamed from: a, reason: collision with root package name */
    public ByteBuffer f9263a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f9264c;

    public static final void b(ByteBuffer byteBuffer, long j, int i, int i2, boolean z) {
        byte b;
        byteBuffer.put((byte) 79);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 83);
        byteBuffer.put((byte) 0);
        if (true != z) {
            b = 0;
        } else {
            b = 2;
        }
        byteBuffer.put(b);
        byteBuffer.putLong(j);
        byteBuffer.putInt(0);
        byteBuffer.putInt(i);
        byteBuffer.putInt(0);
        byteBuffer.put(zzgxb.a(i2));
    }

    public final void a(zzih zzihVar, List list) {
        int i;
        ByteBuffer byteBuffer;
        int i2;
        byte b;
        ByteBuffer byteBuffer2 = zzihVar.d;
        byteBuffer2.getClass();
        if (byteBuffer2.limit() - zzihVar.d.position() == 0) {
            return;
        }
        byte[] bArr = null;
        if (this.b == 2 && (list.size() == 1 || list.size() == 3)) {
            bArr = (byte[]) list.get(0);
        }
        ByteBuffer byteBuffer3 = zzihVar.d;
        int position = byteBuffer3.position();
        int limit = byteBuffer3.limit();
        int i3 = limit - position;
        int i4 = this.b;
        int i5 = (i3 + KotlinVersion.MAX_COMPONENT_VALUE) / KotlinVersion.MAX_COMPONENT_VALUE;
        int i6 = i5 + 27 + i3;
        if (i4 == 2) {
            if (bArr != null) {
                i = bArr.length + 28;
            } else {
                i = 47;
            }
            i6 += i + 44;
        } else {
            i = 0;
        }
        if (this.f9263a.capacity() < i6) {
            this.f9263a = ByteBuffer.allocate(i6).order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f9263a.clear();
        }
        ByteBuffer byteBuffer4 = this.f9263a;
        if (this.b == 2) {
            if (bArr != null) {
                byteBuffer = byteBuffer4;
                i2 = 22;
                b(byteBuffer, 0L, 0, 1, true);
                int length = bArr.length;
                byteBuffer.put(zzgxb.a(length));
                byteBuffer.put(bArr);
                int i7 = length + 28;
                byteBuffer.putInt(22, zzfj.f(byteBuffer.array(), byteBuffer.arrayOffset(), i7, 0));
                byteBuffer.position(i7);
            } else {
                byteBuffer = byteBuffer4;
                i2 = 22;
                byteBuffer.put(d);
            }
            byteBuffer.put(e);
        } else {
            byteBuffer = byteBuffer4;
            i2 = 22;
        }
        byte b2 = byteBuffer3.get(0);
        if (byteBuffer3.limit() > 1) {
            b = byteBuffer3.get(1);
        } else {
            b = 0;
        }
        int b3 = this.f9264c + ((int) ((zzafn.b(b2, b) * 48000) / 1000000));
        this.f9264c = b3;
        int i8 = i2;
        ByteBuffer byteBuffer5 = byteBuffer;
        b(byteBuffer5, b3, this.b, i5, false);
        for (int i9 = 0; i9 < i5; i9++) {
            if (i3 >= 255) {
                byteBuffer5.put((byte) -1);
                i3 -= 255;
            } else {
                byteBuffer5.put((byte) i3);
                i3 = 0;
            }
        }
        while (position < limit) {
            byteBuffer5.put(byteBuffer3.get(position));
            position++;
        }
        byteBuffer3.position(byteBuffer3.limit());
        byteBuffer5.flip();
        if (this.b == 2) {
            byteBuffer5.putInt(i + 66, zzfj.f(byteBuffer5.array(), byteBuffer5.arrayOffset() + i + 44, byteBuffer5.limit() - byteBuffer5.position(), 0));
        } else {
            byteBuffer5.putInt(i8, zzfj.f(byteBuffer5.array(), byteBuffer5.arrayOffset(), byteBuffer5.limit() - byteBuffer5.position(), 0));
        }
        this.b++;
        this.f9263a = byteBuffer5;
        zzihVar.c();
        zzihVar.d(this.f9263a.remaining());
        zzihVar.d.put(this.f9263a);
        zzihVar.f();
    }
}
