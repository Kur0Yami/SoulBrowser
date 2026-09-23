package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

/* loaded from: classes.dex */
public final class zzib extends zzgt {
    public final byte[] e;
    public final DatagramPacket f;
    public Uri g;
    public DatagramSocket h;
    public MulticastSocket i;
    public InetAddress j;
    public boolean k;
    public int l;

    public zzib() {
        super(true);
        byte[] bArr = new byte[2000];
        this.e = bArr;
        this.f = new DatagramPacket(bArr, 0, 2000);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final long a(zzhf zzhfVar) {
        Uri uri = zzhfVar.f8483a;
        this.g = uri;
        String host = uri.getHost();
        host.getClass();
        int port = this.g.getPort();
        d(zzhfVar);
        try {
            this.j = InetAddress.getByName(host);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.j, port);
            if (this.j.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.i = multicastSocket;
                multicastSocket.joinGroup(this.j);
                this.h = this.i;
            } else {
                this.h = new DatagramSocket(inetSocketAddress);
            }
            this.h.setSoTimeout(8000);
            this.k = true;
            e(zzhfVar);
            return -1L;
        } catch (IOException e) {
            throw new zzhc(2001, e);
        } catch (SecurityException e2) {
            throw new zzhc(2006, e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.l;
        DatagramPacket datagramPacket = this.f;
        if (i3 == 0) {
            try {
                DatagramSocket datagramSocket = this.h;
                if (datagramSocket != null) {
                    datagramSocket.receive(datagramPacket);
                    int length = datagramPacket.getLength();
                    this.l = length;
                    f(length);
                } else {
                    throw null;
                }
            } catch (SocketTimeoutException e) {
                throw new zzhc(2002, e);
            } catch (IOException e2) {
                throw new zzhc(2001, e2);
            }
        }
        int length2 = datagramPacket.getLength();
        int i4 = this.l;
        int min = Math.min(i4, i2);
        System.arraycopy(this.e, length2 - i4, bArr, i, min);
        this.l -= min;
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Uri zzc() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzd() {
        InetAddress inetAddress;
        this.g = null;
        MulticastSocket multicastSocket = this.i;
        if (multicastSocket != null) {
            try {
                inetAddress = this.j;
            } catch (IOException unused) {
            }
            if (inetAddress != null) {
                multicastSocket.leaveGroup(inetAddress);
                this.i = null;
            } else {
                throw null;
            }
        }
        DatagramSocket datagramSocket = this.h;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.h = null;
        }
        this.j = null;
        this.l = 0;
        if (this.k) {
            this.k = false;
            g();
        }
    }
}
