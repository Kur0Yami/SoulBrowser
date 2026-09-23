.class public Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/ResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;->a:Landroid/content/res/Resources;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 2

    .line 1
    new-instance p1, Lcom/bumptech/glide/load/model/ResourceLoader;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;->a:Landroid/content/res/Resources;

    .line 4
    .line 5
    sget-object v1, Lcom/bumptech/glide/load/model/UnitModelLoader;->a:Lcom/bumptech/glide/load/model/UnitModelLoader;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1}, Lcom/bumptech/glide/load/model/ResourceLoader;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method
