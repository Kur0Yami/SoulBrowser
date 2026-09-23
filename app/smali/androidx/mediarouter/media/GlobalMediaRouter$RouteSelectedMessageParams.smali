.class final Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteSelectedMessageParams"
.end annotation


# instance fields
.field public final a:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public final b:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public final c:Z


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;->a:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;->b:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;->c:Z

    .line 9
    .line 10
    return-void
.end method
