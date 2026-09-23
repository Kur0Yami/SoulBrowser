package com.mycompany.app.ocr;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class OcrExecutor implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public Executor f17315c;

    @Override // java.util.concurrent.Executor
    public final void execute(final Runnable runnable) {
        Executor executor;
        if (runnable != null && (executor = this.f17315c) != null) {
            executor.execute(new Runnable() { // from class: com.mycompany.app.ocr.OcrExecutor.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (OcrExecutor.this.f17315c == null) {
                        return;
                    }
                    runnable.run();
                }
            });
        }
    }
}
