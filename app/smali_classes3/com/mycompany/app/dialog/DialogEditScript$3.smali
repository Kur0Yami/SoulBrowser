.class Lcom/mycompany/app/dialog/DialogEditScript$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditScript;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript$3;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript$3;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->L:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->H:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->G:Lcom/mycompany/app/main/MainActivity;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditScript;->w()V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 21
    .line 22
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditScript$4;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditScript$4;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditScript$5;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditScript$5;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->T:Lcom/mycompany/app/view/MyScrollBar;

    .line 41
    .line 42
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditScript$6;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditScript$6;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 51
    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditScript$7;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditScript$7;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    return-void
.end method
