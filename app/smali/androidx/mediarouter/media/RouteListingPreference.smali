.class public final Landroidx/mediarouter/media/RouteListingPreference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/RouteListingPreference$Builder;,
        Landroidx/mediarouter/media/RouteListingPreference$Api34Impl;,
        Landroidx/mediarouter/media/RouteListingPreference$Item;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/RouteListingPreference$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/mediarouter/media/RouteListingPreference$Builder;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/mediarouter/media/RouteListingPreference;->a:Ljava/util/List;

    .line 7
    .line 8
    iget-boolean p1, p1, Landroidx/mediarouter/media/RouteListingPreference$Builder;->b:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Landroidx/mediarouter/media/RouteListingPreference;->b:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/mediarouter/media/RouteListingPreference;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Landroidx/mediarouter/media/RouteListingPreference;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/mediarouter/media/RouteListingPreference;->a:Ljava/util/List;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/mediarouter/media/RouteListingPreference;->a:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v0, p0, Landroidx/mediarouter/media/RouteListingPreference;->b:Z

    .line 22
    .line 23
    iget-boolean p1, p1, Landroidx/mediarouter/media/RouteListingPreference;->b:Z

    .line 24
    .line 25
    if-ne v0, p1, :cond_2

    .line 26
    .line 27
    :goto_0
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/media/RouteListingPreference;->b:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Landroidx/mediarouter/media/RouteListingPreference;->a:Ljava/util/List;

    .line 12
    .line 13
    aput-object v3, v1, v2

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object v0, v1, v2

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v2, 0x2

    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method
