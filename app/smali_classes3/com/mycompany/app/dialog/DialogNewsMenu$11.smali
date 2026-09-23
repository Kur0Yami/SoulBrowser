.class Lcom/mycompany/app/dialog/DialogNewsMenu$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogNewsMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu$11;->a:Lcom/mycompany/app/dialog/DialogNewsMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu$11;->a:Lcom/mycompany/app/dialog/DialogNewsMenu;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->o:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Float;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->o:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iput p1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->q:F

    .line 32
    .line 33
    iget-boolean p1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->r:Z

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->r:Z

    .line 40
    .line 41
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->s:Ljava/lang/Runnable;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    return-void
.end method
