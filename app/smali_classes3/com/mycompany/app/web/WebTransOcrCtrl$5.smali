.class Lcom/mycompany/app/web/WebTransOcrCtrl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl$5;->c:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl$5;->c:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebTransOcrCtrl;->g:Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lcom/mycompany/app/web/WebTransOcrCtrl;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;->f(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
