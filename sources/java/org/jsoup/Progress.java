package org.jsoup;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface Progress<ProgressContext> {
    void onProgress(int i, int i2, float f, ProgressContext progresscontext);
}
