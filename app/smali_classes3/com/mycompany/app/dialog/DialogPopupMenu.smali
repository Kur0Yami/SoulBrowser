.class public Lcom/mycompany/app/dialog/DialogPopupMenu;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogPopupMenu$PopupMenuListener;
    }
.end annotation


# static fields
.field public static final synthetic n0:I


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogPopupMenu$PopupMenuListener;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Lcom/mycompany/app/view/MyRoundImage;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Lcom/mycompany/app/view/MyRecyclerView;

.field public g0:Lcom/mycompany/app/view/MyLineText;

.field public h0:Lcom/mycompany/app/main/MainSelectAdapter;

.field public i0:Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public k0:Ljava/lang/String;

.field public final l0:Z

.field public m0:Lcom/mycompany/app/main/MainListLoader;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;ILjava/lang/String;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogPopupMenu$PopupMenuListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 5
    .line 6
    iput p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->w:I

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->x:Z

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->a0:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->i0:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->j0:Ljava/lang/String;

    .line 22
    .line 23
    iput-boolean p5, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->l0:Z

    .line 24
    .line 25
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->b0:Lcom/mycompany/app/dialog/DialogPopupMenu$PopupMenuListener;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogPopupMenu$1;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogPopupMenu$1;-><init>(Lcom/mycompany/app/dialog/DialogPopupMenu;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->m0:Lcom/mycompany/app/main/MainListLoader;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->m0:Lcom/mycompany/app/main/MainListLoader;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 45
    .line 46
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 54
    .line 55
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainSelectAdapter;->w()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 63
    .line 64
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->a0:Landroid/content/Context;

    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->b0:Lcom/mycompany/app/dialog/DialogPopupMenu$PopupMenuListener;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->i0:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->j0:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu;->k0:Ljava/lang/String;

    .line 75
    .line 76
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 77
    .line 78
    .line 79
    return-void
.end method
