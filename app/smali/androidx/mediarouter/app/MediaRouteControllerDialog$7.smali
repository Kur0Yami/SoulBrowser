.class Landroidx/mediarouter/app/MediaRouteControllerDialog$7;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->c:I

    .line 2
    .line 3
    iput p3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->f:I

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->g:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->f:I

    .line 2
    .line 3
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->c:I

    .line 4
    .line 5
    sub-int p2, v0, p2

    .line 6
    .line 7
    int-to-float p2, p2

    .line 8
    mul-float/2addr p2, p1

    .line 9
    float-to-int p1, p2

    .line 10
    sub-int/2addr v0, p1

    .line 11
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->g:Landroid/view/View;

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->o(Landroid/view/View;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
