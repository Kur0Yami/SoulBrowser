package net.lingala.zip4j.util;

import com.mycompany.app.main.MainUtil;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CRC32;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.progress.ProgressMonitor;

/* loaded from: classes4.dex */
public class CRCUtil {
    public static long a(String str, ProgressMonitor progressMonitor) {
        if (Zip4jUtil.l(str)) {
            InputStream inputStream = null;
            try {
                try {
                    try {
                        Zip4jUtil.b(str);
                        InputStream a1 = MainUtil.a1(str);
                        byte[] bArr = new byte[16384];
                        CRC32 crc32 = new CRC32();
                        while (true) {
                            int read = a1.read(bArr);
                            if (read != -1) {
                                crc32.update(bArr, 0, read);
                                if (progressMonitor != null) {
                                    progressMonitor.b += read;
                                    if (progressMonitor.e) {
                                        progressMonitor.d = 3;
                                        progressMonitor.f22014a = 0;
                                        try {
                                            a1.close();
                                            return 0L;
                                        } catch (IOException unused) {
                                            throw new ZipException("error while closing the file after calculating crc");
                                        }
                                    }
                                }
                            } else {
                                long value = crc32.getValue();
                                try {
                                    a1.close();
                                    return value;
                                } catch (IOException unused2) {
                                    throw new ZipException("error while closing the file after calculating crc");
                                }
                            }
                        }
                    } catch (Throwable th) {
                        if (0 != 0) {
                            try {
                                inputStream.close();
                            } catch (IOException unused3) {
                                throw new ZipException("error while closing the file after calculating crc");
                            }
                        }
                        throw th;
                    }
                } catch (IOException e) {
                    throw new ZipException(e);
                }
            } catch (Exception e2) {
                throw new ZipException(e2);
            }
        } else {
            throw new ZipException("input file is null or empty, cannot calculate CRC for the file");
        }
    }
}
