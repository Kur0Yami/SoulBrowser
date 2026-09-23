.class Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder$1;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder$1;->a:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    .line 2
    .line 3
    check-cast p3, Landroid/graphics/Bitmap;

    .line 4
    .line 5
    check-cast p4, Landroid/graphics/Bitmap;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder$1;->a:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 12
    .line 13
    invoke-interface {p1, p3}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->c(Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
