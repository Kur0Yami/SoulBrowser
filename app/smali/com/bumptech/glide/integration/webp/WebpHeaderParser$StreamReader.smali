.class final Lcom/bumptech/glide/integration/webp/WebpHeaderParser$StreamReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/webp/WebpHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamReader"
.end annotation


# instance fields
.field public final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$StreamReader;->a:Ljava/io/InputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$StreamReader;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    shl-int/lit8 v1, v1, 0x8

    .line 8
    .line 9
    const v2, 0xff00

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    and-int/lit16 v0, v0, 0xff

    .line 18
    .line 19
    or-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$StreamReader;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c()J
    .locals 9

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    move-wide v2, v0

    .line 4
    :goto_0
    const-wide/16 v4, 0x0

    .line 5
    .line 6
    cmp-long v6, v2, v4

    .line 7
    .line 8
    if-lez v6, :cond_2

    .line 9
    .line 10
    iget-object v6, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$StreamReader;->a:Ljava/io/InputStream;

    .line 11
    .line 12
    invoke-virtual {v6, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v7

    .line 16
    cmp-long v4, v7, v4

    .line 17
    .line 18
    if-lez v4, :cond_0

    .line 19
    .line 20
    sub-long/2addr v2, v7

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, -0x1

    .line 27
    if-ne v4, v5, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const-wide/16 v4, 0x1

    .line 31
    .line 32
    sub-long/2addr v2, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :goto_1
    sub-long/2addr v0, v2

    .line 35
    return-wide v0
.end method
