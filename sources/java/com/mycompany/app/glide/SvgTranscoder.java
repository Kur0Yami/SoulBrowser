package com.mycompany.app.glide;

import android.graphics.drawable.PictureDrawable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.SimpleResource;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.caverock.androidsvg.SVG;

/* loaded from: classes3.dex */
public class SvgTranscoder implements ResourceTranscoder<SVG, PictureDrawable> {
    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    public final Resource a(Resource resource, Options options) {
        return new SimpleResource(new PictureDrawable(((SVG) resource.get()).d()));
    }
}
