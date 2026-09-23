.class Lcom/mycompany/app/web/WebTransOcrCtrl$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebTransOcrCtrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl$15;->c:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl$15;->c:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->z:Z

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->g:Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;->a()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void

    .line 28
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebTransOcrCtrl;->a(Lcom/mycompany/app/web/WebTransOcrCtrl;F)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
