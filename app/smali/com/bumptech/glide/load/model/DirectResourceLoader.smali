.class public final Lcom/bumptech/glide/load/model/DirectResourceLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/DirectResourceLoader$InputStreamFactory;,
        Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;,
        Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;,
        Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;,
        Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Ljava/lang/Integer;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader;->b:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/model/DirectResourceLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/model/DirectResourceLoader$DrawableFactory;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/model/DirectResourceLoader$InputStreamFactory;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/model/DirectResourceLoader$InputStreamFactory;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method

.method public final b(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    sget-object p2, Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;->b:Lcom/bumptech/glide/load/Option;

    .line 4
    .line 5
    invoke-virtual {p4, p2}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Landroid/content/res/Resources$Theme;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p3, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    :goto_0
    new-instance p4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 25
    .line 26
    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/bumptech/glide/load/model/DirectResourceLoader;->b:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-direct {v1, p2, p3, v2, p1}, Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceDataFetcher;-><init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lcom/bumptech/glide/load/model/DirectResourceLoader$ResourceOpener;I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p4, v0, v1}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    .line 43
    .line 44
    .line 45
    return-object p4
.end method
