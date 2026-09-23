package com.bumptech.glide.request.target;

import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.util.Util;

@Deprecated
/* loaded from: classes.dex */
public abstract class SimpleTarget<Z> extends BaseTarget<Z> {
    @Override // com.bumptech.glide.request.target.Target
    public final void f(SingleRequest singleRequest) {
        if (Util.j(0, 0)) {
            singleRequest.b(0, 0);
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: 0 and height: 0, either provide dimensions in the constructor or call override()");
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void c(SingleRequest singleRequest) {
    }
}
