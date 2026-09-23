.class public final synthetic Lcom/google/android/material/behavior/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;


# direct methods
.method public synthetic constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/google/android/material/behavior/a;->a:I

    iput-object p1, p0, Lcom/google/android/material/behavior/a;->c:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    iput-object p2, p0, Lcom/google/android/material/behavior/a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/behavior/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/google/android/material/behavior/a;->b:Landroid/view/View;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/google/android/material/behavior/a;->c:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v3, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget p1, v3, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->n:I

    .line 16
    .line 17
    if-ne p1, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->z(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :pswitch_0
    check-cast v3, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    .line 24
    .line 25
    sget v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->p:I

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget p1, v3, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->n:I

    .line 30
    .line 31
    if-ne p1, v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->y(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
