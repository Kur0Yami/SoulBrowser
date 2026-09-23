package com.mycompany.app.glide;

import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.SimpleResource;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGParseException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class SvgDecoder implements ResourceDecoder<InputStream, SVG> {
    @Override // com.bumptech.glide.load.ResourceDecoder
    public final /* bridge */ /* synthetic */ boolean a(Object obj, Options options) {
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i, int i2, Options options) {
        try {
            SVG b = SVG.b((InputStream) obj);
            if (i != Integer.MIN_VALUE) {
                b.g(i);
            }
            if (i2 != Integer.MIN_VALUE) {
                b.f(i2);
            }
            return new SimpleResource(b);
        } catch (SVGParseException e) {
            throw new IOException("Cannot load SVG from stream", e);
        }
    }
}
