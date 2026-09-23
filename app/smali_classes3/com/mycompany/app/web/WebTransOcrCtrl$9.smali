.class Lcom/mycompany/app/web/WebTransOcrCtrl$9;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl$9;->c:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl$9;->c:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/web/WebTransOcrCtrl;->g:Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;->d()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
