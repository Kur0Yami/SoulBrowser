.class public final Lcom/bumptech/glide/GlideBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/GlideBuilder$LogRequestOrigins;,
        Lcom/bumptech/glide/GlideBuilder$EnableImageDecoderForBitmaps;,
        Lcom/bumptech/glide/GlideBuilder$OverrideGlideThreadPriority;,
        Lcom/bumptech/glide/GlideBuilder$UseMediaStoreOpenFileApisIfPossible;,
        Lcom/bumptech/glide/GlideBuilder$ManualOverrideHardwareBitmapMaxFdCount;
    }
.end annotation


# instance fields
.field public final a:Landroidx/collection/ArrayMap;

.field public final b:Lcom/bumptech/glide/GlideExperiments$Builder;

.field public c:Lcom/bumptech/glide/load/engine/Engine;

.field public d:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field public e:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

.field public f:Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

.field public g:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field public h:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field public i:Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

.field public j:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

.field public k:Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;

.field public final l:I

.field public final m:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

.field public n:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

.field public o:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field public p:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->a:Landroidx/collection/ArrayMap;

    .line 11
    .line 12
    new-instance v0, Lcom/bumptech/glide/GlideExperiments$Builder;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/bumptech/glide/GlideExperiments$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->b:Lcom/bumptech/glide/GlideExperiments$Builder;

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    iput v0, p0, Lcom/bumptech/glide/GlideBuilder;->l:I

    .line 21
    .line 22
    new-instance v0, Lcom/bumptech/glide/GlideBuilder$1;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->m:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    .line 28
    .line 29
    return-void
.end method
