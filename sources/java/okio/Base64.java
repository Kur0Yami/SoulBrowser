package okio;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import okio.ByteString;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okio"}, k = 2, mv = {2, 2, 0}, xi = 48)
@JvmName(name = "-Base64")
/* renamed from: okio.-Base64, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Base64 {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f22194a;

    static {
        ByteString byteString = ByteString.h;
        f22194a = ByteString.Companion.b("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").f22198c;
        ByteString.Companion.b("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
    }
}
