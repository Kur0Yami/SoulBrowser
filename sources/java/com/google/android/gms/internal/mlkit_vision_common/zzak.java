package com.google.android.gms.internal.mlkit_vision_common;

import androidx.work.impl.workers.a;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
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
public final class zzak implements ObjectEncoderContext {
    public static final Charset f = Charset.forName("UTF-8");
    public static final FieldDescriptor g;
    public static final FieldDescriptor h;
    public static final zzaj i;

    /* renamed from: a, reason: collision with root package name */
    public OutputStream f10924a;
    public final HashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f10925c;
    public final ObjectEncoder d;
    public final zzao e = new zzao(this);

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.mlkit_vision_common.zzae, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("key");
        ?? obj = new Object();
        obj.f10920a = 1;
        g = a.p(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("value");
        ?? obj2 = new Object();
        obj2.f10920a = 2;
        h = a.p(obj2, builder2);
        i = zzaj.f10923a;
    }

    public zzak(ByteArrayOutputStream byteArrayOutputStream, HashMap hashMap, HashMap hashMap2, ObjectEncoder objectEncoder) {
        this.f10924a = byteArrayOutputStream;
        this.b = hashMap;
        this.f10925c = hashMap2;
        this.d = objectEncoder;
    }

    public static int f(FieldDescriptor fieldDescriptor) {
        zzai zzaiVar = (zzai) fieldDescriptor.b(zzai.class);
        if (zzaiVar != null) {
            return zzaiVar.zza();
        }
        throw new RuntimeException("Field has no @Protobuf config");
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final /* synthetic */ ObjectEncoderContext a(FieldDescriptor fieldDescriptor, long j) {
        e(fieldDescriptor, j, true);
        return this;
    }

    public final void b(FieldDescriptor fieldDescriptor, Object obj, boolean z) {
        if (obj != null) {
            if (obj instanceof CharSequence) {
                CharSequence charSequence = (CharSequence) obj;
                if (!z || charSequence.length() != 0) {
                    h((f(fieldDescriptor) << 3) | 2);
                    byte[] bytes = charSequence.toString().getBytes(f);
                    h(bytes.length);
                    this.f10924a.write(bytes);
                    return;
                }
                return;
            }
            if (obj instanceof Collection) {
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    b(fieldDescriptor, it.next(), false);
                }
                return;
            }
            if (obj instanceof Map) {
                Iterator it2 = ((Map) obj).entrySet().iterator();
                while (it2.hasNext()) {
                    g(i, fieldDescriptor, (Map.Entry) it2.next(), false);
                }
                return;
            }
            if (obj instanceof Double) {
                double doubleValue = ((Double) obj).doubleValue();
                if (!z || doubleValue != 0.0d) {
                    h((f(fieldDescriptor) << 3) | 1);
                    this.f10924a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(doubleValue).array());
                    return;
                }
                return;
            }
            if (obj instanceof Float) {
                float floatValue = ((Float) obj).floatValue();
                if (!z || floatValue != 0.0f) {
                    h((f(fieldDescriptor) << 3) | 5);
                    this.f10924a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(floatValue).array());
                    return;
                }
                return;
            }
            if (obj instanceof Number) {
                e(fieldDescriptor, ((Number) obj).longValue(), z);
                return;
            }
            if (obj instanceof Boolean) {
                c(fieldDescriptor, ((Boolean) obj).booleanValue() ? 1 : 0, z);
                return;
            }
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                if (z && bArr.length == 0) {
                    return;
                }
                h((f(fieldDescriptor) << 3) | 2);
                h(bArr.length);
                this.f10924a.write(bArr);
                return;
            }
            ObjectEncoder objectEncoder = (ObjectEncoder) this.b.get(obj.getClass());
            if (objectEncoder != null) {
                g(objectEncoder, fieldDescriptor, obj, z);
                return;
            }
            ValueEncoder valueEncoder = (ValueEncoder) this.f10925c.get(obj.getClass());
            if (valueEncoder != null) {
                zzao zzaoVar = this.e;
                zzaoVar.f10931a = false;
                zzaoVar.f10932c = fieldDescriptor;
                zzaoVar.b = z;
                valueEncoder.a(obj, zzaoVar);
                return;
            }
            if (obj instanceof zzag) {
                c(fieldDescriptor, ((zzag) obj).zza(), true);
            } else if (obj instanceof Enum) {
                c(fieldDescriptor, ((Enum) obj).ordinal(), true);
            } else {
                g(this.d, fieldDescriptor, obj, z);
            }
        }
    }

    public final void c(FieldDescriptor fieldDescriptor, int i2, boolean z) {
        if (!z || i2 != 0) {
            zzai zzaiVar = (zzai) fieldDescriptor.b(zzai.class);
            if (zzaiVar != null) {
                int ordinal = zzaiVar.zzb().ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal != 2) {
                            return;
                        }
                        h((zzaiVar.zza() << 3) | 5);
                        this.f10924a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i2).array());
                        return;
                    }
                    h(zzaiVar.zza() << 3);
                    h((i2 + i2) ^ (i2 >> 31));
                    return;
                }
                h(zzaiVar.zza() << 3);
                h(i2);
                return;
            }
            throw new RuntimeException("Field has no @Protobuf config");
        }
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext d(FieldDescriptor fieldDescriptor, Object obj) {
        b(fieldDescriptor, obj, true);
        return this;
    }

    public final void e(FieldDescriptor fieldDescriptor, long j, boolean z) {
        if (!z || j != 0) {
            zzai zzaiVar = (zzai) fieldDescriptor.b(zzai.class);
            if (zzaiVar != null) {
                int ordinal = zzaiVar.zzb().ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal != 2) {
                            return;
                        }
                        h((zzaiVar.zza() << 3) | 1);
                        this.f10924a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j).array());
                        return;
                    }
                    h(zzaiVar.zza() << 3);
                    i((j >> 63) ^ (j + j));
                    return;
                }
                h(zzaiVar.zza() << 3);
                i(j);
                return;
            }
            throw new RuntimeException("Field has no @Protobuf config");
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.io.OutputStream, com.google.android.gms.internal.mlkit_vision_common.zzaf] */
    public final void g(ObjectEncoder objectEncoder, FieldDescriptor fieldDescriptor, Object obj, boolean z) {
        ?? outputStream = new OutputStream();
        outputStream.f10921c = 0L;
        try {
            OutputStream outputStream2 = this.f10924a;
            this.f10924a = outputStream;
            try {
                objectEncoder.a(obj, this);
                this.f10924a = outputStream2;
                long j = outputStream.f10921c;
                outputStream.close();
                if (z && j == 0) {
                    return;
                }
                h((f(fieldDescriptor) << 3) | 2);
                i(j);
                objectEncoder.a(obj, this);
            } catch (Throwable th) {
                this.f10924a = outputStream2;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                outputStream.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    public final void h(int i2) {
        while ((i2 & (-128)) != 0) {
            this.f10924a.write((i2 & 127) | Uuid.SIZE_BITS);
            i2 >>>= 7;
        }
        this.f10924a.write(i2 & 127);
    }

    public final void i(long j) {
        while (((-128) & j) != 0) {
            this.f10924a.write((((int) j) & 127) | Uuid.SIZE_BITS);
            j >>>= 7;
        }
        this.f10924a.write(((int) j) & 127);
    }
}
