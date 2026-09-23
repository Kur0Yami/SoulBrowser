package com.bumptech.glide.integration.webp.decoder;

import android.util.Log;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class WebpDrawableEncoder implements ResourceEncoder<WebpDrawable> {
    @Override // com.bumptech.glide.load.Encoder
    public final boolean a(Object obj, File file, Options options) {
        try {
            ByteBufferUtil.e(((WebpDrawable) ((Resource) obj).get()).f2137c.b.f2142a.f2132a.asReadOnlyBuffer(), file);
            return true;
        } catch (IOException e) {
            if (Log.isLoggable("WebpEncoder", 5)) {
                Log.w("WebpEncoder", "Failed to encode WebP drawable data", e);
                return false;
            }
            return false;
        }
    }

    @Override // com.bumptech.glide.load.ResourceEncoder
    public final EncodeStrategy b(Options options) {
        return EncodeStrategy.f2148c;
    }
}
