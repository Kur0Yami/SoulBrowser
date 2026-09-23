package com.bumptech.glide.load.model;

import android.util.Log;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class ByteBufferEncoder implements Encoder<ByteBuffer> {
    @Override // com.bumptech.glide.load.Encoder
    public final boolean a(Object obj, File file, Options options) {
        try {
            ByteBufferUtil.e((ByteBuffer) obj, file);
            return true;
        } catch (IOException e) {
            if (Log.isLoggable("ByteBufferEncoder", 3)) {
                Log.d("ByteBufferEncoder", "Failed to write data", e);
                return false;
            }
            return false;
        }
    }
}
