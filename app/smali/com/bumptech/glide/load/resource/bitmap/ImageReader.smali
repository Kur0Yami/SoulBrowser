.class interface abstract Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteArrayReader;
    }
.end annotation


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public abstract c()Z
.end method

.method public abstract d()V
.end method

.method public abstract e()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
.end method
