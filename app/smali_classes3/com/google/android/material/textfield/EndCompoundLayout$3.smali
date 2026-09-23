.class Lcom/google/android/material/textfield/EndCompoundLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic c:Lcom/google/android/material/textfield/EndCompoundLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$3;->c:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    sget p1, Lcom/google/android/material/textfield/EndCompoundLayout;->B:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$3;->c:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/google/android/material/textfield/EndCompoundLayout;->x:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/google/android/material/textfield/EndCompoundLayout;->y:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Lcom/google/android/material/textfield/EndCompoundLayout;->y:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    sget p1, Lcom/google/android/material/textfield/EndCompoundLayout;->B:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$3;->c:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/google/android/material/textfield/EndCompoundLayout;->y:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/android/material/textfield/EndCompoundLayout;->x:Landroid/view/accessibility/AccessibilityManager;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
