.class Lcom/mycompany/app/dialog/DialogPassInfo$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPassInfo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassInfo$10;->c:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPassInfo$10;->c:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 5
    .line 6
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    const v0, -0x252526

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 15
    .line 16
    .line 17
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->x0:Lcom/mycompany/app/view/MyLineView;

    .line 22
    .line 23
    const v0, -0x50506

    .line 24
    .line 25
    .line 26
    iget p1, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->b0:F

    .line 27
    .line 28
    invoke-virtual {p2, p1, v0}, Lcom/mycompany/app/view/MyLineView;->c(FI)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->x0:Lcom/mycompany/app/view/MyLineView;

    .line 33
    .line 34
    const v0, -0xe19938

    .line 35
    .line 36
    .line 37
    iget p1, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->a0:F

    .line 38
    .line 39
    invoke-virtual {p2, p1, v0}, Lcom/mycompany/app/view/MyLineView;->c(FI)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
