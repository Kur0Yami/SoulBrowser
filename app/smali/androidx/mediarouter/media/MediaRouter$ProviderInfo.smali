.class public final Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderInfo"
.end annotation


# instance fields
.field public final a:Landroidx/mediarouter/media/MediaRouteProvider;

.field public final b:Ljava/util/ArrayList;

.field public final c:Z

.field public final d:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

.field public e:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteProvider;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->a:Landroidx/mediarouter/media/MediaRouteProvider;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouteProvider;->f:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->d:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    .line 16
    .line 17
    iput-boolean p2, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->c:Z

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 17
    .line 18
    iget-object v4, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MediaRouter.RouteProviderInfo{ packageName="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->d:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->a:Landroid/content/ComponentName;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " }"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
