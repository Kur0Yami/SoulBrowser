package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class zzgbz extends zzgbr {
    public final ExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgby f7812c;
    public final Function d;

    public zzgbz(File file, ExecutorService executorService, zzgby zzgbyVar, Function function) {
        super(file);
        this.b = executorService;
        this.f7812c = zzgbyVar;
        this.d = function;
    }

    @Override // com.google.android.gms.internal.ads.zzgbr
    public final ListenableFuture a() {
        return zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgbw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Object apply;
                Object b;
                zzgbz zzgbzVar = zzgbz.this;
                synchronized (zzgbzVar) {
                    try {
                        try {
                            FileInputStream fileInputStream = new FileInputStream(zzgbzVar.f7806a);
                            try {
                                b = zzgbzVar.f7812c.b(fileInputStream);
                                fileInputStream.close();
                            } catch (Throwable th) {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        } catch (FileNotFoundException unused) {
                            apply = zzgbzVar.f7812c.zzc();
                            return apply;
                        }
                    } catch (zzgbu e) {
                        apply = zzgbzVar.d.apply(e);
                        return apply;
                    } catch (IOException e2) {
                        apply = zzgbzVar.d.apply(new RuntimeException(e2));
                        return apply;
                    }
                }
                return b;
            }
        }, this.b);
    }

    @Override // com.google.android.gms.internal.ads.zzgbr
    public final ListenableFuture b(final Object obj) {
        return zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgbv
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzgbz zzgbzVar = zzgbz.this;
                Object obj2 = obj;
                synchronized (zzgbzVar) {
                    File file = zzgbzVar.f7806a;
                    zzgwk.b(file);
                    String parent = file.getParent();
                    String name = file.getName();
                    StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 5);
                    sb.append(name);
                    sb.append(".temp");
                    File file2 = new File(parent, sb.toString());
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        try {
                            zzgbzVar.f7812c.a(obj2, fileOutputStream);
                            fileOutputStream.close();
                            if (!file2.renameTo(zzgbzVar.f7806a)) {
                                throw new IOException("Failed to rename file.");
                            }
                        } catch (Throwable th) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (IOException e) {
                        file2.delete();
                        throw e;
                    }
                }
                return null;
            }
        }, this.b);
    }
}
