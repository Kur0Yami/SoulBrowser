.class Lcom/bumptech/glide/load/engine/DataCacheWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;"
    }
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/load/Encoder;

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/bumptech/glide/load/Options;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DataCacheWriter;->a:Lcom/bumptech/glide/load/Encoder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DataCacheWriter;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DataCacheWriter;->c:Lcom/bumptech/glide/load/Options;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheWriter;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DataCacheWriter;->c:Lcom/bumptech/glide/load/Options;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DataCacheWriter;->a:Lcom/bumptech/glide/load/Encoder;

    .line 6
    .line 7
    invoke-interface {v2, v0, p1, v1}, Lcom/bumptech/glide/load/Encoder;->a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
