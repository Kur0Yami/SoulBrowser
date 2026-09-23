.class public Lcom/mycompany/app/behavior/MyBehaviorSnack;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static y(Landroid/view/View;I)F
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    neg-int p1, p1

    .line 6
    int-to-float p1, p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-float v0, v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    int-to-float p0, p0

    .line 17
    div-float/2addr v0, p0

    .line 18
    mul-float/2addr v0, p1

    .line 19
    return v0
.end method


# virtual methods
.method public final h(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    instance-of p1, p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    .line 3
    return p1
.end method

.method public final j(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return p1

    .line 5
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget v0, p0, Lcom/mycompany/app/behavior/MyBehaviorSnack;->c:I

    .line 19
    .line 20
    invoke-static {p3, v0}, Lcom/mycompany/app/behavior/MyBehaviorSnack;->y(Landroid/view/View;I)F

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 25
    .line 26
    .line 27
    return p1

    .line 28
    :cond_2
    :goto_0
    const/4 p3, 0x0

    .line 29
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 30
    .line 31
    .line 32
    return p1
.end method
