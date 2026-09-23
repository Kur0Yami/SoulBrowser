.class public final Landroidx/mediarouter/media/RouteListingPreference$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/RouteListingPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/RouteListingPreference$Item$Builder;,
        Landroidx/mediarouter/media/RouteListingPreference$Item$SubText;,
        Landroidx/mediarouter/media/RouteListingPreference$Item$Flags;,
        Landroidx/mediarouter/media/RouteListingPreference$Item$SelectionBehavior;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/RouteListingPreference$Item$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/mediarouter/media/RouteListingPreference$Item$Builder;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/mediarouter/media/RouteListingPreference$Item;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget p1, p1, Landroidx/mediarouter/media/RouteListingPreference$Item$Builder;->b:I

    .line 9
    .line 10
    iput p1, p0, Landroidx/mediarouter/media/RouteListingPreference$Item;->b:I

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
    instance-of v0, p1, Landroidx/mediarouter/media/RouteListingPreference$Item;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Landroidx/mediarouter/media/RouteListingPreference$Item;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/mediarouter/media/RouteListingPreference$Item;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/mediarouter/media/RouteListingPreference$Item;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget v0, p0, Landroidx/mediarouter/media/RouteListingPreference$Item;->b:I

    .line 22
    .line 23
    iget p1, p1, Landroidx/mediarouter/media/RouteListingPreference$Item;->b:I

    .line 24
    .line 25
    if-ne v0, p1, :cond_2

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    :goto_0
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/mediarouter/media/RouteListingPreference$Item;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x5

    .line 13
    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v4, p0, Landroidx/mediarouter/media/RouteListingPreference$Item;->a:Ljava/lang/String;

    .line 16
    .line 17
    aput-object v4, v3, v1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    aput-object v0, v3, v1

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    aput-object v2, v3, v0

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    aput-object v2, v3, v0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x4

    .line 30
    aput-object v0, v3, v1

    .line 31
    .line 32
    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    return v0
.end method
