.class Lcom/mycompany/app/wview/WebAreaMenu$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/wview/WebAreaMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebAreaMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu$13;->a:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu$13;->a:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/wview/WebAreaMenu;->x:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Float;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object v1, v0, Lcom/mycompany/app/wview/WebAreaMenu;->x:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iput p1, v0, Lcom/mycompany/app/wview/WebAreaMenu;->H:F

    .line 29
    .line 30
    iget-boolean p1, v0, Lcom/mycompany/app/wview/WebAreaMenu;->I:Z

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_3
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, v0, Lcom/mycompany/app/wview/WebAreaMenu;->I:Z

    .line 37
    .line 38
    iget-object p1, v0, Lcom/mycompany/app/wview/WebAreaMenu;->f:Landroid/content/Context;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/mycompany/app/wview/WebAreaMenu;->J:Ljava/lang/Runnable;

    .line 41
    .line 42
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
