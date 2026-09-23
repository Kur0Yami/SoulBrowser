.class public Lcom/bumptech/glide/GlideContext;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field public static final k:Lcom/bumptech/glide/GenericTransitionOptions;


# instance fields
.field public final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field public final b:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

.field public final c:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

.field public final d:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

.field public final e:Ljava/util/List;

.field public final f:Landroidx/collection/ArrayMap;

.field public final g:Lcom/bumptech/glide/load/engine/Engine;

.field public final h:Lcom/bumptech/glide/GlideExperiments;

.field public final i:I

.field public j:Lcom/bumptech/glide/request/RequestOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/GenericTransitionOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bumptech/glide/GlideContext;->k:Lcom/bumptech/glide/GenericTransitionOptions;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;Lcom/bumptech/glide/request/target/ImageViewTargetFactory;Lcom/bumptech/glide/Glide$RequestOptionsFactory;Landroidx/collection/ArrayMap;Ljava/util/List;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/GlideExperiments;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/bumptech/glide/GlideContext;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bumptech/glide/GlideContext;->c:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bumptech/glide/GlideContext;->d:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/bumptech/glide/GlideContext;->e:Ljava/util/List;

    .line 15
    .line 16
    iput-object p6, p0, Lcom/bumptech/glide/GlideContext;->f:Landroidx/collection/ArrayMap;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/bumptech/glide/GlideContext;->g:Lcom/bumptech/glide/load/engine/Engine;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/bumptech/glide/GlideContext;->h:Lcom/bumptech/glide/GlideExperiments;

    .line 21
    .line 22
    iput p10, p0, Lcom/bumptech/glide/GlideContext;->i:I

    .line 23
    .line 24
    invoke-static {p3}, Lcom/bumptech/glide/util/GlideSuppliers;->a(Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;)Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/bumptech/glide/GlideContext;->b:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->j:Lcom/bumptech/glide/request/RequestOptions;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->d:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bumptech/glide/Glide$RequestOptionsFactory;->build()Lcom/bumptech/glide/request/RequestOptions;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/bumptech/glide/request/BaseRequestOptions;->p:Z

    .line 14
    .line 15
    iput-object v0, p0, Lcom/bumptech/glide/GlideContext;->j:Lcom/bumptech/glide/request/RequestOptions;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->j:Lcom/bumptech/glide/request/RequestOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method

.method public final b()Lcom/bumptech/glide/Registry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->b:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/bumptech/glide/Registry;

    .line 8
    .line 9
    return-object v0
.end method
