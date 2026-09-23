.class public abstract Lokhttp3/ResponseBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/ResponseBody$BomAwareReader;,
        Lokhttp3/ResponseBody$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lokhttp3/ResponseBody;",
        "Ljava/io/Closeable;",
        "BomAwareReader",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nResponseBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponseBody.kt\nokhttp3/ResponseBody\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,343:1\n141#1,6:344\n147#1,5:373\n141#1,6:378\n147#1,5:407\n72#2:350\n58#2,22:351\n72#2:384\n58#2,22:385\n72#2:412\n58#2,22:413\n72#2:435\n58#2,22:436\n*S KotlinDebug\n*F\n+ 1 ResponseBody.kt\nokhttp3/ResponseBody\n*L\n125#1:344,6\n125#1:373,5\n135#1:378,6\n135#1:407,5\n125#1:350\n125#1:351,22\n135#1:384\n135#1:385,22\n146#1:412\n146#1:413,22\n189#1:435\n189#1:436,22\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Lokhttp3/ResponseBody$Companion$asResponseBody$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lokio/ByteString;->h:Lokio/ByteString;

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lokio/Buffer;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lokio/Buffer;->n(Lokio/ByteString;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lokio/ByteString;->c:[B

    .line 17
    .line 18
    array-length v0, v0

    .line 19
    int-to-long v3, v0

    .line 20
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 24
    .line 25
    invoke-direct {v0, v3, v4, v2}, Lokhttp3/ResponseBody$Companion$asResponseBody$1;-><init>(JLokio/Buffer;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lokhttp3/ResponseBody;->c:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()Lokhttp3/MediaType;
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->d()Lokio/BufferedSource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lokhttp3/internal/_UtilCommonKt;->a(Ljava/io/Closeable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract d()Lokio/BufferedSource;
.end method
