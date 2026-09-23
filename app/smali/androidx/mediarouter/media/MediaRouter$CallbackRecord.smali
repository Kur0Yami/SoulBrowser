.class final Landroidx/mediarouter/media/MediaRouter$CallbackRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackRecord"
.end annotation


# instance fields
.field public final a:Landroidx/mediarouter/media/MediaRouter;

.field public final b:Landroidx/mediarouter/media/MediaRouter$Callback;

.field public c:Landroidx/mediarouter/media/MediaRouteSelector;

.field public d:I

.field public e:J


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->a:Landroidx/mediarouter/media/MediaRouter;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->b:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 7
    .line 8
    sget-object p1, Landroidx/mediarouter/media/MediaRouteSelector;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 11
    .line 12
    return-void
.end method
