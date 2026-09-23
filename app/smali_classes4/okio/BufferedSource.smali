.class public interface abstract Lokio/BufferedSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;
.implements Ljava/nio/channels/ReadableByteChannel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u00012\u00020\u0002\u0082\u0001\u0002\u0003\u0004\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0005\u00c0\u0006\u0001"
    }
    d2 = {
        "Lokio/BufferedSource;",
        "Lokio/Source;",
        "Ljava/nio/channels/ReadableByteChannel;",
        "Lokio/Buffer;",
        "Lokio/RealBufferedSource;",
        "okio"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract C()Lokio/Buffer;
.end method

.method public abstract D()Z
.end method

.method public abstract D0(J)V
.end method

.method public abstract H(J)Ljava/lang/String;
.end method

.method public abstract I0()J
.end method

.method public abstract inputStream()Ljava/io/InputStream;
.end method

.method public abstract j0()Ljava/lang/String;
.end method

.method public abstract l0()I
.end method

.method public abstract r(J)Lokio/ByteString;
.end method

.method public abstract readByte()B
.end method

.method public abstract readInt()I
.end method

.method public abstract readShort()S
.end method

.method public abstract skip(J)V
.end method

.method public abstract t0()S
.end method
