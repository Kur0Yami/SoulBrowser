.class public Lcom/mycompany/app/view/MyGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "SourceFile"


# annotations
.annotation build Lcom/bumptech/glide/annotation/GlideModule;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/mycompany/app/glide/SvgTranscoder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p2, p3, Lcom/bumptech/glide/Registry;->f:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 7
    .line 8
    const-class v0, Lcom/caverock/androidsvg/SVG;

    .line 9
    .line 10
    const-class v1, Landroid/graphics/drawable/PictureDrawable;

    .line 11
    .line 12
    invoke-virtual {p2, v0, v1, p1}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lcom/mycompany/app/glide/SvgDecoder;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string p2, "legacy_append"

    .line 21
    .line 22
    const-class v1, Ljava/io/InputStream;

    .line 23
    .line 24
    invoke-virtual {p3, p1, v1, v0, p2}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
