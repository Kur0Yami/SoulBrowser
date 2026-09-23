.class Lcom/mycompany/app/dialog/DialogViewRead$65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$65;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogViewRead;->S2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$65;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->T()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$65;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p2, :cond_2

    .line 5
    .line 6
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->a0()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    :goto_0
    return v0

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->P()V

    .line 19
    .line 20
    .line 21
    new-instance p2, Lcom/mycompany/app/dialog/DialogPrintPage;

    .line 22
    .line 23
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 24
    .line 25
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->b0:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewRead$67;

    .line 28
    .line 29
    invoke-direct {v3, p1}, Lcom/mycompany/app/dialog/DialogViewRead$67;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-direct {p2, v1, v2, v4, v3}, Lcom/mycompany/app/dialog/DialogPrintPage;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->F0:Lcom/mycompany/app/dialog/DialogPrintPage;

    .line 37
    .line 38
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$68;

    .line 39
    .line 40
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogViewRead$68;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 44
    .line 45
    .line 46
    return v0

    .line 47
    :cond_2
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->d2:Z

    .line 48
    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->l2:Z

    .line 52
    .line 53
    if-nez p2, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogViewRead;->L(Z)V

    .line 56
    .line 57
    .line 58
    return v0

    .line 59
    :cond_3
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->C0()V

    .line 60
    .line 61
    .line 62
    new-instance p2, Lcom/mycompany/app/dialog/DialogViewRead$69;

    .line 63
    .line 64
    invoke-direct {p2, p1}, Lcom/mycompany/app/dialog/DialogViewRead$69;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/mycompany/app/dialog/DialogViewRead;->k0(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    return v0
.end method
