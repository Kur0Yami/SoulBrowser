package com.mycompany.app.view;

import android.content.Context;
import android.graphics.drawable.PictureDrawable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Registry;
import com.bumptech.glide.annotation.GlideModule;
import com.bumptech.glide.module.AppGlideModule;
import com.caverock.androidsvg.SVG;
import java.io.InputStream;

@GlideModule
/* loaded from: classes3.dex */
public class MyGlideModule extends AppGlideModule {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.bumptech.glide.load.resource.transcode.ResourceTranscoder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.bumptech.glide.load.ResourceDecoder, java.lang.Object] */
    @Override // com.bumptech.glide.module.LibraryGlideModule
    public final void a(Context context, Glide glide, Registry registry) {
        registry.f.c(SVG.class, PictureDrawable.class, new Object());
        registry.a(new Object(), InputStream.class, SVG.class, "legacy_append");
    }
}
