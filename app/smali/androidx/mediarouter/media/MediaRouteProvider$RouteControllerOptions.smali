.class public final Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteControllerOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions$Builder;
    }
.end annotation


# static fields
.field public static final b:Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions;


# instance fields
.field public final a:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions$Builder;->a:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions;-><init>(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions;->b:Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions;->a:Landroid/os/Bundle;

    .line 10
    .line 11
    return-void
.end method
