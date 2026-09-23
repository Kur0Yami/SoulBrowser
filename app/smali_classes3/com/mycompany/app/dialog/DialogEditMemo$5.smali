.class Lcom/mycompany/app/dialog/DialogEditMemo$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditMemo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditMemo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditMemo$5;->c:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditMemo$5;->c:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditMemo;->m0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/mycompany/app/dialog/DialogEditMemo$5$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogEditMemo$5$1;-><init>(Lcom/mycompany/app/dialog/DialogEditMemo$5;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
