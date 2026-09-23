package split;

import backend.DoHQueryToken;

/* loaded from: classes4.dex */
public interface DuplexConn extends DoHQueryToken {
    void close();

    void closeRead();

    void closeWrite();

    long read(byte[] bArr);

    long write(byte[] bArr);
}
