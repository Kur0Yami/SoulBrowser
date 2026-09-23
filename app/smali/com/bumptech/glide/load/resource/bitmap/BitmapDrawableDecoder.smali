.class public Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "TDataType;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/load/ResourceDecoder;

.field public final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;->b:Landroid/content/res/Resources;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;->a:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;->a:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/ResourceDecoder;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final b(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;->a:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/ResourceDecoder;->b(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    new-instance p2, Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;

    .line 12
    .line 13
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;->b:Landroid/content/res/Resources;

    .line 14
    .line 15
    invoke-direct {p2, p3, p1}, Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/Resource;)V

    .line 16
    .line 17
    .line 18
    return-object p2
.end method
