package net.lingala.zip4j.util;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import kotlin.io.ConstantsKt;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.progress.ProgressMonitor;

/* loaded from: classes4.dex */
public class ArchiveMaintainer {

    /* renamed from: net.lingala.zip4j.util.ArchiveMaintainer$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    class AnonymousClass1 extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: net.lingala.zip4j.util.ArchiveMaintainer$2, reason: invalid class name */
    /* loaded from: classes4.dex */
    class AnonymousClass2 extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                throw null;
            } catch (ZipException unused) {
            }
        }
    }

    public static void a(RandomAccessFile randomAccessFile, OutputStream outputStream, long j, long j2, ProgressMonitor progressMonitor) {
        byte[] bArr;
        if (outputStream != null) {
            long j3 = 0;
            if (j >= 0) {
                if (j2 >= 0) {
                    if (j <= j2) {
                        if (j != j2) {
                            if (progressMonitor.e) {
                                progressMonitor.d = 3;
                                progressMonitor.f22014a = 0;
                                return;
                            }
                            try {
                                randomAccessFile.seek(j);
                                long j4 = j2 - j;
                                if (j4 < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
                                    bArr = new byte[(int) j4];
                                } else {
                                    bArr = new byte[ConstantsKt.DEFAULT_BLOCK_SIZE];
                                }
                                while (true) {
                                    int read = randomAccessFile.read(bArr);
                                    if (read != -1) {
                                        outputStream.write(bArr, 0, read);
                                        long j5 = read;
                                        progressMonitor.b += j5;
                                        if (progressMonitor.e) {
                                            progressMonitor.d = 3;
                                            return;
                                        }
                                        j3 += j5;
                                        if (j3 != j4) {
                                            if (bArr.length + j3 > j4) {
                                                bArr = new byte[(int) (j4 - j3)];
                                            }
                                        } else {
                                            return;
                                        }
                                    } else {
                                        return;
                                    }
                                }
                            } catch (IOException e) {
                                throw new ZipException(e);
                            } catch (Exception e2) {
                                throw new ZipException(e2);
                            }
                        }
                    } else {
                        throw new ZipException("start offset is greater than end offset, cannot copy file");
                    }
                } else {
                    throw new ZipException("end offset is negative, cannot copy file");
                }
            } else {
                throw new ZipException("starting offset is negative, cannot copy file");
            }
        } else {
            throw new ZipException("input or output stream is null, cannot copy file");
        }
    }

    public static RandomAccessFile b(ZipModel zipModel) {
        if (zipModel != null && Zip4jUtil.l(zipModel.l)) {
            try {
                return new RandomAccessFile(new File(zipModel.l), "r");
            } catch (FileNotFoundException e) {
                throw new ZipException(e);
            }
        }
        throw new ZipException("input parameter is null in getFilePointer, cannot create file handler to remove file");
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x038e: MOVE (r2 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:278:0x038e */
    /* JADX WARN: Not initialized variable reg: 18, insn: 0x038f: MOVE (r3 I:??[OBJECT, ARRAY]) = (r18 I:??[OBJECT, ARRAY]), block:B:278:0x038e */
    public static java.util.HashMap c(net.lingala.zip4j.model.ZipModel r30, net.lingala.zip4j.model.FileHeader r31, net.lingala.zip4j.progress.ProgressMonitor r32) {
        /*
            Method dump skipped, instructions count: 959
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.lingala.zip4j.util.ArchiveMaintainer.c(net.lingala.zip4j.model.ZipModel, net.lingala.zip4j.model.FileHeader, net.lingala.zip4j.progress.ProgressMonitor):java.util.HashMap");
    }

    public static void d(File file, String str) {
        if (file.delete()) {
            if (new File(str).renameTo(file)) {
                return;
            } else {
                throw new ZipException("cannot rename modified zip file");
            }
        }
        throw new ZipException("cannot delete old zip file");
    }
}
