package androidx.versionedparcelable;

import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes.dex */
public class VersionedParcelStream extends VersionedParcel {
    public static final Charset m = Charset.forName("UTF-16");
    public final DataInputStream d;
    public final DataOutputStream e;
    public final DataInputStream f;
    public DataOutputStream g;
    public FieldBuffer h;
    public boolean i;
    public int j;
    public int k;
    public int l;

    /* loaded from: classes.dex */
    public static class FieldBuffer {

        /* renamed from: a, reason: collision with root package name */
        public final ByteArrayOutputStream f1754a;
        public final DataOutputStream b;

        /* renamed from: c, reason: collision with root package name */
        public final int f1755c;
        public final DataOutputStream d;

        public FieldBuffer(int i, DataOutputStream dataOutputStream) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.f1754a = byteArrayOutputStream;
            this.b = new DataOutputStream(byteArrayOutputStream);
            this.f1755c = i;
            this.d = dataOutputStream;
        }
    }

    public VersionedParcelStream(InputStream inputStream, OutputStream outputStream, ArrayMap arrayMap, ArrayMap arrayMap2, ArrayMap arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        DataInputStream dataInputStream;
        this.j = 0;
        this.k = -1;
        this.l = -1;
        if (inputStream != null) {
            dataInputStream = new DataInputStream(new FilterInputStream(inputStream) { // from class: androidx.versionedparcelable.VersionedParcelStream.1
                @Override // java.io.FilterInputStream, java.io.InputStream
                public final int read() {
                    VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                    int i = versionedParcelStream.l;
                    if (i != -1 && versionedParcelStream.j >= i) {
                        throw new IOException();
                    }
                    int read = super.read();
                    versionedParcelStream.j++;
                    return read;
                }

                @Override // java.io.FilterInputStream, java.io.InputStream
                public final long skip(long j) {
                    VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                    int i = versionedParcelStream.l;
                    if (i != -1 && versionedParcelStream.j >= i) {
                        throw new IOException();
                    }
                    long skip = super.skip(j);
                    if (skip > 0) {
                        versionedParcelStream.j += (int) skip;
                    }
                    return skip;
                }

                @Override // java.io.FilterInputStream, java.io.InputStream
                public final int read(byte[] bArr, int i, int i2) {
                    VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                    int i3 = versionedParcelStream.l;
                    if (i3 != -1 && versionedParcelStream.j >= i3) {
                        throw new IOException();
                    }
                    int read = super.read(bArr, i, i2);
                    if (read > 0) {
                        versionedParcelStream.j += read;
                    }
                    return read;
                }
            });
        } else {
            dataInputStream = null;
        }
        this.d = dataInputStream;
        DataOutputStream dataOutputStream = outputStream != null ? new DataOutputStream(outputStream) : null;
        this.e = dataOutputStream;
        this.f = dataInputStream;
        this.g = dataOutputStream;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void a() {
        int i;
        FieldBuffer fieldBuffer = this.h;
        if (fieldBuffer != null) {
            try {
                if (fieldBuffer.f1754a.size() != 0) {
                    FieldBuffer fieldBuffer2 = this.h;
                    DataOutputStream dataOutputStream = fieldBuffer2.d;
                    fieldBuffer2.b.flush();
                    ByteArrayOutputStream byteArrayOutputStream = fieldBuffer2.f1754a;
                    int size = byteArrayOutputStream.size();
                    int i2 = fieldBuffer2.f1755c << 16;
                    if (size >= 65535) {
                        i = 65535;
                    } else {
                        i = size;
                    }
                    dataOutputStream.writeInt(i2 | i);
                    if (size >= 65535) {
                        dataOutputStream.writeInt(size);
                    }
                    byteArrayOutputStream.writeTo(dataOutputStream);
                }
                this.h = null;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final VersionedParcel b() {
        return new VersionedParcelStream(this.f, this.g, this.f1751a, this.b, this.f1752c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final boolean g() {
        try {
            return this.f.readBoolean();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final byte[] h() {
        DataInputStream dataInputStream = this.f;
        try {
            int readInt = dataInputStream.readInt();
            if (readInt > 0) {
                byte[] bArr = new byte[readInt];
                dataInputStream.readFully(bArr);
                return bArr;
            }
            return null;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final CharSequence i() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final boolean j(int i) {
        while (true) {
            try {
                int i2 = this.k;
                if (i2 == i) {
                    return true;
                }
                if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                    break;
                }
                int i3 = this.j;
                int i4 = this.l;
                DataInputStream dataInputStream = this.d;
                if (i3 < i4) {
                    dataInputStream.skip(i4 - i3);
                }
                this.l = -1;
                int readInt = dataInputStream.readInt();
                this.j = 0;
                int i5 = readInt & 65535;
                if (i5 == 65535) {
                    i5 = dataInputStream.readInt();
                }
                this.k = (readInt >> 16) & 65535;
                this.l = i5;
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final int k() {
        try {
            return this.f.readInt();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final Parcelable m() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final String n() {
        DataInputStream dataInputStream = this.f;
        try {
            int readInt = dataInputStream.readInt();
            if (readInt > 0) {
                byte[] bArr = new byte[readInt];
                dataInputStream.readFully(bArr);
                return new String(bArr, m);
            }
            return null;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void p(int i) {
        a();
        FieldBuffer fieldBuffer = new FieldBuffer(i, this.e);
        this.h = fieldBuffer;
        this.g = fieldBuffer.b;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void q(boolean z, boolean z2) {
        if (z) {
            this.i = z2;
            return;
        }
        throw new RuntimeException("Serialization of this object is not allowed");
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void r(boolean z) {
        try {
            this.g.writeBoolean(z);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void s(byte[] bArr) {
        try {
            if (bArr != null) {
                this.g.writeInt(bArr.length);
                this.g.write(bArr);
            } else {
                this.g.writeInt(-1);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void t(CharSequence charSequence) {
        if (this.i) {
        } else {
            throw new RuntimeException("CharSequence cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void u(int i) {
        try {
            this.g.writeInt(i);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void w(Parcelable parcelable) {
        if (this.i) {
        } else {
            throw new RuntimeException("Parcelables cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void x(String str) {
        try {
            if (str != null) {
                byte[] bytes = str.getBytes(m);
                this.g.writeInt(bytes.length);
                this.g.write(bytes);
                return;
            }
            this.g.writeInt(-1);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
