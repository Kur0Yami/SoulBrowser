package com.google.common.net;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes3.dex */
public final class UrlEscapers {
    static {
        new PercentEscaper(com.google.api.client.util.escape.PercentEscaper.SAFECHARS_URLENCODER, true);
        new PercentEscaper("-._~!$'()*,;&=@:+", false);
        new PercentEscaper("-._~!$'()*,;&=@:+/?", false);
    }
}
