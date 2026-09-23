package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.proto.Protobuf;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.uuid.Uuid;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class ProtobufDataEncoderContext implements ObjectEncoderContext {
    public static final Charset f = Charset.forName("UTF-8");
    public static final FieldDescriptor g;
    public static final FieldDescriptor h;
    public static final a i;

    /* renamed from: a, reason: collision with root package name */
    public OutputStream f12650a;
    public final HashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f12651c;
    public final ObjectEncoder d;
    public final ProtobufValueEncoderContext e = new ProtobufValueEncoderContext(this);

    /* renamed from: com.google.firebase.encoders.proto.ProtobufDataEncoderContext$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12652a;

        static {
            int[] iArr = new int[Protobuf.IntEncoding.values().length];
            f12652a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12652a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12652a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("key");
        ?? obj = new Object();
        obj.f12646a = 1;
        builder.b(obj.a());
        g = builder.a();
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("value");
        ?? obj2 = new Object();
        obj2.f12646a = 2;
        builder2.b(obj2.a());
        h = builder2.a();
        i = new a(0);
    }

    public ProtobufDataEncoderContext(ByteArrayOutputStream byteArrayOutputStream, HashMap hashMap, HashMap hashMap2, ObjectEncoder objectEncoder) {
        this.f12650a = byteArrayOutputStream;
        this.b = hashMap;
        this.f12651c = hashMap2;
        this.d = objectEncoder;
    }

    public static int g(FieldDescriptor fieldDescriptor) {
        Protobuf protobuf = (Protobuf) fieldDescriptor.b(Protobuf.class);
        if (protobuf != null) {
            return protobuf.tag();
        }
        throw new RuntimeException("Field has no @Protobuf config");
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext a(FieldDescriptor fieldDescriptor, long j) {
        c(fieldDescriptor, j, true);
        return this;
    }

    public final void b(FieldDescriptor fieldDescriptor, int i2, boolean z) {
        if (!z || i2 != 0) {
            Protobuf protobuf = (Protobuf) fieldDescriptor.b(Protobuf.class);
            if (protobuf != null) {
                int ordinal = protobuf.intEncoding().ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal != 2) {
                            return;
                        }
                        h((protobuf.tag() << 3) | 5);
                        this.f12650a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i2).array());
                        return;
                    }
                    h(protobuf.tag() << 3);
                    h((i2 << 1) ^ (i2 >> 31));
                    return;
                }
                h(protobuf.tag() << 3);
                h(i2);
                return;
            }
            throw new RuntimeException("Field has no @Protobuf config");
        }
    }

    public final void c(FieldDescriptor fieldDescriptor, long j, boolean z) {
        if (!z || j != 0) {
            Protobuf protobuf = (Protobuf) fieldDescriptor.b(Protobuf.class);
            if (protobuf != null) {
                int ordinal = protobuf.intEncoding().ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal != 2) {
                            return;
                        }
                        h((protobuf.tag() << 3) | 1);
                        this.f12650a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j).array());
                        return;
                    }
                    h(protobuf.tag() << 3);
                    i((j >> 63) ^ (j << 1));
                    return;
                }
                h(protobuf.tag() << 3);
                i(j);
                return;
            }
            throw new RuntimeException("Field has no @Protobuf config");
        }
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext d(FieldDescriptor fieldDescriptor, Object obj) {
        e(fieldDescriptor, obj, true);
        return this;
    }

    public final void e(FieldDescriptor fieldDescriptor, Object obj, boolean z) {
        if (obj != null) {
            if (obj instanceof CharSequence) {
                CharSequence charSequence = (CharSequence) obj;
                if (!z || charSequence.length() != 0) {
                    h((g(fieldDescriptor) << 3) | 2);
                    byte[] bytes = charSequence.toString().getBytes(f);
                    h(bytes.length);
                    this.f12650a.write(bytes);
                    return;
                }
                return;
            }
            if (obj instanceof Collection) {
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    e(fieldDescriptor, it.next(), false);
                }
                return;
            }
            if (obj instanceof Map) {
                Iterator it2 = ((Map) obj).entrySet().iterator();
                while (it2.hasNext()) {
                    f(i, fieldDescriptor, (Map.Entry) it2.next(), false);
                }
                return;
            }
            if (obj instanceof Double) {
                double doubleValue = ((Double) obj).doubleValue();
                if (!z || doubleValue != 0.0d) {
                    h((g(fieldDescriptor) << 3) | 1);
                    this.f12650a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(doubleValue).array());
                    return;
                }
                return;
            }
            if (obj instanceof Float) {
                float floatValue = ((Float) obj).floatValue();
                if (!z || floatValue != 0.0f) {
                    h((g(fieldDescriptor) << 3) | 5);
                    this.f12650a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(floatValue).array());
                    return;
                }
                return;
            }
            if (obj instanceof Number) {
                c(fieldDescriptor, ((Number) obj).longValue(), z);
                return;
            }
            if (obj instanceof Boolean) {
                b(fieldDescriptor, ((Boolean) obj).booleanValue() ? 1 : 0, z);
                return;
            }
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                if (z && bArr.length == 0) {
                    return;
                }
                h((g(fieldDescriptor) << 3) | 2);
                h(bArr.length);
                this.f12650a.write(bArr);
                return;
            }
            ObjectEncoder objectEncoder = (ObjectEncoder) this.b.get(obj.getClass());
            if (objectEncoder != null) {
                f(objectEncoder, fieldDescriptor, obj, z);
                return;
            }
            ValueEncoder valueEncoder = (ValueEncoder) this.f12651c.get(obj.getClass());
            if (valueEncoder != null) {
                ProtobufValueEncoderContext protobufValueEncoderContext = this.e;
                protobufValueEncoderContext.f12657a = false;
                protobufValueEncoderContext.f12658c = fieldDescriptor;
                protobufValueEncoderContext.b = z;
                valueEncoder.a(obj, protobufValueEncoderContext);
                return;
            }
            if (obj instanceof ProtoEnum) {
                b(fieldDescriptor, ((ProtoEnum) obj).a(), true);
            } else if (obj instanceof Enum) {
                b(fieldDescriptor, ((Enum) obj).ordinal(), true);
            } else {
                f(this.d, fieldDescriptor, obj, z);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.OutputStream, com.google.firebase.encoders.proto.LengthCountingOutputStream] */
    public final void f(ObjectEncoder objectEncoder, FieldDescriptor fieldDescriptor, Object obj, boolean z) {
        ?? outputStream = new OutputStream();
        outputStream.f12648c = 0L;
        try {
            OutputStream outputStream2 = this.f12650a;
            this.f12650a = outputStream;
            try {
                objectEncoder.a(obj, this);
                this.f12650a = outputStream2;
                long j = outputStream.f12648c;
                outputStream.close();
                if (z && j == 0) {
                    return;
                }
                h((g(fieldDescriptor) << 3) | 2);
                i(j);
                objectEncoder.a(obj, this);
            } catch (Throwable th) {
                this.f12650a = outputStream2;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                outputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void h(int i2) {
        while ((i2 & (-128)) != 0) {
            this.f12650a.write((i2 & 127) | Uuid.SIZE_BITS);
            i2 >>>= 7;
        }
        this.f12650a.write(i2 & 127);
    }

    public final void i(long j) {
        while (((-128) & j) != 0) {
            this.f12650a.write((((int) j) & 127) | Uuid.SIZE_BITS);
            j >>>= 7;
        }
        this.f12650a.write(((int) j) & 127);
    }
}
