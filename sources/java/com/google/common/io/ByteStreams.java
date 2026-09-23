package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.OutputStream;

@GwtIncompatible
/* loaded from: classes3.dex */
public final class ByteStreams {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f12470a = 0;

    /* renamed from: com.google.common.io.ByteStreams$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends OutputStream {
        public final String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) {
            bArr.getClass();
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            bArr.getClass();
            Preconditions.j(i, i2 + i, bArr.length);
        }
    }

    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class ByteArrayDataInputStream implements ByteArrayDataInput {
        @Override // java.io.DataInput
        public final boolean readBoolean() {
            throw null;
        }

        @Override // java.io.DataInput
        public final byte readByte() {
            throw null;
        }

        @Override // java.io.DataInput
        public final char readChar() {
            throw null;
        }

        @Override // java.io.DataInput
        public final double readDouble() {
            throw null;
        }

        @Override // java.io.DataInput
        public final float readFloat() {
            throw null;
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr) {
            throw null;
        }

        @Override // java.io.DataInput
        public final int readInt() {
            throw null;
        }

        @Override // java.io.DataInput
        public final String readLine() {
            throw null;
        }

        @Override // java.io.DataInput
        public final long readLong() {
            throw null;
        }

        @Override // java.io.DataInput
        public final short readShort() {
            throw null;
        }

        @Override // java.io.DataInput
        public final String readUTF() {
            throw null;
        }

        @Override // java.io.DataInput
        public final int readUnsignedByte() {
            throw null;
        }

        @Override // java.io.DataInput
        public final int readUnsignedShort() {
            throw null;
        }

        @Override // java.io.DataInput
        public final int skipBytes(int i) {
            throw null;
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr, int i, int i2) {
            throw null;
        }
    }

    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class ByteArrayDataOutputStream implements ByteArrayDataOutput {
        @Override // java.io.DataOutput
        public final void write(int i) {
            throw null;
        }

        @Override // java.io.DataOutput
        public final void writeBoolean(boolean z) {
            throw null;
        }

        @Override // java.io.DataOutput
        public final void writeByte(int i) {
            throw null;
        }

        @Override // java.io.DataOutput
        public final void writeBytes(String str) {
            throw null;
        }

        @Override // java.io.DataOutput
        public final void writeChar(int i) {
            throw null;
        }

        @Override // java.io.DataOutput
        public final void writeChars(String str) {
            throw null;
        }

        @Override // java.io.DataOutput
        public final void writeDouble(double d) {
            throw null;
        }

        @Override // java.io.DataOutput
        public final void writeFloat(float f) {
            throw null;
        }

        @Override // java.io.DataOutput
        public final void writeInt(int i) {
            throw null;
        }

        @Override // java.io.DataOutput
        public final void writeLong(long j) {
            throw null;
        }

        @Override // java.io.DataOutput
        public final void writeShort(int i) {
            throw null;
        }

        @Override // java.io.DataOutput
        public final void writeUTF(String str) {
            throw null;
        }

        @Override // java.io.DataOutput
        public final void write(byte[] bArr) {
            throw null;
        }

        @Override // java.io.DataOutput
        public final void write(byte[] bArr, int i, int i2) {
            throw null;
        }
    }

    static {
        new OutputStream();
    }

    public static void a(LittleEndianDataInputStream littleEndianDataInputStream, byte[] bArr, int i, int i2) {
        bArr.getClass();
        if (i2 >= 0) {
            Preconditions.j(i, i + i2, bArr.length);
            int i3 = 0;
            while (i3 < i2) {
                int read = littleEndianDataInputStream.read(bArr, i + i3, i2 - i3);
                if (read == -1) {
                    break;
                } else {
                    i3 += read;
                }
            }
            if (i3 == i2) {
                return;
            }
            throw new EOFException("reached end of stream after reading " + i3 + " bytes; " + i2 + " bytes expected");
        }
        throw new IndexOutOfBoundsException(android.support.v4.media.a.f(i2, "len (", ") cannot be negative"));
    }

    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class LimitedInputStream extends FilterInputStream {

        /* renamed from: c, reason: collision with root package name */
        public long f12471c;
        public long f;

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int available() {
            return (int) Math.min(((FilterInputStream) this).in.available(), this.f12471c);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final synchronized void mark(int i) {
            ((FilterInputStream) this).in.mark(i);
            this.f = this.f12471c;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read() {
            if (this.f12471c == 0) {
                return -1;
            }
            int read = ((FilterInputStream) this).in.read();
            if (read != -1) {
                this.f12471c--;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final synchronized void reset() {
            if (((FilterInputStream) this).in.markSupported()) {
                if (this.f != -1) {
                    ((FilterInputStream) this).in.reset();
                    this.f12471c = this.f;
                } else {
                    throw new IOException("Mark not set");
                }
            } else {
                throw new IOException("Mark not supported");
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final long skip(long j) {
            long skip = ((FilterInputStream) this).in.skip(Math.min(j, this.f12471c));
            this.f12471c -= skip;
            return skip;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            long j = this.f12471c;
            if (j == 0) {
                return -1;
            }
            int read = ((FilterInputStream) this).in.read(bArr, i, (int) Math.min(i2, j));
            if (read != -1) {
                this.f12471c -= read;
            }
            return read;
        }
    }
}
