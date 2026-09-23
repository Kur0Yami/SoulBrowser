.class public Lcom/mycompany/app/dialog/DialogOpenType;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic i0:I


# instance fields
.field public a0:Landroid/app/Activity;

.field public b0:Landroid/content/Context;

.field public c0:Ljava/lang/String;

.field public final d0:Z

.field public e0:Lcom/mycompany/app/view/MyDialogRelative;

.field public f0:Lcom/mycompany/app/view/MyRecyclerView;

.field public g0:Lcom/mycompany/app/view/MyLineText;

.field public h0:Lcom/mycompany/app/main/MainSelectAdapter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 5
    .line 6
    iput v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->w:I

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyDialogBottom;->x:Z

    .line 12
    .line 13
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOpenType;->a0:Landroid/app/Activity;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOpenType;->b0:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogOpenType;->c0:Ljava/lang/String;

    .line 22
    .line 23
    iput-boolean p4, p0, Lcom/mycompany/app/dialog/DialogOpenType;->d0:Z

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogOpenType$1;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogOpenType$1;-><init>(Lcom/mycompany/app/dialog/DialogOpenType;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOpenType;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOpenType;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogRelative;->c()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogOpenType;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOpenType;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogOpenType;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOpenType;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogOpenType;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOpenType;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainSelectAdapter;->w()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogOpenType;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 45
    .line 46
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogOpenType;->a0:Landroid/app/Activity;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogOpenType;->b0:Landroid/content/Context;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogOpenType;->c0:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogOpenType;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 53
    .line 54
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 55
    .line 56
    .line 57
    return-void
.end method
