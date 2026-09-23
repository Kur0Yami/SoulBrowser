package net.lingala.zip4j.zip;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.HashMap;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.CentralDirectory;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.ZipModel;
import net.lingala.zip4j.model.ZipParameters;
import net.lingala.zip4j.progress.ProgressMonitor;
import net.lingala.zip4j.util.ArchiveMaintainer;
import net.lingala.zip4j.util.Zip4jUtil;

/* loaded from: classes4.dex */
public class ZipEngine {

    /* renamed from: a, reason: collision with root package name */
    public ZipModel f22019a;

    /* renamed from: net.lingala.zip4j.zip.ZipEngine$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    class AnonymousClass1 extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    public static void a(ZipParameters zipParameters) {
        int i;
        int i2 = zipParameters.f22013c;
        if (i2 != 0 && i2 != 8) {
            throw new ZipException("unsupported compression type");
        }
        if (i2 == 8 && (i = zipParameters.f) < 0 && i > 9) {
            throw new ZipException("invalid compression level. compression level dor deflate should be in the range of 0-9");
        }
        if (zipParameters.g) {
            int i3 = zipParameters.h;
            if (i3 != 0 && i3 != 99) {
                throw new ZipException("unsupported encryption method");
            }
            char[] cArr = zipParameters.i;
            if (cArr != null && cArr.length > 0) {
                return;
            } else {
                throw new ZipException("input password is empty or null");
            }
        }
        zipParameters.h = -1;
    }

    public final RandomAccessFile b() {
        String str = this.f22019a.l;
        if (Zip4jUtil.l(str)) {
            try {
                File file = new File(str);
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                return new RandomAccessFile(file, "rw");
            } catch (FileNotFoundException e) {
                throw new ZipException(e);
            }
        }
        throw new ZipException("invalid output path");
    }

    public final void c(ArrayList arrayList, ZipParameters zipParameters, ProgressMonitor progressMonitor) {
        CentralDirectory centralDirectory;
        ArrayList arrayList2;
        ZipModel zipModel = this.f22019a;
        if (zipModel != null && (centralDirectory = zipModel.f) != null && (arrayList2 = centralDirectory.f21997a) != null && arrayList2.size() > 0) {
            int i = 0;
            RandomAccessFile randomAccessFile = null;
            while (true) {
                try {
                    try {
                        if (i >= arrayList.size()) {
                            break;
                        }
                        FileHeader g = Zip4jUtil.g(zipModel, Zip4jUtil.k(((File) arrayList.get(i)).getAbsolutePath()));
                        if (g != null) {
                            if (randomAccessFile != null) {
                                randomAccessFile.close();
                                randomAccessFile = null;
                            }
                            progressMonitor.getClass();
                            HashMap c2 = ArchiveMaintainer.c(zipModel, g, progressMonitor);
                            if (progressMonitor.e) {
                                progressMonitor.d = 3;
                                progressMonitor.f22014a = 0;
                                break;
                            } else if (randomAccessFile == null) {
                                randomAccessFile = b();
                                if (c2 != null && c2.get("offsetCentralDir") != null) {
                                    try {
                                        long parseLong = Long.parseLong((String) c2.get("offsetCentralDir"));
                                        if (parseLong >= 0) {
                                            randomAccessFile.seek(parseLong);
                                        }
                                    } catch (NumberFormatException unused) {
                                        throw new ZipException("NumberFormatException while parsing offset central directory. Cannot update already existing file header");
                                    } catch (Exception unused2) {
                                        throw new ZipException("Error while parsing offset central directory. Cannot update already existing file header");
                                    }
                                }
                            } else {
                                continue;
                            }
                        }
                        i++;
                    } catch (IOException e) {
                        throw new ZipException(e);
                    }
                } catch (Throwable th) {
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            }
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused4) {
                }
            }
        }
    }
}
