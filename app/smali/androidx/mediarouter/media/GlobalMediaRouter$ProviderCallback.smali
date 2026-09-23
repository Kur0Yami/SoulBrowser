.class final Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;
.super Landroidx/mediarouter/media/MediaRouteProvider$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProviderCallback"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/mediarouter/media/GlobalMediaRouter;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;->a:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/mediarouter/media/MediaRouteProvider;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;->a:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->d(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->p(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
