package net.lingala.zip4j.io;

import java.util.ArrayList;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import kotlin.io.ConstantsKt;
import net.lingala.zip4j.model.CentralDirectory;
import net.lingala.zip4j.model.ZipModel;

/* loaded from: classes4.dex */
public class ZipOutputStream extends DeflaterOutputStream {
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object, net.lingala.zip4j.model.CentralDirectory] */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.Object, net.lingala.zip4j.model.EndCentralDirRecord] */
    public ZipOutputStream(SplitOutputStream splitOutputStream, ZipModel zipModel) {
        this.f21991c = splitOutputStream;
        if (zipModel == null) {
            this.k = new ZipModel();
        } else {
            this.k = zipModel;
        }
        ZipModel zipModel2 = this.k;
        if (zipModel2.g == null) {
            zipModel2.g = new Object();
        }
        if (zipModel2.f == null) {
            zipModel2.f = new Object();
        }
        CentralDirectory centralDirectory = zipModel2.f;
        if (centralDirectory.f21997a == null) {
            centralDirectory.f21997a = new ArrayList();
        }
        ZipModel zipModel3 = this.k;
        if (zipModel3.f22012c == null) {
            zipModel3.f22012c = new ArrayList();
        }
        long j = splitOutputStream.f;
        if (j != -1) {
            ZipModel zipModel4 = this.k;
            zipModel4.j = true;
            zipModel4.k = j;
        }
        this.k.g.f21998a = 101010256L;
        this.m = new CRC32();
        this.l = 0L;
        this.n = 0L;
        this.o = new byte[16];
        this.p = 0;
        this.r = new Deflater();
        this.q = new byte[ConstantsKt.DEFAULT_BLOCK_SIZE];
        this.s = false;
    }

    @Override // net.lingala.zip4j.io.DeflaterOutputStream, net.lingala.zip4j.io.CipherOutputStream, net.lingala.zip4j.io.BaseOutputStream, java.io.OutputStream
    public final void write(int i) {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // net.lingala.zip4j.io.DeflaterOutputStream, net.lingala.zip4j.io.CipherOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.io.DeflaterOutputStream, net.lingala.zip4j.io.CipherOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        this.m.update(bArr, i, i2);
        super.write(bArr, i, i2);
    }
}
